package com.viv.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity

public class Invoice {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	    private int invoiceNumber;
	    private String invoiceDate;
	    private String dueDate;
	    private String customerName;
	    private String address;
	    private String email;
	    @OneToMany(mappedBy = "Invoiceitem",cascade = CascadeType.ALL)
	    private List<InvoiceItem> items;
	    private double totalAmount;
		public Invoice() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Invoice(int invoiceNumber, String invoiceDate, String dueDate, String customerName, String address,
				String email, List<InvoiceItem> items, double totalAmount) {
			super();
			this.invoiceNumber = invoiceNumber;
			this.invoiceDate = invoiceDate;
			this.dueDate = dueDate;
			this.customerName = customerName;
			this.address = address;
			this.email = email;
			this.items = items;
			this.totalAmount = totalAmount;
		}
		public int getInvoiceNumber() {
			return invoiceNumber;
		}
		public void setInvoiceNumber(int invoiceNumber) {
			this.invoiceNumber = invoiceNumber;
		}
		public String getInvoiceDate() {
			return invoiceDate;
		}
		public void setInvoiceDate(String invoiceDate) {
			this.invoiceDate = invoiceDate;
		}
		public String getDueDate() {
			return dueDate;
		}
		public void setDueDate(String dueDate) {
			this.dueDate = dueDate;
		}
		public String getCustomerName() {
			return customerName;
		}
		public void setCustomerName(String customerName) {
			this.customerName = customerName;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public List<InvoiceItem> getItems() {
			return items;
		}
		public void setItems(List<InvoiceItem> items) {
			this.items = items;
		}
		public double getTotalAmount() {
			return totalAmount;
		}
		public void setTotalAmount(double totalAmount) {
			this.totalAmount = totalAmount;
		}
		@Override
		public String toString() {
			return "Invoice [invoiceNumber=" + invoiceNumber + ", invoiceDate=" + invoiceDate + ", dueDate=" + dueDate
					+ ", customerName=" + customerName + ", address=" + address + ", email=" + email + ", items="
					+ items + ", totalAmount=" + totalAmount + "]";
		}

	    
	    
	}


