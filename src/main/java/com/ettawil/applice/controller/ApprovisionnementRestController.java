package com.ettawil.applice.controller;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ettawil.applice.model.dto.ApprovisionnementDTO;
import com.ettawil.applice.model.entity.approvisionnement.Approvisionnement;
import com.ettawil.applice.service.ApprovisionnementServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/approvisionnement")
@Api(value = "ApprovisionnementRest Controller: contains all operations for managing Renseignements Généraux")
public class ApprovisionnementRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(ApprovisionnementRestController.class);

	@Autowired
	private ApprovisionnementServiceImpl service;

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new Approvisionnement", response = ApprovisionnementDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "Approvisionnement already existing"),
			@ApiResponse(code = 304, message = "Approvisionnement not added") })
	public ResponseEntity<ApprovisionnementDTO> createNewApprovisionnement(
			@RequestBody ApprovisionnementDTO approvisionnementDTORequest) {
		Approvisionnement rgResponse = service
				.saveApprovisionnement(mapApprovisionnementDTOToApprovisionnement(approvisionnementDTORequest));
		if (rgResponse != null) {
			if (rgResponse.getArticle()!=null) {
				System.out.println("toto");
				if (rgResponse.getArticle().getLibelle()!="") {
					System.out.println("tata");

					if("".equals(rgResponse.getCommentaire())) {
						
						System.out.println("tata");
					}
					
				}
			}
			ApprovisionnementDTO rgDTO = mapApprovisionnementToApprovisionnementDTO(rgResponse);
			return new ResponseEntity<ApprovisionnementDTO>(rgDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<ApprovisionnementDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Get count stock of the article id", response = ApprovisionnementDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "Approvisionnement already existing"),
			@ApiResponse(code = 304, message = "Approvisionnement not added") })
	public ResponseEntity<Approvisionnement> createNewApprovisionnement(@PathVariable int id) {
		List<Approvisionnement> result = service.findAllByCodeOrderByDateAppro(id);

		if (result.isEmpty()) {
			return new ResponseEntity<Approvisionnement>(new Approvisionnement(), HttpStatus.OK);
		}

		return new ResponseEntity<Approvisionnement>(result.get(0), HttpStatus.OK);
	}

	private Approvisionnement mapApprovisionnementDTOToApprovisionnement(ApprovisionnementDTO rg) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(rg, Approvisionnement.class);
	}

	private ApprovisionnementDTO mapApprovisionnementToApprovisionnementDTO(Approvisionnement rg) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(rg, ApprovisionnementDTO.class);
	}
}
