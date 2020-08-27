package com.ettawil.applice.model.dto;

import java.sql.Date;

public class RenseignementsGenerauxDTO {

	int ageEnfant;
	Date dateAnciennete;

	public RenseignementsGenerauxDTO() {
		super();
	}

	public RenseignementsGenerauxDTO(int ageEnfant, Date dateAnciennente) {
		super();
		this.ageEnfant = ageEnfant;
		this.dateAnciennete = dateAnciennente;
	}

	public int getAgeEnfant() {
		return ageEnfant;
	}

	public void setAgeEnfant(int ageEnfant) {
		this.ageEnfant = ageEnfant;
	}

	public Date getDateAnciennete() {
		return dateAnciennete;
	}

	public void setDateAnciennete(Date dateAnciennente) {
		this.dateAnciennete = dateAnciennente;
	}

}
