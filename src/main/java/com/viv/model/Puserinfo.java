package com.viv.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Puserinfo {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userid;
	@NotNull
	private String username;
	@NotNull
	private String password;
	
	public Puserinfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Puserinfo(int userid, @NotNull String username, @NotNull String password) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Puserinfo [userid=" + userid + ", username=" + username + ", password=" + password + "]";
	}
	
	
}
