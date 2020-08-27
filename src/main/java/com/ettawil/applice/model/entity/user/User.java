package com.ettawil.applice.model.entity.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CE_USR")
public class User {

	int code;
	String password;
	String lastName;
	String firstName;
	String email;
	String right;
	boolean force;
	boolean actif;

	public User() {
		super();
	}

	public User(int code, String password, String lastName, String firstName, String email, String right,
			boolean force, boolean actif) {
		super();
		this.code = code;
		this.password = password;
		this.lastName = lastName;
		this.firstName = firstName;
		this.email = email;
		this.right = right;
		this.force = force;
		this.actif = actif;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "USR_COD", nullable = false)
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Column(name = "USR_MDP", nullable = false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "USR_NOM", nullable = false)
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "USR_PRE", nullable = false)
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "USR_EMA", nullable = false)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "USR_DRT", nullable = false)
	public String getRight() {
		return right;
	}

	public void setRight(String right) {
		this.right = right;
	}

	@Column(name = "USR_FOR")
	public boolean isForce() {
		return force;
	}

	public void setForce(boolean force) {
		this.force = force;
	}

	@Column(name = "USR_ACF")
	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

}
