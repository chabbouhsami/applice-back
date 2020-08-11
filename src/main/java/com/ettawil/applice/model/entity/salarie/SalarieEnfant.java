package com.ettawil.applice.model.entity.salarie;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CE_SAL_ENF")
public class SalarieEnfant {

	int code;
	String lastName;
	String firstName;
	Date dateNaissance;
	Date dateDeces;
	boolean actif;
	Salarie salarie;

	public SalarieEnfant() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SalarieEnfant(int code, String lastName, String firstName, Date dateNaissance, Date dateDeces, boolean actif,
			Salarie salarie) {
		super();
		this.code = code;
		this.lastName = lastName;
		this.firstName = firstName;
		this.dateNaissance = dateNaissance;
		this.dateDeces = dateDeces;
		this.actif = actif;
		this.salarie = salarie;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SAL_ENF_ENF_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Column(name = "SAL_ENF_NOM", nullable = false)
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "SAL_ENF_PRE", nullable = false)
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "SAL_ENF_DAT_NAI", nullable = false)
	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	@Column(name = "SAL_ENF_DAT_DEC", nullable = false)
	public Date getDateDeces() {
		return dateDeces;
	}

	public void setDateDeces(Date dateDeces) {
		this.dateDeces = dateDeces;
	}

	@Column(name = "SAL_ENF_ACF", nullable = false)
	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SAL_COD", nullable = false)
	public Salarie getSalarie() {
		return salarie;
	}

	public void setSalarie(Salarie salarie) {
		this.salarie = salarie;
	}

}
