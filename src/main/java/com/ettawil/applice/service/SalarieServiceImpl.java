package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.ISalarieDao;
import com.ettawil.applice.model.entity.salarie.Salarie;

@Service
@Transactional
public class SalarieServiceImpl implements ISalarieService {

	@Autowired
	private ISalarieDao salarieDao;

	@Override
	public Salarie saveSalarie(Salarie salarie) {
		return salarieDao.save(salarie);
	}

	@Override
	public Salarie updateSalarie(Salarie salarie) {
		return salarieDao.save(salarie);
	}

	@Override
	public Salarie deleteSalarie(Salarie salarie) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Salarie findSalarie(int salarie) {
		return salarieDao.getOne(salarie);
	}

	@Override
	public boolean checkIfExist(Salarie salarie) {
		return salarieDao.existsById(salarie.getCode());
	}

	@Override
	public List<Salarie> findAll() {
		return salarieDao.findAll();
	}

}
