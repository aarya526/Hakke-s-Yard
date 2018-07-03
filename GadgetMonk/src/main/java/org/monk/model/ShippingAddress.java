package org.monk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress {


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	
	private String apartmentnumber;
	
	private String streetname;

	private String city;

	private String state;

	private String country;

	private String zipcode;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@NotEmpty(message = "apartmentnumber is mandatory")
	public String getApartmentnumber() {
		return apartmentnumber;
	}

	public void setApartmentnumber(String apartmentnumber) {
		this.apartmentnumber = apartmentnumber;
	}

	@NotEmpty(message = "streetname is mandatory")
	public String getStreetname() {
		return streetname;
	}

	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}

	@NotEmpty(message = "city is mandatory")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@NotEmpty(message = "state is mandatory")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@NotEmpty(message = "country is mandatory")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@NotEmpty(message = "zipcode is mandatory")
	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
}
