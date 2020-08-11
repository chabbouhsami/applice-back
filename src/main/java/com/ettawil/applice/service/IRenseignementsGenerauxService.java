package com.ettawil.applice.service;

import com.ettawil.applice.model.entity.rg.RenseignementsGeneraux;

public interface IRenseignementsGenerauxService {

	public RenseignementsGeneraux saveRenseignementsGeneraux(RenseignementsGeneraux rg);

	public RenseignementsGeneraux updateRenseignementsGeneraux(RenseignementsGeneraux rg);

	public RenseignementsGeneraux findRenseignementsGeneraux();

	public void deleteRenseignementGeneraux(RenseignementsGeneraux rg);
}
