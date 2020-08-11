package com.ettawil.applice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ettawil.applice.dao.jpa.IVenteDao;
import com.ettawil.applice.model.entity.vente.Vente;

@Service
@Transactional
public class VenteServiceImpl implements IVenteService {

	@Autowired
	private IVenteDao venteDao;

	@Override
	public Vente saveVente(Vente vente) {
		return venteDao.save(vente);
	}

	@Override
	public Vente updateVente(Vente vente) {
		return venteDao.save(vente);
	}

	@Override
	public Vente deleteVente(Vente vente) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Vente findVente(int vente) {
		return venteDao.getOne(vente);
	}

	@Override
	public boolean checkIfExist(Vente vente) {
		return venteDao.existsById(vente.getCode());
	}

	@Override
	public List<Vente> findAll() {
		return venteDao.findAll();
	}

}
