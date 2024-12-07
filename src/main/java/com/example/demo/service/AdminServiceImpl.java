package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.CustomerRepository;
import com.example.demo.repository.ServiceRequestRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private CustomerRepository customerRepo;
	
	@Autowired
	private AdminRepository adminRepo;
	
	@Autowired
	private ServiceRequestRepository srr;
	
	@Override
	public List<Customer> viewAllCustomer() {
		
		return customerRepo.findAll();
	}
	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		
		return adminRepo.checkAdminLogin(uname, pwd);
	}
	@Override
	public Long customercount() {
		return customerRepo.count();
	}
	@Override
	public List<ServiceRequest> viewRequest() {
		
		return srr.findAll();
	}
	
	public Long requestcount()
	{
		return srr.count();
	}
	@Override
	public void deleteRequestById(Long id) {
	srr.deleteById(id);
		
	}

}
