package com.ettawil.applice.model.dto;

public class TypeArticleDTO {
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

	public TypeArticleDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TypeArticleDTO(int code, String libelle, int quantiteMois, int quantiteAn, boolean gestionStock,
			boolean actif, double montantMois, double montantAn, int anciennete, String moisInterditVente) {
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

	public int getQuantiteMois() {
		return quantiteMois;
	}

	public void setQuantiteMois(int quantiteMois) {
		this.quantiteMois = quantiteMois;
	}

	public int getQuantiteAn() {
		return quantiteAn;
	}

	public void setQuantiteAn(int quantiteAn) {
		this.quantiteAn = quantiteAn;
	}

	public boolean isGestionStock() {
		return gestionStock;
	}

	public void setGestionStock(boolean gestionStock) {
		this.gestionStock = gestionStock;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	public double getMontantMois() {
		return montantMois;
	}

	public void setMontantMois(double montantMois) {
		this.montantMois = montantMois;
	}

	public double getMontantAn() {
		return montantAn;
	}

	public void setMontantAn(double montantAn) {
		this.montantAn = montantAn;
	}

	public int getAnciennete() {
		return anciennete;
	}

	public void setAnciennete(int anciennete) {
		this.anciennete = anciennete;
	}

	public String getMoisInterditVente() {
		return moisInterditVente;
	}

	public void setMoisInterditVente(String moisInterditVente) {
		this.moisInterditVente = moisInterditVente;
	}
}
