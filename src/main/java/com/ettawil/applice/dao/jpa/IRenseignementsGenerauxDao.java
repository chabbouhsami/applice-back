package com.ettawil.applice.dao.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ettawil.applice.model.entity.rg.RenseignementsGeneraux;

public interface IRenseignementsGenerauxDao extends JpaRepository<RenseignementsGeneraux, Integer> {

	List<RenseignementsGeneraux> findAll();
}
