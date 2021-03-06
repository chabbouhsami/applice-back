package com.ettawil.applice.model.dto;

import java.sql.Date;

public class SalarieDTO {

	int code;
	String lastName;
	String firstName;
	Date dateEntree;
	Date dateSortie;
	boolean plafond = false;
	// Type contrat
	TypeContratDTO typeContrat;
	String sexe;
	boolean actif;

	public SalarieDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SalarieDTO(int code, String lastName, String firstName, Date dateEntree, Date dateSortie, boolean plafond,
			TypeContratDTO typeContrat, String sexe, boolean actif) {
		super();
		this.code = code;
		this.lastName = lastName;
		this.firstName = firstName;
		this.dateEntree = dateEntree;
		this.dateSortie = dateSortie;
		this.plafond = plafond;
		this.typeContrat = typeContrat;
		this.sexe = sexe;
		this.actif = actif;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public Date getDateEntree() {
		return dateEntree;
	}

	public void setDateEntree(Date dateEntree) {
		this.dateEntree = dateEntree;
	}

	public Date getDateSortie() {
		return dateSortie;
	}

	public void setDateSortie(Date dateSortie) {
		this.dateSortie = dateSortie;
	}

	public boolean isPlafond() {
		return plafond;
	}

	public void setPlafond(boolean plafond) {
		this.plafond = plafond;
	}

	public TypeContratDTO getTypeContratDTO() {
		return typeContrat;
	}

	public void setTypeContratDTO(TypeContratDTO typeContrat) {
		this.typeContrat = typeContrat;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}


}
