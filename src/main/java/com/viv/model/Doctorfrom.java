package com.viv.model;

import java.time.LocalDate;

import javax.annotation.processing.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
@Entity
public class Doctorfrom {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int did;
	private String profile;
	
	private String email;
	private String fname;
	private String lname;
	private String pno;
	private String gender;
	private String biography;
	private String cname;
	private String cadd;
	@DateTimeFormat(iso = ISO.DATE,pattern ="mm-dd-yyyy")
	private String dob;
	private String address_line1;
	private String address_line2;
	private String city;
	private String state;
	private String country;
	private String pcode;
	private String degree;
	private String c_name;
	private String c_year;
	private String h_name;
	@DateTimeFormat(pattern ="mm-dd-yyyy" )
	private String s_date;
	@DateTimeFormat(pattern ="mm-dd-yyyy" )
	private String l_date;
	private String designation;
	private String service;
	private String specialist;
	
	public Doctorfrom() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Doctorfrom(int did, String profile, String email, String fname, String lname, String pno, String gender,
			String biography, String cname, String cadd, String dob, String address_line1, String address_line2,
			String city, String state, String country, String pcode, String degree, String c_name, String c_year,
			String h_name, String s_date, String l_date, String designation, String service, String specialist) {
		super();
		this.did = did;
		this.profile = profile;
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.pno = pno;
		this.gender = gender;
		this.biography = biography;
		this.cname = cname;
		this.cadd = cadd;
		this.dob = dob;
		this.address_line1 = address_line1;
		this.address_line2 = address_line2;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pcode = pcode;
		this.degree = degree;
		this.c_name = c_name;
		this.c_year = c_year;
		this.h_name = h_name;
		this.s_date = s_date;
		this.l_date = l_date;
		this.designation = designation;
		this.service = service;
		this.specialist = specialist;
		
	}

	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}



	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBiography() {
		return biography;
	}
	public void setBiography(String biography) {
		this.biography = biography;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCadd() {
		return cadd;
	}
	public void setCadd(String cadd) {
		this.cadd = cadd;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress_line1() {
		return address_line1;
	}
	public void setAddress_line1(String address_line1) {
		this.address_line1 = address_line1;
	}
	public String getAddress_line2() {
		return address_line2;
	}
	public void setAddress_line2(String address_line2) {
		this.address_line2 = address_line2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_year() {
		return c_year;
	}
	public void setC_year(String c_year) {
		this.c_year = c_year;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getL_date() {
		return l_date;
	}
	public void setL_date(String l_date) {
		this.l_date = l_date;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}

	@Override
	public String toString() {
		return "Doctorfrom [did=" + did + ", profile=" + profile + ", email=" + email + ", fname=" + fname + ", lname="
				+ lname + ", pno=" + pno + ", gender=" + gender + ", biography=" + biography + ", cname=" + cname
				+ ", cadd=" + cadd + ", dob=" + dob + ", address_line1=" + address_line1 + ", address_line2="
				+ address_line2 + ", city=" + city + ", state=" + state + ", country=" + country + ", pcode=" + pcode
				+ ", degree=" + degree + ", c_name=" + c_name + ", c_year=" + c_year + ", h_name=" + h_name
				+ ", s_date=" + s_date + ", l_date=" + l_date + ", designation=" + designation + ", service=" + service
				+ ", specialist=" + specialist + "]";
	}
	
	
	
	
	
	
}
