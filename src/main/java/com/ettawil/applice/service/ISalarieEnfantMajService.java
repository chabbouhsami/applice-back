package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.salarie.SalarieEnfantMaj;

public interface ISalarieEnfantMajService {

	public SalarieEnfantMaj saveSalarieEnfantMaj(SalarieEnfantMaj salarieEnfantMaj);
	
	public SalarieEnfantMaj updateSalarieEnfantMaj(SalarieEnfantMaj salarieEnfantMaj);
	
	public SalarieEnfantMaj deleteSalarieEnfantMaj(SalarieEnfantMaj salarieEnfantMaj);
	
	public SalarieEnfantMaj findSalarieEnfantMaj(int salarieEnfantMajCode);
	
	public List<SalarieEnfantMaj> findAll();
	
	public boolean checkIfExist(SalarieEnfantMaj salarieEnfantMaj);
}
