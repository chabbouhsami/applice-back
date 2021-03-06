package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.IRenseignementsGenerauxDao;
import com.ettawil.applice.model.entity.rg.RenseignementsGeneraux;

@Service
@Transactional
public class RenseignementsGenerauxServiceImpl implements IRenseignementsGenerauxService {

	@Autowired
	private IRenseignementsGenerauxDao rgDao;

	@Override
	public RenseignementsGeneraux saveRenseignementsGeneraux(RenseignementsGeneraux rg) {
		return rgDao.save(rg);
	}

	@Override
	public RenseignementsGeneraux updateRenseignementsGeneraux(RenseignementsGeneraux rg) {
		return rgDao.save(rg);
	}

	@Override
	public List<RenseignementsGeneraux> findRenseignementsGeneraux() {
		return rgDao.findAll();
	}

	@Override
	public void deleteRenseignementGeneraux(RenseignementsGeneraux entity) {
		rgDao.delete(entity);
	}

}
