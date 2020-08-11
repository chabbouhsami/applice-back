package com.ettawil.applice.model.dto;

public class ArticleDTO {

	int code;
	String libelle;
	int prixInfPlafond;
	int prixSupPlafond;
	int subventionInfPlafond;
	int subventionSupPlafond;
	int stock = 0;
	int alerteStock;
	boolean actif = true;
	TypeArticleDTO typeArticle;
	String articleEnfant;

	public ArticleDTO(int code, String libelle, int prixInfPlafond, int prixSupPlafond, int subventionInfPlafond,
			int subventionSupPlafond, int stock, int alerteStock, boolean actif, TypeArticleDTO typeArticle,
			String articleEnfant) {
		super();
		this.code = code;
		this.libelle = libelle;
		this.prixInfPlafond = prixInfPlafond;
		this.prixSupPlafond = prixSupPlafond;
		this.subventionInfPlafond = subventionInfPlafond;
		this.subventionSupPlafond = subventionSupPlafond;
		this.stock = stock;
		this.alerteStock = alerteStock;
		this.actif = actif;
		this.typeArticle = typeArticle;
		this.articleEnfant = articleEnfant;
	}

	public ArticleDTO() {
		super();
		// TODO Auto-generated constructor stub
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

	public int getPrixInfPlafond() {
		return prixInfPlafond;
	}

	public void setPrixInfPlafond(int prixInfPlafond) {
		this.prixInfPlafond = prixInfPlafond;
	}

	public int getPrixSupPlafond() {
		return prixSupPlafond;
	}

	public void setPrixSupPlafond(int prixSupPlafond) {
		this.prixSupPlafond = prixSupPlafond;
	}

	public int getSubventionInfPlafond() {
		return subventionInfPlafond;
	}

	public void setSubventionInfPlafond(int subventionInfPlafond) {
		this.subventionInfPlafond = subventionInfPlafond;
	}

	public int getSubventionSupPlafond() {
		return subventionSupPlafond;
	}

	public void setSubventionSupPlafond(int subventionSupPlafond) {
		this.subventionSupPlafond = subventionSupPlafond;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getAlerteStock() {
		return alerteStock;
	}

	public void setAlerteStock(int alerteStock) {
		this.alerteStock = alerteStock;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	public TypeArticleDTO getTypeArticle() {
		return typeArticle;
	}

	public void setTypeArticle(TypeArticleDTO typeArticle) {
		this.typeArticle = typeArticle;
	}

	public String getArticleEnfant() {
		return articleEnfant;
	}

	public void setArticleEnfant(String articleEnfant) {
		this.articleEnfant = articleEnfant;
	}

}
