package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.approvisionnement.Approvisionnement;

public interface IApprovisionnementService {

	public Approvisionnement saveApprovisionnement(Approvisionnement approvisionnement);

	public List<Approvisionnement> findAll();

}
