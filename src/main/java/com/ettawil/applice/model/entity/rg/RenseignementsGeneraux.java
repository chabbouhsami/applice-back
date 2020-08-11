package com.ettawil.applice.model.entity.rg;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CE_RG")
public class RenseignementsGeneraux {

	int ageEnfant;
	Date dateAnciennente;

	public RenseignementsGeneraux() {
		super();
	}

	public RenseignementsGeneraux(int ageEnfant, Date dateAnciennente) {
		super();
		this.ageEnfant = ageEnfant;
		this.dateAnciennente = dateAnciennente;
	}

	@Id
	@Column(name = "RG_AGE_ENF", nullable = false)
	public int getAgeEnfant() {
		return ageEnfant;
	}

	public void setAgeEnfant(int ageEnfant) {
		this.ageEnfant = ageEnfant;
	}

	@Column(name = "RG_DAT_ANC", nullable = false)
	public Date getDateAnciennente() {
		return dateAnciennente;
	}

	public void setDateAnciennente(Date dateAnciennente) {
		this.dateAnciennente = dateAnciennente;
	}

}
