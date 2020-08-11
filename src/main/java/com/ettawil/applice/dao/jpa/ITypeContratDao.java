package com.ettawil.applice.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ettawil.applice.model.entity.contrat.TypeContrat;

public interface ITypeContratDao extends JpaRepository<TypeContrat, Integer> {
}
