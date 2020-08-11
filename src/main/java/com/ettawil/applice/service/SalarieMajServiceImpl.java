package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.ISalarieMajDao;
import com.ettawil.applice.model.entity.salarie.SalarieMaj;

@Service
@Transactional
public class SalarieMajServiceImpl implements ISalarieMajService {

	@Autowired
	private ISalarieMajDao salarieMajDao;

	@Override
	public SalarieMaj saveSalarieMaj(SalarieMaj salarieMaj) {
		return salarieMajDao.save(salarieMaj);
	}

	@Override
	public SalarieMaj updateSalarieMaj(SalarieMaj salarieMaj) {
		return salarieMajDao.save(salarieMaj);
	}

	@Override
	public SalarieMaj deleteSalarieMaj(SalarieMaj salarieMaj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SalarieMaj findSalarieMaj(int salarieMaj) {
		return salarieMajDao.getOne(salarieMaj);
	}

	@Override
	public boolean checkIfExist(SalarieMaj salarieMaj) {
		return salarieMajDao.existsById(salarieMaj.getCode());
	}

	@Override
	public List<SalarieMaj> findAll() {
		return salarieMajDao.findAll();
	}

}
