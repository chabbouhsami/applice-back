package com.ettawil.applice.dao.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ettawil.applice.model.entity.approvisionnement.Approvisionnement;

public interface IApprovisionnementDao extends JpaRepository<Approvisionnement, Integer> {
	List<Approvisionnement> findLastByArticleCodeOrderByDateApproDesc(int code);
}
