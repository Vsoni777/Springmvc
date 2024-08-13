package com.viv.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
public class Appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int apid;
	

	private int docid;
	private String fname;
	private String lname;
	private String m_no;
	@DateTimeFormat(iso = ISO.DATE,pattern ="mm-dd-yyyy")
	private String appdate;
	private String status;
private String sysmptoms;
public Appointment() {
	super();
	// TODO Auto-generated constructor stub
}
public Appointment(int apid, Doctorfrom doctor,int docd, String fname, String lname,int docid ,String m_no, String appdate, String status,
		String sysmptoms) {
	super();
	this.apid = apid;
	this.docid=docid;
	this.fname = fname;
	this.lname = lname;
	this.docid=docid;
	this.m_no = m_no;
	this.appdate = appdate;
	this.status = status;
	this.sysmptoms = sysmptoms;
}

public int getApid() {
	return apid;
}
public void setApid(int apid) {
	this.apid = apid;
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

public int getDocid() {
	return docid;
}
public void setDocid(int docid) {
	this.docid = docid;
}
public String getM_no() {
	return m_no;
}
public void setM_no(String m_no) {
	this.m_no = m_no;
}
public String getAppdate() {
	return appdate;
}
public void setAppdate(String appdate) {
	this.appdate = appdate;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getSysmptoms() {
	return sysmptoms;
}
public void setSysmptoms(String sysmptoms) {
	this.sysmptoms = sysmptoms;
}
@Override
public String toString() {
	return "Appointment [apid=" + apid + ", docid=" + docid + ", fname=" + fname + ", lname=" + lname + ", m_no="
			+ m_no + ", appdate=" + appdate + ", status=" + status + ", sysmptoms=" + sysmptoms + "]";
}

	


	

}
