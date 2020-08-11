package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.salarie.SalarieEnfant;

public interface ISalarieEnfantService {

	public SalarieEnfant saveSalarieEnfant(SalarieEnfant salarieEnfant);

	public SalarieEnfant updateSalarieEnfant(SalarieEnfant salarieEnfant);

	public SalarieEnfant deleteSalarieEnfant(SalarieEnfant salarieEnfant);

	public SalarieEnfant findSalarieEnfant(int salarieEnfantCode);

	public List<SalarieEnfant> findAll();

	public boolean checkIfExist(SalarieEnfant salarieEnfant);
}
