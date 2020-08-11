package com.ettawil.applice.model.dto;

import java.math.BigDecimal;
import java.sql.Date;

import com.ettawil.applice.model.entity.article.Article;
import com.ettawil.applice.model.entity.user.User;

public class ApprovisionnementDTO {

	int code;
	User user;
	Article article;
	int nombre;
	String type;
	Date dateAppro;
	BigDecimal montantTotal;
	BigDecimal montantSigne;
	int quantite;
	String commentaire;

	public ApprovisionnementDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ApprovisionnementDTO(int code, User user, Article article, int nombre, String type, Date dateAppro,
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

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public int getNombre() {
		return nombre;
	}

	public void setNombre(int nombre) {
		this.nombre = nombre;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getDateAppro() {
		return dateAppro;
	}

	public void setDateAppro(Date dateAppro) {
		this.dateAppro = dateAppro;
	}

	public BigDecimal getMontantTotal() {
		return montantTotal;
	}

	public void setMontantTotal(BigDecimal montantTotal) {
		this.montantTotal = montantTotal;
	}

	public BigDecimal getMontantSigne() {
		return montantSigne;
	}

	public void setMontantSigne(BigDecimal montantSigne) {
		this.montantSigne = montantSigne;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

}
