package com.ettawil.applice.model.dto;

public class ArticleDTO {
	int code;
	String libelle;
	TypeArticleDTO type;
	double prixInfPlafond;
	double prixSupPlafond;
	double subventionSupPlafond;
	double subventionInfPlafond;
	int quantiteStock;
	int alerteStock;
	boolean pourEnfants = false;
	boolean actif = true;

	public ArticleDTO(int code, String libelle, TypeArticleDTO type, double prixInfPlafond, double prixSupPlafond,
			double subventionSupPlafond, double subventionInfPlafond, int quantiteStock, int alerteStock,
			boolean pourEnfants, boolean actif) {
		super();
		this.code = code;
		this.libelle = libelle;
		this.type = type;
		this.prixInfPlafond = prixInfPlafond;
		this.prixSupPlafond = prixSupPlafond;
		this.subventionSupPlafond = subventionSupPlafond;
		this.subventionInfPlafond = subventionInfPlafond;
		this.quantiteStock = quantiteStock;
		this.alerteStock = alerteStock;
		this.pourEnfants = pourEnfants;
		this.actif = actif;
	}

	public ArticleDTO() {
		super();
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

	public TypeArticleDTO getType() {
		return type;
	}

	public void setType(TypeArticleDTO type) {
		this.type = type;
	}

	public double getPrixInfPlafond() {
		return prixInfPlafond;
	}

	public void setPrixInfPlafond(double prixInfPlafond) {
		this.prixInfPlafond = prixInfPlafond;
	}

	public double getPrixSupPlafond() {
		return prixSupPlafond;
	}

	public void setPrixSupPlafond(double prixSupPlafond) {
		this.prixSupPlafond = prixSupPlafond;
	}

	public double getSubventionSupPlafond() {
		return subventionSupPlafond;
	}

	public void setSubventionSupPlafond(double subventionSupPlafond) {
		this.subventionSupPlafond = subventionSupPlafond;
	}

	public double getSubventionInfPlafond() {
		return subventionInfPlafond;
	}

	public void setSubventionInfPlafond(double subventionInfPlafond) {
		this.subventionInfPlafond = subventionInfPlafond;
	}

	public int getQuantiteStock() {
		return quantiteStock;
	}

	public void setQuantiteStock(int quantiteStock) {
		this.quantiteStock = quantiteStock;
	}

	public int getAlerteStock() {
		return alerteStock;
	}

	public void setAlerteStock(int alerteStock) {
		this.alerteStock = alerteStock;
	}

	public boolean isPourEnfants() {
		return pourEnfants;
	}

	public void setPourEnfants(boolean pourEnfants) {
		this.pourEnfants = pourEnfants;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}
}
