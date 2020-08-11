package com.ettawil.applice.model.dto;

import java.math.BigDecimal;
import java.sql.Date;

import com.ettawil.applice.model.entity.article.Article;
import com.ettawil.applice.model.entity.salarie.Salarie;
import com.ettawil.applice.model.entity.user.User;

public class VenteDTO {

	int code;
	Article article;
	Salarie salarie;
	User vendeur;
	int nombre;
	int montant;
	Date date;
	int venteMois;
	String venteAnne;
	String typeVente;
	BigDecimal subvention;
	String commentaire;
	String quantiteSigne;
	String montantSigne;

	public VenteDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VenteDTO(int code, Article article, Salarie salarie, User vendeur, int nombre, int montant, Date date,
			int venteMois, String venteAnne, String typeVente, BigDecimal subvention, String commentaire,
			String quantiteSigne, String montantSigne) {
		super();
		this.code = code;
		this.article = article;
		this.salarie = salarie;
		this.vendeur = vendeur;
		this.nombre = nombre;
		this.montant = montant;
		this.date = date;
		this.venteMois = venteMois;
		this.venteAnne = venteAnne;
		this.typeVente = typeVente;
		this.subvention = subvention;
		this.commentaire = commentaire;
		this.quantiteSigne = quantiteSigne;
		this.montantSigne = montantSigne;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Salarie getSalarie() {
		return salarie;
	}

	public void setSalarie(Salarie salarie) {
		this.salarie = salarie;
	}

	public User getVendeur() {
		return vendeur;
	}

	public void setVendeur(User vendeur) {
		this.vendeur = vendeur;
	}

	public int getNombre() {
		return nombre;
	}

	public void setNombre(int nombre) {
		this.nombre = nombre;
	}

	public int getMontant() {
		return montant;
	}

	public void setMontant(int montant) {
		this.montant = montant;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getVenteMois() {
		return venteMois;
	}

	public void setVenteMois(int venteMois) {
		this.venteMois = venteMois;
	}

	public String getVenteAnne() {
		return venteAnne;
	}

	public void setVenteAnne(String venteAnne) {
		this.venteAnne = venteAnne;
	}

	public String getTypeVente() {
		return typeVente;
	}

	public void setTypeVente(String typeVente) {
		this.typeVente = typeVente;
	}

	public BigDecimal getSubvention() {
		return subvention;
	}

	public void setSubvention(BigDecimal subvention) {
		this.subvention = subvention;
	}

	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public String getQuantiteSigne() {
		return quantiteSigne;
	}

	public void setQuantiteSigne(String quantiteSigne) {
		this.quantiteSigne = quantiteSigne;
	}

	public String getMontantSigne() {
		return montantSigne;
	}

	public void setMontantSigne(String montantSigne) {
		this.montantSigne = montantSigne;
	}


}
