package com.ettawil.applice.model.entity.article;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CE_TYPART")
public class TypeArticle {

	int code;
	String libelle;
	int quantiteMois;
	int quantiteAn;
	boolean gestionStock;
	boolean actif = true;
	double montantMois;
	double montantAn;
	int anciennete;
	String moisInterditVente;

	public TypeArticle() {
		super();
	}

	public TypeArticle(int code, String libelle, int quantiteMois, int quantiteAn, boolean gestionStock, boolean actif,
			double montantMois, double montantAn, int anciennete, String moisInterditVente) {
		super();
		this.code = code;
		this.libelle = libelle;
		this.quantiteMois = quantiteMois;
		this.quantiteAn = quantiteAn;
		this.gestionStock = gestionStock;
		this.actif = actif;
		this.montantMois = montantMois;
		this.montantAn = montantAn;
		this.anciennete = anciennete;
		this.moisInterditVente = moisInterditVente;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "TYPART_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Column(name = "TYPART_LIB", nullable = false)
	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	@Column(name = "TYPART_QTE_MOI", nullable = false)
	public int getQuantiteMois() {
		return quantiteMois;
	}

	public void setQuantiteMois(int quantiteMois) {
		this.quantiteMois = quantiteMois;
	}

	@Column(name = "TYPART_QTE_AN", nullable = false)
	public int getQuantiteAn() {
		return quantiteAn;
	}

	public void setQuantiteAn(int quantiteAn) {
		this.quantiteAn = quantiteAn;
	}

	@Column(name = "TYPART_GST_STK", nullable = false)
	public boolean getGestionStock() {
		return gestionStock;
	}

	public void setGestionStock(boolean gestionStock) {
		this.gestionStock = gestionStock;
	}

	@Column(name = "TYPART_ACF", nullable = false)
	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	@Column(name = "TYPART_MNT_MOI", nullable = false)
	public double getMontantMois() {
		return montantMois;
	}

	public void setMontantMois(double montantMois) {
		this.montantMois = montantMois;
	}

	@Column(name = "TYPART_MNT_AN", nullable = false)
	public double getMontantAn() {
		return montantAn;
	}

	public void setMontantAn(double mondantAn) {
		this.montantAn = mondantAn;
	}

	@Column(name = "TYPART_ANC", nullable = false)
	public int getAnciennete() {
		return anciennete;
	}

	public void setAnciennete(int anciennete) {
		this.anciennete = anciennete;
	}

	@Column(name = "TYPART_MOI_INT", nullable = false)
	public String getMoisInterditVente() {
		return moisInterditVente;
	}

	public void setMoisInterditVente(String moisInterditVente) {
		this.moisInterditVente = moisInterditVente;
	}

}
