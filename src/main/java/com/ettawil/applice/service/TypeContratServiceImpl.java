package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.ITypeContratDao;
import com.ettawil.applice.model.entity.contrat.TypeContrat;

@Service
@Transactional
public class TypeContratServiceImpl implements ITypeContratService {

	@Autowired
	private ITypeContratDao typeContratDao;

	@Override
	public TypeContrat saveTypeContrat(TypeContrat typeContrat) {
		return typeContratDao.save(typeContrat);
	}

	@Override
	public TypeContrat updateTypeContrat(TypeContrat typeContrat) {
		return typeContratDao.save(typeContrat);
	}

	@Override
	public void deleteTypeContrat(TypeContrat typeContrat) {
		typeContratDao.delete(typeContrat);
	}

	@Override
	public TypeContrat findTypeContrat(int typeContrat) {
		return typeContratDao.getOne(typeContrat);
	}

	@Override
	public boolean checkIfExist(TypeContrat typeContrat) {
		return typeContratDao.existsById(typeContrat.getCode());
	}

	@Override
	public List<TypeContrat> findAll() {
		return typeContratDao.findAll();
	}

}
