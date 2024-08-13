package com.viv.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity

public class InvoiceItem {
	@Id
	private int id;
    private String description;
    private int quantity;
    private double unitPrice;
    @ManyToOne
    @JoinColumn(name="invoiceNumber")
    private Invoice in;
	public InvoiceItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	public InvoiceItem(int id, String description, int quantity, double unitPrice, Invoice in) {
		super();
		this.id = id;
		this.description = description;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.in = in;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Invoice getIn() {
		return in;
	}
	public void setIn(Invoice in) {
		this.in = in;
	}
	@Override
	public String toString() {
		return "InvoiceItem [id=" + id + ", description=" + description + ", quantity=" + quantity + ", unitPrice="
				+ unitPrice + ", in=" + in + "]";
	}
 
    
}

