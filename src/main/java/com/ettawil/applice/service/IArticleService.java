package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.article.Article;

public interface IArticleService {

	public Article saveArticle(Article article);

	public Article updateArticle(Article article);

	public Article deleteArticle(Article article);

	public Article findArticle(int articleCode);

	public List<Article> findAll();

	public boolean checkIfExist(Article article);
}
