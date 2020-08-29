package com.ettawil.applice.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ettawil.applice.model.dto.VenteDTO;
import com.ettawil.applice.model.entity.vente.Vente;
import com.ettawil.applice.service.VenteServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/vente")
@Api(value = "Vente Rest Controller: contains all operations for managing vente")
public class VenteRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(VenteRestController.class);

	@Autowired
	private VenteServiceImpl service;

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Search the type contrat by code", response = VenteDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the type contrat doesn't exist") })
	public ResponseEntity<VenteDTO> searchVenteByCode(@PathVariable int id) {
		Vente vente = service.findVente(id);
		if (vente != null) {
			VenteDTO venteDto = mapVenteToVenteDTO(vente);
			return new ResponseEntity<>(venteDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	@CrossOrigin
	@GetMapping("/bySalarie/{id}")
	@ApiOperation(value = "Search the type contrat by code", response = VenteDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the type contrat doesn't exist") })
	public ResponseEntity<List<VenteDTO>> searchVenteBySalarieCode(@PathVariable int id) {
		List<Vente> ventes = service.findBySalarie(id);
		if (!ventes.isEmpty()) {
			List<VenteDTO> venteDto = ventes.stream().sorted(Comparator.comparing(Vente::getCode)).map(vente -> {
				return mapVenteToVenteDTO(vente);
			}).collect(Collectors.toList());
			return new ResponseEntity<>(venteDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(new ArrayList<VenteDTO>(), HttpStatus.OK);
	}

	@CrossOrigin
	@GetMapping("/searchAll")
	@ApiOperation(value = "Search all Ventes", response = VenteDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Ventes database is empty") })
	public ResponseEntity<List<VenteDTO>> searchAllVentes() {

		List<Vente> ventes = service.findAll();

		if (!CollectionUtils.isEmpty(ventes)) {

			List<VenteDTO> venteDto = ventes.stream().sorted(Comparator.comparing(Vente::getCode)).map(vente -> {
				return mapVenteToVenteDTO(vente);
			}).collect(Collectors.toList());
			return new ResponseEntity<List<VenteDTO>>(venteDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<VenteDTO>>(HttpStatus.OK);

	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new Vente", response = VenteDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "Vente already existing"),
			@ApiResponse(code = 304, message = "Vente not added") })
	public ResponseEntity<VenteDTO> createNewVente(@RequestBody VenteDTO venteDTORequest) {
		Vente venteRequest = mapVenteDTOToVente(venteDTORequest);
		Vente venteResponse = service.saveVente(venteRequest);
		if (venteResponse != null) {
			VenteDTO venteDTO = mapVenteToVenteDTO(venteResponse);
			return new ResponseEntity<VenteDTO>(venteDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<VenteDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	private Vente mapVenteDTOToVente(VenteDTO venteDto) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(venteDto, Vente.class);
	}

	private VenteDTO mapVenteToVenteDTO(Vente vente) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(vente, VenteDTO.class);
	}
}
