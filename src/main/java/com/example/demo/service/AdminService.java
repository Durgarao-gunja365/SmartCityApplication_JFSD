package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;

public interface AdminService {
	
	public List<Customer> viewAllCustomer();
	public Admin checkAdminLogin(String uname,String pwd);
	public Long customercount();
	public List<ServiceRequest>viewRequest();
	public Long requestcount();
	public void deleteRequestById(Long id);

}
