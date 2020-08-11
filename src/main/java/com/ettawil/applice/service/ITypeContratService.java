package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.contrat.TypeContrat;

public interface ITypeContratService {

	public TypeContrat saveTypeContrat(TypeContrat typeContrat);

	public TypeContrat updateTypeContrat(TypeContrat typeContrat);

	public void deleteTypeContrat(TypeContrat typeContrat);

	public TypeContrat findTypeContrat(int typeContratCode);

	public List<TypeContrat> findAll();

	public boolean checkIfExist(TypeContrat typeContrat);
}
