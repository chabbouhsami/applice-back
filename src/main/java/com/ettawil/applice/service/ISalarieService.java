package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.salarie.Salarie;

public interface ISalarieService {

	public Salarie saveSalarie(Salarie salarie);

	public Salarie updateSalarie(Salarie salarie);

	public Salarie deleteSalarie(Salarie salarie);

	public Salarie findSalarie(int salarieCode);

	public List<Salarie> findAll();

	public boolean checkIfExist(Salarie salarie);
}
