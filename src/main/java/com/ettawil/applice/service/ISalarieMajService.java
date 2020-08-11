package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.salarie.SalarieMaj;

public interface ISalarieMajService {

	public SalarieMaj saveSalarieMaj(SalarieMaj salarieMaj);

	public SalarieMaj updateSalarieMaj(SalarieMaj salarieMaj);

	public SalarieMaj deleteSalarieMaj(SalarieMaj salarieMaj);

	public SalarieMaj findSalarieMaj(int salarieMajCode);

	public List<SalarieMaj> findAll();

	public boolean checkIfExist(SalarieMaj salarieMaj);
}
