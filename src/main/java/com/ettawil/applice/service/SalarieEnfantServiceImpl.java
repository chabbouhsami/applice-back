package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.ISalarieEnfantDao;
import com.ettawil.applice.model.entity.salarie.SalarieEnfant;

@Service
@Transactional
public class SalarieEnfantServiceImpl implements ISalarieEnfantService {

	@Autowired
	private ISalarieEnfantDao salarieEnfantDao;

	@Override
	public SalarieEnfant saveSalarieEnfant(SalarieEnfant salarieEnfant) {
		return salarieEnfantDao.save(salarieEnfant);
	}

	@Override
	public SalarieEnfant updateSalarieEnfant(SalarieEnfant salarieEnfant) {
		return salarieEnfantDao.save(salarieEnfant);
	}

	@Override
	public SalarieEnfant deleteSalarieEnfant(SalarieEnfant salarieEnfant) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SalarieEnfant findSalarieEnfant(int salarieEnfant) {
		return salarieEnfantDao.getOne(salarieEnfant);
	}

	@Override
	public boolean checkIfExist(SalarieEnfant salarieEnfant) {
		return salarieEnfantDao.existsById(salarieEnfant.getCode());
	}

	@Override
	public List<SalarieEnfant> findAll() {
		return salarieEnfantDao.findAll();
	}
	
	public List<SalarieEnfant> findAllByParent(int code){
		return salarieEnfantDao.findAllBySalarieCode(code);
	}

}
