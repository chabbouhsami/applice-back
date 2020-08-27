package com.ettawil.applice.controller;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ettawil.applice.model.dto.SalarieDTO;
import com.ettawil.applice.model.dto.TypeContratDTO;
import com.ettawil.applice.model.entity.salarie.Salarie;
import com.ettawil.applice.model.entity.salarie.SalarieMaj;
import com.ettawil.applice.service.SalarieMajServiceImpl;
import com.ettawil.applice.service.SalarieServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/salarie")
@Api(value = "Salarie Rest Controller: contains all operations for managing salaries")
public class SalarieRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(SalarieRestController.class);

	@Autowired
	private SalarieServiceImpl salarieService;

	@Autowired
	private SalarieMajServiceImpl salMajService;

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Search the salarie by code", response = SalarieDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the salarie doesn't exist") })
	public ResponseEntity<SalarieDTO> searchSalarieByCode(@PathVariable int id) {
		Salarie salarie = salarieService.findSalarie(id);
		if (salarie != null) {
			SalarieDTO salarieDto = mapSalarieToSalarieDTO(salarie);
			return new ResponseEntity<>(salarieDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

	@CrossOrigin
	@GetMapping("/searchAll")
	@ApiOperation(value = "Search all Salaries", response = SalarieDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Salaries database is empty") })
	public ResponseEntity<List<SalarieDTO>> searchAllSalaries() {

		List<Salarie> salaries = salarieService.findAll();

		if (!CollectionUtils.isEmpty(salaries)) {

			List<SalarieDTO> salariesDto = salaries.stream()
					.sorted(Comparator.comparing(Salarie::getLastName).thenComparing(Salarie::getLastName))
					.map(salarie -> {
						return mapSalarieToSalarieDTO(salarie);
					}).collect(Collectors.toList());
			return new ResponseEntity<List<SalarieDTO>>(salariesDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<SalarieDTO>>(HttpStatus.NO_CONTENT);

	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new Salarie", response = SalarieDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "Salarie already existing"),
			@ApiResponse(code = 304, message = "Salarie not added") })
	public ResponseEntity<SalarieDTO> createNewSalarie(@RequestBody SalarieDTO salarieDTORequest) {
		if (salarieService.checkIfExist(mapSalarieDTOToSalarie(salarieDTORequest))) {
			return new ResponseEntity<SalarieDTO>(HttpStatus.CONFLICT);
		}
		Salarie salarieRequest = mapSalarieDTOToSalarie(salarieDTORequest);
		Salarie salarieResponse = salarieService.saveSalarie(salarieRequest);
		// Mise à jours des salariés
		salMajService.saveSalarieMaj(mapSalarieToSalarieMaj(salarieRequest));
		if (salarieResponse != null) {
			SalarieDTO salarieDTO = mapSalarieToSalarieDTO(salarieResponse);
			return new ResponseEntity<SalarieDTO>(salarieDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<SalarieDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	@CrossOrigin
	@PatchMapping("/{id}")
	@ApiOperation(value = "Update Salarie", response = SalarieDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Salarie not found"),
			@ApiResponse(code = 200, message = "Salarie successfully modified"),
			@ApiResponse(code = 304, message = "Salarie unsuccesully modified") })
	public ResponseEntity<SalarieDTO> updateSalarie(@PathVariable int id, @RequestBody SalarieDTO salarieDTORequest) {
		if (salarieService.findSalarie(id) != null) {
			return new ResponseEntity<SalarieDTO>(HttpStatus.NOT_FOUND);
		}
		Salarie salarieRequest = mapSalarieDTOToSalarie(salarieDTORequest);
		Salarie salarieResponse = salarieService.updateSalarie(salarieRequest);
		salMajService.updateSalarieMaj(mapSalarieToSalarieMaj(salarieRequest));

		if (salarieResponse != null) {
			SalarieDTO salarieDTO = mapSalarieToSalarieDTO(salarieResponse);
			return new ResponseEntity<SalarieDTO>(salarieDTO, HttpStatus.OK);
		}
		return new ResponseEntity<SalarieDTO>(HttpStatus.NOT_MODIFIED);
	}

	@CrossOrigin
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Delete Salarie", response = SalarieDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Salarie not found"),
			@ApiResponse(code = 200, message = "Salarie successfully deleted"),
			@ApiResponse(code = 304, message = "Salarie unsuccesully deleted") })
	public ResponseEntity<SalarieDTO> deleteSalarie(@PathVariable int id) {
		Salarie salarie = salarieService.findSalarie(id);

		if (salarie == null) {
			return new ResponseEntity<SalarieDTO>(HttpStatus.NOT_FOUND);
		}
		salarieService.deleteSalarie(salarie);
		salMajService.deleteSalarieMaj(mapSalarieToSalarieMaj(salarie));

		return new ResponseEntity<SalarieDTO>(mapSalarieToSalarieDTO(salarie), HttpStatus.OK);
	}

	@CrossOrigin
	@GetMapping("/")
	@ApiOperation(value = "Get Salarie's auhentication", response = SalarieDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Salarie not found"),
			@ApiResponse(code = 304, message = "Salarie unsuccesully deleted") })
	public ResponseEntity<SalarieDTO> getSalarie(@PathVariable int id) {
		Salarie salarie = salarieService.findSalarie(id);

		if (salarie == null) {
			return new ResponseEntity<SalarieDTO>(HttpStatus.NOT_FOUND);
		}
		salarieService.deleteSalarie(salarie);
		return new ResponseEntity<SalarieDTO>(mapSalarieToSalarieDTO(salarie), HttpStatus.OK);
	}

	private Salarie mapSalarieDTOToSalarie(SalarieDTO salarieDto) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(salarieDto, Salarie.class);
	}

	private SalarieDTO mapSalarieToSalarieDTO(Salarie salarie) {
		ModelMapper mapper = new ModelMapper();
		SalarieDTO result = mapper.map(salarie, SalarieDTO.class);
		result.setTypeContratDTO(new ModelMapper().map(salarie.getTypeContrat(), TypeContratDTO.class));
		return result;
	}

	private SalarieMaj mapSalarieToSalarieMaj(Salarie salarie) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(salarie, SalarieMaj.class);
	}
}
