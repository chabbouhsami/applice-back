package com.ettawil.applice.controller;

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

import com.ettawil.applice.model.dto.TypeArticleDTO;
import com.ettawil.applice.model.entity.article.TypeArticle;
import com.ettawil.applice.service.TypeArticleServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/article/type")
@Api(value = "TypeArticle Rest Controller: contains all operations for managing typeArticle")
public class TypeArticleRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(TypeArticleRestController.class);

	@Autowired
	private TypeArticleServiceImpl typeContratService;

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Search the type article by code", response = TypeArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the type article doesn't exist") })
	public ResponseEntity<TypeArticleDTO> searchTypeArticleByCode(@PathVariable int id) {
		TypeArticle typeContrat = typeContratService.findTypeArticle(id);
		if (typeContrat != null) {
			TypeArticleDTO typeContratDto = mapTypeArticleToTypeArticleDTO(typeContrat);
			return new ResponseEntity<>(typeContratDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	@CrossOrigin
	@GetMapping("/searchAll")
	@ApiOperation(value = "Search all TypeArticles", response = TypeArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "TypeArticles database is empty") })
	public ResponseEntity<List<TypeArticleDTO>> searchAllTypeArticles() {

		List<TypeArticle> typeArticle = typeContratService.findAll();

		if (!CollectionUtils.isEmpty(typeArticle)) {

			List<TypeArticleDTO> typeArticleDto = typeArticle.stream().map(typeContrat -> {
				return mapTypeArticleToTypeArticleDTO(typeContrat);
			}).collect(Collectors.toList());
			return new ResponseEntity<List<TypeArticleDTO>>(typeArticleDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<TypeArticleDTO>>(HttpStatus.NO_CONTENT);

	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new TypeArticle", response = TypeArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "TypeArticle already existing"),
			@ApiResponse(code = 304, message = "TypeArticle not added") })
	public ResponseEntity<TypeArticleDTO> createNewTypeArticle(@RequestBody TypeArticleDTO typeContratDTORequest) {
		if (typeContratService.checkIfExist(mapTypeArticleDTOToTypeArticle(typeContratDTORequest))) {
			return new ResponseEntity<TypeArticleDTO>(HttpStatus.CONFLICT);
		}
		TypeArticle typeContratRequest = mapTypeArticleDTOToTypeArticle(typeContratDTORequest);
		TypeArticle typeContratResponse = typeContratService.saveTypeArticle(typeContratRequest);
		if (typeContratResponse != null) {
			TypeArticleDTO typeContratDTO = mapTypeArticleToTypeArticleDTO(typeContratResponse);
			return new ResponseEntity<TypeArticleDTO>(typeContratDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<TypeArticleDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	@CrossOrigin
	@PatchMapping("/{id}")
	@ApiOperation(value = "Update TypeArticle", response = TypeArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "TypeArticle not found"),
			@ApiResponse(code = 200, message = "TypeArticle successfully modified"),
			@ApiResponse(code = 304, message = "TypeArticle unsuccesully modified") })
	public ResponseEntity<TypeArticleDTO> updateTypeArticle(@PathVariable int id,
			@RequestBody TypeArticleDTO typeContratDTORequest) {
		if (typeContratService.findTypeArticle(id) == null) {
			return new ResponseEntity<TypeArticleDTO>(HttpStatus.NOT_FOUND);
		}
		TypeArticle typeContratRequest = mapTypeArticleDTOToTypeArticle(typeContratDTORequest);
		TypeArticle typeContratResponse = typeContratService.updateTypeArticle(typeContratRequest);
		if (typeContratResponse != null) {
			TypeArticleDTO typeContratDTO = mapTypeArticleToTypeArticleDTO(typeContratResponse);
			return new ResponseEntity<TypeArticleDTO>(typeContratDTO, HttpStatus.OK);
		}
		return new ResponseEntity<TypeArticleDTO>(HttpStatus.NOT_MODIFIED);
	}

	@CrossOrigin
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Delete TypeArticle", response = TypeArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "TypeArticle not found"),
			@ApiResponse(code = 200, message = "TypeArticle successfully deleted"),
			@ApiResponse(code = 304, message = "TypeArticle unsuccesully deleted") })
	public ResponseEntity<TypeArticleDTO> deleteTypeArticle(@PathVariable int id) {
		TypeArticle typeContrat = typeContratService.findTypeArticle(id);

		if (typeContrat == null) {
			return new ResponseEntity<TypeArticleDTO>(HttpStatus.NOT_FOUND);
		}
		typeContratService.deleteTypeArticle(typeContrat);
		return new ResponseEntity<TypeArticleDTO>(mapTypeArticleToTypeArticleDTO(typeContrat), HttpStatus.OK);
	}

	private TypeArticle mapTypeArticleDTOToTypeArticle(TypeArticleDTO typeContratDto) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(typeContratDto, TypeArticle.class);
	}

	private TypeArticleDTO mapTypeArticleToTypeArticleDTO(TypeArticle typeContrat) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(typeContrat, TypeArticleDTO.class);
	}
}
