package com.ettawil.applice.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ettawil.applice.model.entity.article.TypeArticle;

public interface ITypeArticleDao extends JpaRepository<TypeArticle, Integer> {
}
