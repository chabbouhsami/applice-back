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

import com.ettawil.applice.model.dto.ArticleDTO;
import com.ettawil.applice.model.entity.article.Article;
import com.ettawil.applice.service.ArticleServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@RequestMapping("/rest/api/article")
@Api(value = "Article Rest Controller: contains all operations for managing Article")
public class ArticleRestController {

	public static final Logger LOGGER = LoggerFactory.getLogger(ArticleRestController.class);

	@Autowired
	private ArticleServiceImpl articleService;

	@CrossOrigin
	@GetMapping("/{id}")
	@ApiOperation(value = "Search the type article by code", response = ArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Not Found: the article doesn't exist") })
	public ResponseEntity<ArticleDTO> searchArticleByCode(@PathVariable int id) {
		Article article = articleService.findArticle(id);
		if (article != null) {
			ArticleDTO articleDto = mapArticleToArticleDTO(article);
			return new ResponseEntity<>(articleDto, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	@CrossOrigin
	@GetMapping("/searchAll")
	@ApiOperation(value = "Search all Articles", response = ArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Articles database is empty") })
	public ResponseEntity<List<ArticleDTO>> searchAllArticles() {

		List<Article> article = articleService.findAll();

		if (!CollectionUtils.isEmpty(article)) {

			List<ArticleDTO> articleDto = article.stream().sorted(Comparator.comparing(Article::getLibelle)).map(x -> {
				return mapArticleToArticleDTO(x);
			}).collect(Collectors.toList());
			return new ResponseEntity<List<ArticleDTO>>(articleDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<ArticleDTO>>(HttpStatus.OK);

	}

	@CrossOrigin
	@GetMapping("/getStockable")
	@ApiOperation(value = "Search all Articles having stock", response = ArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Articles database is empty") })
	public ResponseEntity<List<ArticleDTO>> getStockable() {

		List<Article> article = articleService.findAll();

		if (!CollectionUtils.isEmpty(article)) {

			List<ArticleDTO> articleDto = article.stream().sorted(Comparator.comparing(Article::getLibelle))
					.filter(x -> x.getType().getGestionStock()).map(x -> {
						return mapArticleToArticleDTO(x);
					}).collect(Collectors.toList());
			return new ResponseEntity<List<ArticleDTO>>(articleDto, HttpStatus.OK);
		}
		return new ResponseEntity<List<ArticleDTO>>(HttpStatus.OK);

	}

	@CrossOrigin
	@PostMapping("")
	@ApiOperation(value = "Add new Article", response = ArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 409, message = "Article already existing"),
			@ApiResponse(code = 304, message = "Article not added") })
	public ResponseEntity<ArticleDTO> createNewArticle(@RequestBody ArticleDTO articleDTORequest) {
		if (articleService.checkIfExist(mapArticleDTOToArticle(articleDTORequest))) {
			return new ResponseEntity<ArticleDTO>(HttpStatus.CONFLICT);
		}
		Article articleRequest = mapArticleDTOToArticle(articleDTORequest);
		Article articleResponse = articleService.saveArticle(articleRequest);
		if (articleResponse != null) {
			ArticleDTO articleDTO = mapArticleToArticleDTO(articleResponse);
			return new ResponseEntity<ArticleDTO>(articleDTO, HttpStatus.CREATED);
		}
		return new ResponseEntity<ArticleDTO>(HttpStatus.EXPECTATION_FAILED);
	}

	@CrossOrigin
	@PatchMapping("/{id}")
	@ApiOperation(value = "Update Article", response = ArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Article not found"),
			@ApiResponse(code = 200, message = "Article successfully modified"),
			@ApiResponse(code = 304, message = "Article unsuccesully modified") })
	public ResponseEntity<ArticleDTO> updateArticle(@PathVariable int id, @RequestBody ArticleDTO articleDTORequest) {
		if (articleService.findArticle(id) == null) {
			return new ResponseEntity<ArticleDTO>(HttpStatus.NOT_FOUND);
		}
		Article articleRequest = mapArticleDTOToArticle(articleDTORequest);
		Article articleResponse = articleService.updateArticle(articleRequest);
		if (articleResponse != null) {
			ArticleDTO articleDTO = mapArticleToArticleDTO(articleResponse);
			return new ResponseEntity<ArticleDTO>(articleDTO, HttpStatus.OK);
		}
		return new ResponseEntity<ArticleDTO>(HttpStatus.NOT_MODIFIED);
	}

	@CrossOrigin
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Delete Article", response = ArticleDTO.class)
	@ApiResponses(value = { @ApiResponse(code = 404, message = "Article not found"),
			@ApiResponse(code = 200, message = "Article successfully deleted"),
			@ApiResponse(code = 304, message = "Article unsuccesully deleted") })
	public ResponseEntity<ArticleDTO> deleteArticle(@PathVariable int id) {
		Article article = articleService.findArticle(id);

		if (article == null) {
			return new ResponseEntity<ArticleDTO>(HttpStatus.NOT_FOUND);
		}
		articleService.deleteArticle(article);
		return new ResponseEntity<ArticleDTO>(mapArticleToArticleDTO(article), HttpStatus.OK);
	}

	private Article mapArticleDTOToArticle(ArticleDTO articleDto) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(articleDto, Article.class);
	}

	private ArticleDTO mapArticleToArticleDTO(Article article) {
		ModelMapper mapper = new ModelMapper();
		return mapper.map(article, ArticleDTO.class);
	}
}
