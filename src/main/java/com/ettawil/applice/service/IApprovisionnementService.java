package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.approvisionnement.Approvisionnement;

public interface IApprovisionnementService {

	public Approvisionnement saveApprovisionnement(Approvisionnement approvisionnement);

	public Approvisionnement updateApprovisionnement(Approvisionnement approvisionnement);

	public Approvisionnement deleteApprovisionnement(Approvisionnement approvisionnement);

	public Approvisionnement findApprovisionnement(int approvisionnementCode);

	public List<Approvisionnement> findAll();

	public boolean checkIfExist(Approvisionnement approvisionnement);
}
