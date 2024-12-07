package com.example.demo.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "customer_table")
public class Customer {
	
	@Id
	@Column(name = "customer_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "customer_name",nullable = false,length = 100)
	private String name;
	
	@Column(name = "customer_gender",nullable = false,length = 10)
	private String gender;
	
	@Column(name = "customer_dateofBirth",nullable = false)
	private String dob;
	
	@Column(name = "customer_email",nullable = false,unique = true,length = 100)
	private String email;
	
	@Column(name = "customer_password",nullable = false,length = 100)
	private String password;
	
	@Column(name = "customer_location",nullable = false)
	private String location;
	
	@Column(name = "customer_contact",nullable = false,length = 20)
	private String contact;
	

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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", gender=" + gender + ", dob=" + dob + ", email=" + email
				+ ", password=" + password + ", location=" + location + ", contact=" + contact + "]";
	}
	

	
}
