package com.ettawil.applice.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ettawil.applice.model.entity.article.Article;

public interface IArticleDao extends JpaRepository<Article, Integer> {
}
