package com.ettawil.applice.model.dto;

import java.sql.Date;

public class SalarieEnfantDTO {

	int code;
	String lastName;
	String firstName;
	Date dateNaissance;
	Date dateDeces;
	boolean actif;
	SalarieDTO salarie;

	public SalarieEnfantDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SalarieEnfantDTO(int code, String lastName, String firstName, Date dateNaissance, Date dateDeces, boolean actif,
			SalarieDTO salarie) {
		super();
		this.code = code;
		this.lastName = lastName;
		this.firstName = firstName;
		this.dateNaissance = dateNaissance;
		this.dateDeces = dateDeces;
		this.actif = actif;
		this.salarie = salarie;
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

	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public Date getDateDeces() {
		return dateDeces;
	}

	public void setDateDeces(Date dateDeces) {
		this.dateDeces = dateDeces;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	public SalarieDTO getSalarie() {
		return salarie;
	}

	public void setSalarie(SalarieDTO salarie) {
		this.salarie = salarie;
	}


}
