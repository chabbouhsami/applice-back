package com.ettawil.applice.model.entity.article;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CE_ART")
public class Article {

	int code;
	String libelle;
	int prixInfPlafond;
	int prixSupPlafond;
	int subventionInfPlafond;
	int subventionSupPlafond;
	int stock = 0;
	int alerteStock;
	boolean actif = true;
	TypeArticle typeArticle;
	String articleEnfant;

	public Article(int code, String libelle, int prixInfPlafond, int prixSupPlafond, int subventionInfPlafond,
			int subventionSupPlafond, int stock, int alerteStock, boolean actif, TypeArticle typeArticle,
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

	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ART_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Column(name = "ART_LIB", nullable = false)
	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	@Column(name = "ART_PRX_VTE_INF_PLA", nullable = false)
	public int getPrixInfPlafond() {
		return prixInfPlafond;
	}

	public void setPrixInfPlafond(int prixInfPlafond) {
		this.prixInfPlafond = prixInfPlafond;
	}

	@Column(name = "ART_PRX_VTE_SUP_PLA", nullable = false)
	public int getPrixSupPlafond() {
		return prixSupPlafond;
	}

	public void setPrixSupPlafond(int prixSupPlafond) {
		this.prixSupPlafond = prixSupPlafond;
	}

	@Column(name = "ART_SUB_CE_INF_PLA", nullable = false)
	public int getSubventionInfPlafond() {
		return subventionInfPlafond;
	}

	public void setSubventionInfPlafond(int subventionInfPlafond) {
		this.subventionInfPlafond = subventionInfPlafond;
	}

	@Column(name = "ART_SUB_CE_SUP_PLA", nullable = false)
	public int getSubventionSupPlafond() {
		return subventionSupPlafond;
	}

	public void setSubventionSupPlafond(int subventionSupPlafond) {
		this.subventionSupPlafond = subventionSupPlafond;
	}

	@Column(name = "ART_NB_STOCK", nullable = false)
	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Column(name = "ART_NB_STOCK_ALT", nullable = false)
	public int getAlerteStock() {
		return alerteStock;
	}

	public void setAlerteStock(int alerteStock) {
		this.alerteStock = alerteStock;
	}

	@Column(name = "ART_ACF", nullable = false)
	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "TYPART_COD", nullable = false)
	public TypeArticle getTypeArticle() {
		return typeArticle;
	}

	public void setTypeArticle(TypeArticle typeArticle) {
		this.typeArticle = typeArticle;
	}

	@Column(name = "ART_ENF", nullable = false)
	public String getArticleEnfant() {
		return articleEnfant;
	}

	public void setArticleEnfant(String articleEnfant) {
		this.articleEnfant = articleEnfant;
	}

}
