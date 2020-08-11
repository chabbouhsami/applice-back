package com.ettawil.applice.model.entity.vente;

import java.math.BigDecimal;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.ettawil.applice.model.entity.article.Article;
import com.ettawil.applice.model.entity.salarie.Salarie;
import com.ettawil.applice.model.entity.user.User;

@Entity
@Table(name = "CE_VENTE")
public class Vente {

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

	public Vente() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Vente(int code, Article article, Salarie salarie, User vendeur, int nombre, int montant, Date date,
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

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "VTE_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ART_COD", nullable = false)
	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "SAL_COD", nullable = false)
	public Salarie getSalarie() {
		return salarie;
	}

	public void setSalarie(Salarie salarie) {
		this.salarie = salarie;
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "USR_COD", nullable = false)
	public User getVendeur() {
		return vendeur;
	}

	public void setVendeur(User vendeur) {
		this.vendeur = vendeur;
	}

	@Column(name = "VTE_NB", nullable = false)
	public int getNombre() {
		return nombre;
	}

	public void setNombre(int nombre) {
		this.nombre = nombre;
	}

	@Column(name = "VTE_MNT", nullable = false)
	public int getMontant() {
		return montant;
	}

	public void setMontant(int montant) {
		this.montant = montant;
	}

	@Column(name = "VTE_DAT", nullable = false)
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Column(name = "VTE_MOI", nullable = false)
	public int getVenteMois() {
		return venteMois;
	}

	public void setVenteMois(int venteMois) {
		this.venteMois = venteMois;
	}

	@Column(name = "VTE_AN", nullable = false)
	public String getVenteAnne() {
		return venteAnne;
	}

	public void setVenteAnne(String venteAnne) {
		this.venteAnne = venteAnne;
	}

	@Column(name = "VTE_TYP", nullable = false)
	public String getTypeVente() {
		return typeVente;
	}

	public void setTypeVente(String typeVente) {
		this.typeVente = typeVente;
	}

	@Column(name = "VTE_SUB", nullable = false)
	public BigDecimal getSubvention() {
		return subvention;
	}

	public void setSubvention(BigDecimal subvention) {
		this.subvention = subvention;
	}

	@Column(name = "VTE_COM", nullable = false)
	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	@Column(name = "VTE_QTE_SIG", nullable = false)
	public String getQuantiteSigne() {
		return quantiteSigne;
	}

	public void setQuantiteSigne(String quantiteSigne) {
		this.quantiteSigne = quantiteSigne;
	}

	@Column(name = "VTE_MNT_SIG", nullable = false)
	public String getMontantSigne() {
		return montantSigne;
	}

	public void setMontantSigne(String montantSigne) {
		this.montantSigne = montantSigne;
	}

}
