package com.ettawil.applice.service;

import java.util.List;

import com.ettawil.applice.model.entity.rg.RenseignementsGeneraux;

public interface IRenseignementsGenerauxService {

	public RenseignementsGeneraux saveRenseignementsGeneraux(RenseignementsGeneraux rg);

	public RenseignementsGeneraux updateRenseignementsGeneraux(RenseignementsGeneraux rg);

	public List<RenseignementsGeneraux> findRenseignementsGeneraux();

	public void deleteRenseignementGeneraux(RenseignementsGeneraux rg);
}
