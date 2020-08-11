package com.ettawil.applice.model.dto;

public class TypeContratDTO {

	int code;
	String libelle;
	boolean droit = true;
	boolean actif = true;

	public TypeContratDTO() {
		super();
	}

	public TypeContratDTO(int code, String libelle, boolean droit, boolean actif) {
		super();
		this.code = code;
		this.libelle = libelle;
		this.droit = droit;
		this.actif = actif;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public boolean isDroit() {
		return droit;
	}

	public void setDroit(boolean droit) {
		this.droit = droit;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

}
