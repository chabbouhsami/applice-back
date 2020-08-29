package com.ettawil.applice.dao.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ettawil.applice.model.entity.vente.Vente;

public interface IVenteDao extends JpaRepository<Vente, Integer> {

	List<Vente> findBySalarieCodeOrderByDateDesc(int code);
}
