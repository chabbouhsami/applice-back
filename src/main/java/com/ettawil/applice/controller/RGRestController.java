package com.ettawil.applice.controller;

import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ettawil.applice.model.dto.RenseignementsGenerauxDTO;
import com.ettawil.applice.model.entity.rg.RenseignementsGeneraux;
import com.ettawil.applice.service.RenseignementsGenerauxServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/rg")
@Api(value = "Renseignements Généraux Rest Controller: contains all operations for managing Renseignements Généraux")
public class RGRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(RGRestController.class);

	@Autowired
	private RenseignementsGenerauxServiceImpl rgService;

	@GetMapping("")
	@ApiOperation(value = "Search the RG ", response = RenseignementsGenerauxDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the RenseignementsGeneraux doesn't exist") })
	public ResponseEntity<RenseignementsGenerauxDTO> searchRenseignementsGenerauxByCode() {
		RenseignementsGeneraux rg = rgService.findRenseignementsGeneraux();
		if (rg != null) {
			RenseignementsGenerauxDTO rgDTO = mapRenseignementsGenerauxToRenseignementsGenerauxDTO(rg);
			return new ResponseEntity<>(rgDTO, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new RenseignementsGeneraux", response = RenseignementsGenerauxDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "RenseignementsGeneraux already existing"),
			@ApiResponse(code = 304, message = "RenseignementsGeneraux not added") })
	public ResponseEntity<RenseignementsGenerauxDTO> createNewRenseignementsGeneraux(
			@RequestBody RenseignementsGenerauxDTO rgDTORequest) {
		RenseignementsGeneraux rg = rgService.findRenseignementsGeneraux();
		if (rg != null) {
			return updateRenseignementsGeneraux(rgDTORequest);
		}
		RenseignementsGeneraux rgRequest = mapRenseignementsGenerauxDTOToRenseignementsGeneraux(rgDTORequest);
		RenseignementsGeneraux rgResponse = rgService.saveRenseignementsGeneraux(rgRequest);
		if (rgResponse != null) {
			RenseignementsGenerauxDTO rgDTO = mapRenseignementsGenerauxToRenseignementsGenerauxDTO(rgResponse);
			return new ResponseEntity<RenseignementsGenerauxDTO>(rgDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<RenseignementsGenerauxDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	public ResponseEntity<RenseignementsGenerauxDTO> updateRenseignementsGeneraux(
			@RequestBody RenseignementsGenerauxDTO rgDTORequest) {
		RenseignementsGeneraux rgRequest = mapRenseignementsGenerauxDTOToRenseignementsGeneraux(rgDTORequest);
		RenseignementsGeneraux rgResponse = rgService.updateRenseignementsGeneraux(rgRequest);
		if (rgResponse != null) {
			RenseignementsGenerauxDTO rgDTO = mapRenseignementsGenerauxToRenseignementsGenerauxDTO(rgResponse);
			return new ResponseEntity<RenseignementsGenerauxDTO>(rgDTO, HttpStatus.OK);
		}
		return new ResponseEntity<RenseignementsGenerauxDTO>(HttpStatus.NOT_MODIFIED);
	}

	@CrossOrigin
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Delete RenseignementsGeneraux", response = RenseignementsGenerauxDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "RenseignementsGeneraux not found"),
			@ApiResponse(code = 200, message = "RenseignementsGeneraux successfully deleted"),
			@ApiResponse(code = 304, message = "RenseignementsGeneraux unsuccesully deleted") })
	public ResponseEntity<RenseignementsGenerauxDTO> deleteRenseignementsGeneraux(@PathVariable int id) {
		RenseignementsGeneraux rg = rgService.findRenseignementsGeneraux();

		if (rg != null) {
			return new ResponseEntity<RenseignementsGenerauxDTO>(HttpStatus.NOT_FOUND);
		}
		rgService.deleteRenseignementGeneraux(rg);
		return new ResponseEntity<RenseignementsGenerauxDTO>(mapRenseignementsGenerauxToRenseignementsGenerauxDTO(rg),
				HttpStatus.OK);
	}

	private RenseignementsGeneraux mapRenseignementsGenerauxDTOToRenseignementsGeneraux(RenseignementsGenerauxDTO rg) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(rg, RenseignementsGeneraux.class);
	}

	private RenseignementsGenerauxDTO mapRenseignementsGenerauxToRenseignementsGenerauxDTO(RenseignementsGeneraux rg) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(rg, RenseignementsGenerauxDTO.class);
	}
}
