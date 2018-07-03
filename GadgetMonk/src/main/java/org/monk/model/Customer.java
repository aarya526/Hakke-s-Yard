package org.monk.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.Valid;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
 
	@NotEmpty(message = "firstname is mandatory")
	private String firstname;

	@NotEmpty(message = "lastname is mandatory")
	private String lastname;

	@NotEmpty(message = "phonenumber is mandatory")
	private String phonenumber;

	@Valid
	@OneToOne(cascade=CascadeType.ALL)
    private BillingAddress billingaddress;

	@Valid
	@OneToOne(cascade=CascadeType.ALL)
    private ShippingAddress shippingaddress;

	@Valid
	@OneToOne(cascade=CascadeType.ALL)
    private User user;

	public int getId() {
	return id;

	}

	public void setId(int id) {
	this.id = id;

	}

	public String getFirstname() {
	return firstname;

	}

	public void setFirstname(String firstname) {
	this.firstname = firstname;

	}

	public String getLastname() {
	return lastname;

	}

	public void setLastname(String lastname) {
	this.lastname = lastname;

	}

	public String getPhonenumber() {
	return phonenumber;

	}

	public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;

	}

	public BillingAddress getBillingaddress() {
	return billingaddress;

	}

	public void setBillingaddress(BillingAddress billingaddress) {
	this.billingaddress = billingaddress;

	}

	public ShippingAddress getShippingaddress() {
	return shippingaddress;

	}

	public void setShippingaddress(ShippingAddress shippingaddress) {
	this.shippingaddress = shippingaddress;

	}

	public User getUser() {
	return user;

	}

	public void setUser(User user) {
	this.user = user;

	}

}


	

