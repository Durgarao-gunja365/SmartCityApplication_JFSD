package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class email {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String userEmail;
    private String requestDetails;
    private String adminReply;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getRequestDetails() {
		return requestDetails;
	}
	public void setRequestDetails(String requestDetails) {
		this.requestDetails = requestDetails;
	}
	public String getAdminReply() {
		return adminReply;
	}
	public void setAdminReply(String adminReply) {
		this.adminReply = adminReply;
	}
	@Override
	public String toString() {
		return "email [id=" + id + ", userEmail=" + userEmail + ", requestDetails=" + requestDetails + ", adminReply="
				+ adminReply + "]";
	}

    
}
