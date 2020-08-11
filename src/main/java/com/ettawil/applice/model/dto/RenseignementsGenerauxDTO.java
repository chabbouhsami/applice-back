package com.ettawil.applice.model.dto;

import java.sql.Date;

public class RenseignementsGenerauxDTO {

	int ageEnfant;
	Date dateAnciennente;

	public RenseignementsGenerauxDTO() {
		super();
	}

	public RenseignementsGenerauxDTO(int ageEnfant, Date dateAnciennente) {
		super();
		this.ageEnfant = ageEnfant;
		this.dateAnciennente = dateAnciennente;
	}

	public int getAgeEnfant() {
		return ageEnfant;
	}

	public void setAgeEnfant(int ageEnfant) {
		this.ageEnfant = ageEnfant;
	}

	public Date getDateAnciennente() {
		return dateAnciennente;
	}

	public void setDateAnciennente(Date dateAnciennente) {
		this.dateAnciennente = dateAnciennente;
	}

}
