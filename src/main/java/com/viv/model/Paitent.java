package com.viv.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.UniqueElements;

@Entity
public class Paitent {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int pid;
	private String pimg;
	private String fname;
	private String lname;
	private String dob;
	private String blood_g;
	
	private String email;
	private String m_no;
	private String address;
	private String city;
	private String state;
	private String zipcode;
	private String country;
	public Paitent() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Paitent(int pid, String pimg, String fname, String lname, String dob, String blood_g, String email,
			String m_no, String address, String city, String state, String zipcode, String country) {
		super();
		this.pid = pid;
		this.pimg = pimg;
		this.fname = fname;
		this.lname = lname;
		this.dob = dob;
		this.blood_g = blood_g;
		this.email = email;
		this.m_no = m_no;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.country = country;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getBlood_g() {
		return blood_g;
	}
	public void setBlood_g(String blood_g) {
		this.blood_g = blood_g;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMno() {
		return m_no;
	}
	public void setMno(String m_no) {
		this.m_no = m_no;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		return "Paitent [pid=" + pid + ", pimg=" + pimg + ", fname=" + fname + ", lname=" + lname + ", dob="
				+ dob + ", blood_g=" + blood_g + ", email=" + email + ", m_no=" + m_no + ", address=" + address
				+ ", city=" + city + ", state=" + state + ", zipcode=" + zipcode + ", country=" + country + "]";
	}
	
	
}

