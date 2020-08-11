package com.ettawil.applice.model.entity.contrat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CE_TYPCON")
public class TypeContrat {

	int code;
	String libelle;
	boolean droit = true;
	boolean actif = true;

	public TypeContrat() {
		super();
	}

	public TypeContrat(int code, String libelle, boolean droit, boolean actif) {
		super();
		this.code = code;
		this.libelle = libelle;
		this.droit = droit;
		this.actif = actif;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "TYPCON_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;

	}

	@Column(name = "TYPCON_NOM", nullable = false)
	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	@Column(name = "TYPCON_DRT", nullable = false)
	public boolean isDroit() {
		return droit;
	}

	public void setDroit(boolean droit) {
		this.droit = droit;
	}

	@Column(name = "TYPCON_ACF", nullable = false)
	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}
}