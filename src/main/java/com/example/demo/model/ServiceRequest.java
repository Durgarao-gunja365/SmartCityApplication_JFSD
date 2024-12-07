package com.example.demo.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Service_Requests")
public class ServiceRequest {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "Customer_id_unique",nullable = false)
	private String usid;
	
	

	@Column(name = "name",nullable = false)
	private String name;
	
	@Column(name = "contact", nullable = false)
	private String contact;
	
	 @Column(name = "request_type", nullable = false)
	    private String requestType;

	 @Column(name = "location", nullable = false)
	    private String location;
	 
	
	 
	 
	

		public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

		@Column(name = "description", nullable = false, length = 1000)
	    private String description;

	    @Column(name = "priority", nullable = false)
	    private String priority;

	    
	    @Column(name = "time_requested", nullable = false)
	    private String date;

	
	    
		

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getContact() {
			return contact;
		}

		public void setContact(String contact) {
			this.contact = contact;
		}

		public String getRequestType() {
			return requestType;
		}

		public void setRequestType(String requestType) {
			this.requestType = requestType;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getUsid() {
			return usid;
		}

		public void setUsid(String usid) {
			this.usid = usid;
		}

		public String getPriority() {
			return priority;
		}

		public void setPriority(String priority) {
			this.priority = priority;
		}

		

		

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}

		@Override
		public String toString() {
			return "ServiceRequest [id=" + id + ", usid=" + usid + ", name=" + name + ", contact=" + contact
					+ ", requestType=" + requestType + ", location=" + location + ", description=" + description
					+ ", priority=" + priority + ", date=" + date + "]";
		}


		
		

}
	    
		

