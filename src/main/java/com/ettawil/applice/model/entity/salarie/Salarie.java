package com.ettawil.applice.model.entity.salarie;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CE_SAL")
public class Salarie {

	int code;
	String lastName;
	String firstName;
	Date dateEntree;
	Date dateSortie;
	boolean plaond = false;
	// Type contrat
	String typeContrat;
	String sexe;
	boolean actif;

	public Salarie() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Salarie(int code, String lastName, String firstName, Date dateEntree, Date dateSortie, boolean plaond,
			String typeContrat, String sexe, boolean actif) {
		super();
		this.code = code;
		this.lastName = lastName;
		this.firstName = firstName;
		this.dateEntree = dateEntree;
		this.dateSortie = dateSortie;
		this.plaond = plaond;
		this.typeContrat = typeContrat;
		this.sexe = sexe;
		this.actif = actif;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SAL_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Column(name = "SAL_NOM", nullable = false)
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "SAL_PRE", nullable = false)
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "SAL_DAT_ENT", nullable = false)
	public Date getDateEntree() {
		return dateEntree;
	}

	public void setDateEntree(Date dateEntree) {
		this.dateEntree = dateEntree;
	}

	@Column(name = "SAL_DAT_SOR", nullable = false)
	public Date getDateSortie() {
		return dateSortie;
	}

	public void setDateSortie(Date dateSortie) {
		this.dateSortie = dateSortie;
	}

	@Column(name = "SAL_PLA", nullable = false)
	public boolean isPlaond() {
		return plaond;
	}

	public void setPlaond(boolean plaond) {
		this.plaond = plaond;
	}

	@Column(name = "TYPCON_COD", nullable = false)
	public String getTypeContrat() {
		return typeContrat;
	}

	public void setTypeContrat(String typeContrat) {
		this.typeContrat = typeContrat;
	}

	@Column(name = "SAL_SEX", nullable = false)
	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	@Column(name = "SAL_ACF", nullable = false)
	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

}
