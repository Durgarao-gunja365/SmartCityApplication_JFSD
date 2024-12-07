package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;
import com.example.demo.model.service;

public interface CustomerService {
	public String customerRegistration(Customer customer);
	
	public Customer checkCustomerLogin(String email,String password);
	public String updateCustomer(Customer customer);
	public Customer getCustomerById(int id);
	public void usdeleteRequest(Long id);
	
	public List<ServiceRequest> findByUsid(String usid);
	

}
