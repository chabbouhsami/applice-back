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

import com.ettawil.applice.model.dto.SalarieEnfantDTO;
import com.ettawil.applice.model.entity.salarie.SalarieEnfant;
import com.ettawil.applice.model.entity.salarie.SalarieEnfantMaj;
import com.ettawil.applice.service.SalarieEnfantMajServiceImpl;
import com.ettawil.applice.service.SalarieEnfantServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/salarie/enfants")
@Api(value = "SalarieEnfant Rest Controller: contains all operations for managing salarieEnfants")
public class SalarieEnfantsRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(SalarieEnfantsRestController.class);

	@Autowired
	private SalarieEnfantServiceImpl salarieEnfantService;

	@Autowired
	private SalarieEnfantMajServiceImpl salMajService;

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Search the salarieEnfant by code", response = SalarieEnfantDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the salarieEnfant doesn't exist") })
	public ResponseEntity<SalarieEnfantDTO> searchSalarieEnfantByCode(@PathVariable int id) {
		SalarieEnfant salarieEnfant = salarieEnfantService.findSalarieEnfant(id);
		if (salarieEnfant != null) {
			SalarieEnfantDTO salarieEnfantDto = mapSalarieEnfantToSalarieEnfantDTO(salarieEnfant);
			return new ResponseEntity<>(salarieEnfantDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

	@CrossOrigin
	@GetMapping("/searchAll")
	@ApiOperation(value = "Search all SalarieEnfants", response = SalarieEnfantDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "SalarieEnfants database is empty") })
	public ResponseEntity<List<SalarieEnfantDTO>> searchAllSalarieEnfants() {

		List<SalarieEnfant> salarieEnfants = salarieEnfantService.findAll();

		if (!CollectionUtils.isEmpty(salarieEnfants)) {

			List<SalarieEnfantDTO> salarieEnfantsDto = salarieEnfants.stream()
					.sorted(Comparator.comparing(SalarieEnfant::getFirstName).thenComparing(SalarieEnfant::getLastName))
					.map(salarieEnfant -> {
						return mapSalarieEnfantToSalarieEnfantDTO(salarieEnfant);
					}).collect(Collectors.toList());
			return new ResponseEntity<List<SalarieEnfantDTO>>(salarieEnfantsDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<SalarieEnfantDTO>>(HttpStatus.NO_CONTENT);

	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new SalarieEnfant", response = SalarieEnfantDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "SalarieEnfant already existing"),
			@ApiResponse(code = 304, message = "SalarieEnfant not added") })
	public ResponseEntity<SalarieEnfantDTO> createNewSalarieEnfant(
			@RequestBody SalarieEnfantDTO salarieEnfantDTORequest) {
		if (salarieEnfantService.checkIfExist(mapSalarieEnfantDTOToSalarieEnfant(salarieEnfantDTORequest))) {
			return new ResponseEntity<SalarieEnfantDTO>(HttpStatus.CONFLICT);
		}
		SalarieEnfant salarieEnfantRequest = mapSalarieEnfantDTOToSalarieEnfant(salarieEnfantDTORequest);
		SalarieEnfant salarieEnfantResponse = salarieEnfantService.saveSalarieEnfant(salarieEnfantRequest);
		// Mise à jours des salariés
		salMajService.saveSalarieEnfantMaj(mapSalarieEnfantToSalarieEnfantMaj(salarieEnfantRequest));
		if (salarieEnfantResponse != null) {
			SalarieEnfantDTO salarieEnfantDTO = mapSalarieEnfantToSalarieEnfantDTO(salarieEnfantResponse);
			return new ResponseEntity<SalarieEnfantDTO>(salarieEnfantDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<SalarieEnfantDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	@CrossOrigin
	@PatchMapping("/{id}")
	@ApiOperation(value = "Update SalarieEnfant", response = SalarieEnfantDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "SalarieEnfant not found"),
			@ApiResponse(code = 200, message = "SalarieEnfant successfully modified"),
			@ApiResponse(code = 304, message = "SalarieEnfant unsuccesully modified") })
	public ResponseEntity<SalarieEnfantDTO> updateSalarieEnfant(@PathVariable int id,
			@RequestBody SalarieEnfantDTO salarieEnfantDTORequest) {
		if (salarieEnfantService.findSalarieEnfant(id) != null) {
			return new ResponseEntity<SalarieEnfantDTO>(HttpStatus.NOT_FOUND);
		}
		SalarieEnfant salarieEnfantRequest = mapSalarieEnfantDTOToSalarieEnfant(salarieEnfantDTORequest);
		SalarieEnfant salarieEnfantResponse = salarieEnfantService.updateSalarieEnfant(salarieEnfantRequest);
		salMajService.updateSalarieEnfantMaj(mapSalarieEnfantToSalarieEnfantMaj(salarieEnfantRequest));

		if (salarieEnfantResponse != null) {
			SalarieEnfantDTO salarieEnfantDTO = mapSalarieEnfantToSalarieEnfantDTO(salarieEnfantResponse);
			return new ResponseEntity<SalarieEnfantDTO>(salarieEnfantDTO, HttpStatus.OK);
		}
		return new ResponseEntity<SalarieEnfantDTO>(HttpStatus.NOT_MODIFIED);
	}

	@CrossOrigin
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Delete SalarieEnfant", response = SalarieEnfantDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "SalarieEnfant not found"),
			@ApiResponse(code = 200, message = "SalarieEnfant successfully deleted"),
			@ApiResponse(code = 304, message = "SalarieEnfant unsuccesully deleted") })
	public ResponseEntity<SalarieEnfantDTO> deleteSalarieEnfant(@PathVariable int id) {
		SalarieEnfant salarieEnfant = salarieEnfantService.findSalarieEnfant(id);

		if (salarieEnfant == null) {
			return new ResponseEntity<SalarieEnfantDTO>(HttpStatus.NOT_FOUND);
		}
		salarieEnfantService.deleteSalarieEnfant(salarieEnfant);
		salMajService.deleteSalarieEnfantMaj(mapSalarieEnfantToSalarieEnfantMaj(salarieEnfant));

		return new ResponseEntity<SalarieEnfantDTO>(mapSalarieEnfantToSalarieEnfantDTO(salarieEnfant), HttpStatus.OK);
	}

	@CrossOrigin
	@GetMapping("/")
	@ApiOperation(value = "Get SalarieEnfant's auhentication", response = SalarieEnfantDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "SalarieEnfant not found"),
			@ApiResponse(code = 304, message = "SalarieEnfant unsuccesully deleted") })
	public ResponseEntity<SalarieEnfantDTO> getSalarieEnfant(@PathVariable int id) {
		SalarieEnfant salarieEnfant = salarieEnfantService.findSalarieEnfant(id);

		if (salarieEnfant == null) {
			return new ResponseEntity<SalarieEnfantDTO>(HttpStatus.NOT_FOUND);
		}
		salarieEnfantService.deleteSalarieEnfant(salarieEnfant);
		return new ResponseEntity<SalarieEnfantDTO>(mapSalarieEnfantToSalarieEnfantDTO(salarieEnfant), HttpStatus.OK);
	}

	private SalarieEnfant mapSalarieEnfantDTOToSalarieEnfant(SalarieEnfantDTO salarieEnfantDto) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(salarieEnfantDto, SalarieEnfant.class);
	}

	private SalarieEnfantDTO mapSalarieEnfantToSalarieEnfantDTO(SalarieEnfant salarieEnfant) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(salarieEnfant, SalarieEnfantDTO.class);
	}

	private SalarieEnfantMaj mapSalarieEnfantToSalarieEnfantMaj(SalarieEnfant salarieEnfant) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(salarieEnfant, SalarieEnfantMaj.class);
	}
}
