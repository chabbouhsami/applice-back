package com.ettawil.applice.model.entity.approvisionnement;

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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.ettawil.applice.model.entity.article.Article;
import com.ettawil.applice.model.entity.user.User;

@Entity
@Table(name = "CE_APPRO")
public class Approvisionnement {

	int code;
	User user;
	Article article;
	int nombre;
	String type;
	@Temporal(TemporalType.DATE)
	Date dateAppro;
	BigDecimal montantTotal;
	BigDecimal montantSigne;
	int quantite;
	String commentaire;

	public Approvisionnement() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Approvisionnement(int code, User user, Article article, int nombre, String type, Date dateAppro,
			BigDecimal montantTotal, BigDecimal montantSigne, int quantite, String commentaire) {
		super();
		this.code = code;
		this.user = user;
		this.article = article;
		this.nombre = nombre;
		this.type = type;
		this.dateAppro = dateAppro;
		this.montantTotal = montantTotal;
		this.montantSigne = montantSigne;
		this.quantite = quantite;
		this.commentaire = commentaire;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "APPRO_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "USR_COD", nullable = false)
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ART_COD", nullable = false)
	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	@Column(name = "APPRO_NB", nullable = false)
	public int getNombre() {
		return nombre;
	}

	public void setNombre(int nombre) {
		this.nombre = nombre;
	}

	@Column(name = "APPRO_TYP", nullable = false)
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "APPRO_DAT", nullable = false)
	public Date getDateAppro() {
		return dateAppro;
	}

	public void setDateAppro(Date dateAppro) {
		this.dateAppro = dateAppro;
	}

	@Column(name = "APPRO_MNT_TOT", nullable = false)
	public BigDecimal getMontantTotal() {
		return montantTotal;
	}

	public void setMontantTotal(BigDecimal montantTotal) {
		this.montantTotal = montantTotal;
	}

	@Column(name = "APPRO_MNT_SIG", nullable = true)
	public BigDecimal getMontantSigne() {
		return montantSigne;
	}

	public void setMontantSigne(BigDecimal montantSigne) {
		this.montantSigne = montantSigne;
	}

	@Column(name = "APPRO_QTE_SIG", nullable = false)
	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	@Column(name = "APPRO_COM", nullable = true)
	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

}
