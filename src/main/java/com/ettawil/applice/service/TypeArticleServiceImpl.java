package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.ITypeArticleDao;
import com.ettawil.applice.model.entity.article.TypeArticle;

@Service
@Transactional
public class TypeArticleServiceImpl implements ITypeArticleService {

	@Autowired
	private ITypeArticleDao typeArticleDao;

	@Override
	public TypeArticle saveTypeArticle(TypeArticle typeArticle) {
		return typeArticleDao.save(typeArticle);
	}

	@Override
	public TypeArticle updateTypeArticle(TypeArticle typeArticle) {
		return typeArticleDao.save(typeArticle);
	}

	@Override
	public TypeArticle deleteTypeArticle(TypeArticle typeArticle) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TypeArticle findTypeArticle(int typeArticle) {
		return typeArticleDao.getOne(typeArticle);
	}

	@Override
	public boolean checkIfExist(TypeArticle typeArticle) {
		return typeArticleDao.existsById(typeArticle.getCode());
	}

	@Override
	public List<TypeArticle> findAll() {
		return typeArticleDao.findAll();
	}

}
