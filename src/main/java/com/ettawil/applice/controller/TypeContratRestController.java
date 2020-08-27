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

import com.ettawil.applice.model.dto.TypeContratDTO;
import com.ettawil.applice.model.entity.contrat.TypeContrat;
import com.ettawil.applice.service.TypeContratServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/contrat")
@Api(value = "TypeContrat Rest Controller: contains all operations for managing typeContrats")
public class TypeContratRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(TypeContratRestController.class);

	@Autowired
	private TypeContratServiceImpl typeContratService;

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Search the type contrat by code", response = TypeContratDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the type contrat doesn't exist") })
	public ResponseEntity<TypeContratDTO> searchTypeContratByCode(@PathVariable int id) {
		TypeContrat typeContrat = typeContratService.findTypeContrat(id);
		if (typeContrat != null) {
			TypeContratDTO typeContratDto = mapTypeContratToTypeContratDTO(typeContrat);
			return new ResponseEntity<>(typeContratDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	@CrossOrigin
	@GetMapping("/searchAll")
	@ApiOperation(value = "Search all TypeContrats", response = TypeContratDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "TypeContrats database is empty") })
	public ResponseEntity<List<TypeContratDTO>> searchAllTypeContrats() {

		List<TypeContrat> typeContrats = typeContratService.findAll();

		if (!CollectionUtils.isEmpty(typeContrats)) {

			List<TypeContratDTO> typeContratsDto = typeContrats.stream()
					.sorted(Comparator.comparing(TypeContrat::getLibelle)).map(typeContrat -> {
						return mapTypeContratToTypeContratDTO(typeContrat);
					}).collect(Collectors.toList());
			return new ResponseEntity<List<TypeContratDTO>>(typeContratsDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<TypeContratDTO>>(HttpStatus.NO_CONTENT);

	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new TypeContrat", response = TypeContratDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "TypeContrat already existing"),
			@ApiResponse(code = 304, message = "TypeContrat not added") })
	public ResponseEntity<TypeContratDTO> createNewTypeContrat(@RequestBody TypeContratDTO typeContratDTORequest) {
		if (typeContratService.checkIfExist(mapTypeContratDTOToTypeContrat(typeContratDTORequest))) {
			return new ResponseEntity<TypeContratDTO>(HttpStatus.CONFLICT);
		}
		TypeContrat typeContratRequest = mapTypeContratDTOToTypeContrat(typeContratDTORequest);
		TypeContrat typeContratResponse = typeContratService.saveTypeContrat(typeContratRequest);
		if (typeContratResponse != null) {
			TypeContratDTO typeContratDTO = mapTypeContratToTypeContratDTO(typeContratResponse);
			return new ResponseEntity<TypeContratDTO>(typeContratDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<TypeContratDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	@CrossOrigin
	@PatchMapping("/{id}")
	@ApiOperation(value = "Update TypeContrat", response = TypeContratDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "TypeContrat not found"),
			@ApiResponse(code = 200, message = "TypeContrat successfully modified"),
			@ApiResponse(code = 304, message = "TypeContrat unsuccesully modified") })
	public ResponseEntity<TypeContratDTO> updateTypeContrat(@PathVariable int id,
			@RequestBody TypeContratDTO typeContratDTORequest) {
		if (typeContratService.findTypeContrat(id) == null) {
			return new ResponseEntity<TypeContratDTO>(HttpStatus.NOT_FOUND);
		}
		TypeContrat typeContratRequest = mapTypeContratDTOToTypeContrat(typeContratDTORequest);
		TypeContrat typeContratResponse = typeContratService.updateTypeContrat(typeContratRequest);
		if (typeContratResponse != null) {
			TypeContratDTO typeContratDTO = mapTypeContratToTypeContratDTO(typeContratResponse);
			return new ResponseEntity<TypeContratDTO>(typeContratDTO, HttpStatus.OK);
		}
		return new ResponseEntity<TypeContratDTO>(HttpStatus.NOT_MODIFIED);
	}

	@CrossOrigin
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Delete TypeContrat", response = TypeContratDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "TypeContrat not found"),
			@ApiResponse(code = 200, message = "TypeContrat successfully deleted"),
			@ApiResponse(code = 304, message = "TypeContrat unsuccesully deleted") })
	public ResponseEntity<TypeContratDTO> deleteTypeContrat(@PathVariable int id) {
		TypeContrat typeContrat = typeContratService.findTypeContrat(id);

		if (typeContrat == null) {
			return new ResponseEntity<TypeContratDTO>(HttpStatus.NOT_FOUND);
		}
		typeContratService.deleteTypeContrat(typeContrat);
		return new ResponseEntity<TypeContratDTO>(mapTypeContratToTypeContratDTO(typeContrat), HttpStatus.OK);
	}

	private TypeContrat mapTypeContratDTOToTypeContrat(TypeContratDTO typeContratDto) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(typeContratDto, TypeContrat.class);
	}

	private TypeContratDTO mapTypeContratToTypeContratDTO(TypeContrat typeContrat) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(typeContrat, TypeContratDTO.class);
	}
}
