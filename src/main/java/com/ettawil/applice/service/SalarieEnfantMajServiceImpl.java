package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.ISalarieEnfantMajDao;
import com.ettawil.applice.model.entity.salarie.SalarieEnfantMaj;

@Service
@Transactional
public class SalarieEnfantMajServiceImpl implements ISalarieEnfantMajService {

	@Autowired
	private ISalarieEnfantMajDao salarieEnfantMajDao;

	@Override
	public SalarieEnfantMaj saveSalarieEnfantMaj(SalarieEnfantMaj salarieEnfantMaj) {
		return salarieEnfantMajDao.save(salarieEnfantMaj);
	}

	@Override
	public SalarieEnfantMaj updateSalarieEnfantMaj(SalarieEnfantMaj salarieEnfantMaj) {
		return salarieEnfantMajDao.save(salarieEnfantMaj);
	}

	@Override
	public SalarieEnfantMaj deleteSalarieEnfantMaj(SalarieEnfantMaj salarieEnfantMaj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SalarieEnfantMaj findSalarieEnfantMaj(int salarieEnfantMaj) {
		return salarieEnfantMajDao.getOne(salarieEnfantMaj);
	}

	@Override
	public boolean checkIfExist(SalarieEnfantMaj salarieEnfantMaj) {
		return salarieEnfantMajDao.existsById(salarieEnfantMaj.getCode());
	}

	@Override
	public List<SalarieEnfantMaj> findAll() {
		return salarieEnfantMajDao.findAll();
	}

}
