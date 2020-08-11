package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.IArticleDao;
import com.ettawil.applice.model.entity.article.Article;

@Service
@Transactional
public class ArticleServiceImpl implements IArticleService {

	@Autowired
	private IArticleDao articleDao;

	@Override
	public Article saveArticle(Article article) {
		return articleDao.save(article);
	}

	@Override
	public Article updateArticle(Article article) {
		return articleDao.save(article);
	}

	@Override
	public Article deleteArticle(Article article) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Article findArticle(int article) {
		return articleDao.getOne(article);
	}

	@Override
	public boolean checkIfExist(Article article) {
		return articleDao.existsById(article.getCode());
	}

	@Override
	public List<Article> findAll() {
		return articleDao.findAll();
	}

}
