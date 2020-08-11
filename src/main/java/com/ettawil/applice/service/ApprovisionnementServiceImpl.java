package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.IApprovisionnementDao;
import com.ettawil.applice.model.entity.approvisionnement.Approvisionnement;

@Service
@Transactional
public class ApprovisionnementServiceImpl implements IApprovisionnementService {

	@Autowired
	private IApprovisionnementDao approvisionnementDao;

	@Override
	public Approvisionnement saveApprovisionnement(Approvisionnement approvisionnement) {
		return approvisionnementDao.save(approvisionnement);
	}

	@Override
	public Approvisionnement updateApprovisionnement(Approvisionnement approvisionnement) {
		return approvisionnementDao.save(approvisionnement);
	}

	@Override
	public Approvisionnement deleteApprovisionnement(Approvisionnement approvisionnement) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Approvisionnement findApprovisionnement(int approvisionnement) {
		return approvisionnementDao.getOne(approvisionnement);
	}

	@Override
	public boolean checkIfExist(Approvisionnement approvisionnement) {
		return approvisionnementDao.existsById(approvisionnement.getCode());
	}

	@Override
	public List<Approvisionnement> findAll() {
		return approvisionnementDao.findAll();
	}

}
