package com.ettawil.applice.dao.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ettawil.applice.model.entity.salarie.SalarieEnfant;

public interface ISalarieEnfantDao extends JpaRepository<SalarieEnfant, Integer> {

	List<SalarieEnfant> findAllBySalarieCode(int code);
}
