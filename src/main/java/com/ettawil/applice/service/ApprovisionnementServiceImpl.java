package com.ettawil.applice.service;

import java.util.List;
import java.util.Optional;

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
	public List<Approvisionnement> findAll() {
		return approvisionnementDao.findAll();
	}
	
	public Optional<Approvisionnement> findByCode(int code){
		return approvisionnementDao.findById(code);
	}

	public List<Approvisionnement> findAllByCodeOrderByDateAppro(int code){
		return approvisionnementDao.findLastByArticleCodeOrderByDateApproDesc(code);
	}
}
