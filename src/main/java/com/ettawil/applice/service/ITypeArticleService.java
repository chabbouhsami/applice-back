package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.article.TypeArticle;

public interface ITypeArticleService {

	public TypeArticle saveTypeArticle(TypeArticle typeArticle);

	public TypeArticle updateTypeArticle(TypeArticle typeArticle);

	public TypeArticle deleteTypeArticle(TypeArticle typeArticle);

	public TypeArticle findTypeArticle(int typeArticleCode);

	public List<TypeArticle> findAll();

	public boolean checkIfExist(TypeArticle typeArticle);
}
