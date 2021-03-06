package com.paweljarosz.trac.data.entities.driver;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ADDRESS")
public class Address {
	
	@Id
	@Column(name="ADDRESS_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long addressId;
	
	@Column(name="STREET")
	private String street;
	
	@Column(name="HOME_NUMBER")
	private String number;
	
	@Column(name="CITY")
	private String city;
	
	@Column(name="POST_CODE")
	private String post;

	
	
	
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public Long getAddressId() {
		return addressId;
	}
}
