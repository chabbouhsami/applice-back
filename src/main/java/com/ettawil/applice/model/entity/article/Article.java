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
	TypeArticle type;
	double prixInfPlafond;
	double prixSupPlafond;
	double subventionSupPlafond;
	double subventionInfPlafond;
	int quantiteStock;
	int alerteStock;
	boolean pourEnfants = false;
	boolean actif = true;
	
	
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

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "TYPART_COD", nullable = false)
	public TypeArticle getType() {
		return type;
	}

	public void setType(TypeArticle type) {
		this.type = type;
	}

	@Column(name = "ART_PRX_VTE_INF_PLA", nullable = false)
	public double getPrixInfPlafond() {
		return prixInfPlafond;
	}

	public void setPrixInfPlafond(double prixInfPlafond) {
		this.prixInfPlafond = prixInfPlafond;
	}

	@Column(name = "ART_PRX_VTE_SUP_PLA", nullable = false)
	public double getPrixSupPlafond() {
		return prixSupPlafond;
	}

	public void setPrixSupPlafond(double prixSupPlafond) {
		this.prixSupPlafond = prixSupPlafond;
	}

	@Column(name = "ART_SUB_CE_INF_PLA", nullable = false)
	public double getSubventionSupPlafond() {
		return subventionSupPlafond;
	}

	public void setSubventionSupPlafond(double subventionSupPlafond) {
		this.subventionSupPlafond = subventionSupPlafond;
	}

	@Column(name = "ART_SUB_CE_SUP_PLA", nullable = false)
	public double getSubventionInfPlafond() {
		return subventionInfPlafond;
	}

	public void setSubventionInfPlafond(double subventionInfPlafond) {
		this.subventionInfPlafond = subventionInfPlafond;
	}

	@Column(name = "ART_NB_STK", nullable = false)
	public int getQuantiteStock() {
		return quantiteStock;
	}

	public void setQuantiteStock(int quantiteStock) {
		this.quantiteStock = quantiteStock;
	}

	@Column(name = "ART_NB_STK_ALT", nullable = false)
	public int getAlerteStock() {
		return alerteStock;
	}

	public void setAlerteStock(int alerteStock) {
		this.alerteStock = alerteStock;
	}

	@Column(name = "ART_ENF", nullable = false)
	public boolean isPourEnfants() {
		return pourEnfants;
	}

	public void setPourEnfants(boolean pourEnfants) {
		this.pourEnfants = pourEnfants;
	}

	@Column(name = "ART_ACF", nullable = false)
	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}


}
