package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.vente.Vente;

public interface IVenteService {

	public Vente saveVente(Vente vente);

	public Vente updateVente(Vente vente);

	public Vente deleteVente(Vente vente);

	public Vente findVente(int venteCode);

	public List<Vente> findAll();

	public boolean checkIfExist(Vente vente);
}
