package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.springframework.stereotype.Component;

@Entity
@Table(name="USER")
@Component
public class User implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	//@NotNull(message="Please enter your name.")
	//@Size(min=10,max=30,message="username must be more than 2 letters")
	@Column(name="name")
	private String name;
	
	//@NotNull(message="Please enter your password.")
	//@Size(min=10,max=12,message="password must be more than 2 letters")
	@Column(name="password")
	private String password;
	
	//@NotNull(message="Please enter your mail.")
	//@Size(min=10,max=30,message="mail must be more than 2 letters")
	@Column(name="mail")
	private String mail;
	
	//@Pattern(regexp="[\\d] {10}",message="plz e digits")
	//@NotNull(message="Please enter your phoneno.")
	//@Size(min=8,max=10,message="phone must be between 8 to 10 digits")
	@Column(name="phoneno")
	private String phoneno;
	
	//@NotNull(message="Please enter your addr.")
	//@Size(min=10,max=50,message="address must be more than 30 numbers")
	@Column(name="addr")
	private String addr;	
	
	//@NotNull(message="Please enter zipcode.")
	//@Size(min=10,max=15,message="zipcode must be more than 10 numbers")
	@Column(name="zipcode")
	private String zipcode;
	
	@NotNull
	@Column(name="role")
	private String role="ROLE_USER";
	
	private boolean status=true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	}
