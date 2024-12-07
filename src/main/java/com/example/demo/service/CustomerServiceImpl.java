package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;
import com.example.demo.repository.CustomerRepository;
import com.example.demo.repository.ServiceRequestRepository;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerRepository customerRepo;
	
	@Autowired
	private ServiceRequestRepository srr;
	
	public String customerRegistration(Customer customer)
	{
		 Customer existingCustomer = customerRepo.findByEmail(customer.getEmail());
	        if (existingCustomer != null) {
	            return "User with this email already exists!";
	        }

	        // Save customer if email doesn't exist
	        customerRepo.save(customer);
	        return "Customer registered successfully!";
	}

	@Override
	public Customer checkCustomerLogin(String email, String password) {
		return customerRepo.checkCustomerLogin(email, password);
	}

	@Override
	 public String updateCustomer(Customer customer) {
        if (customerRepo.existsById(customer.getId())) {
            customerRepo.save(customer);
            return "Customer details updated successfully!";
        }
        return "Customer not found!";
    }

	public Customer getCustomerById(int id) {
        return customerRepo.findById(id)
            .orElse(null); // Returns the Customer if found, otherwise null
    }

	@Override
	public void usdeleteRequest(Long id) {
		srr.deleteById(id);
		
	}

	@Override
	public List<ServiceRequest> findByUsid(String usid) {
		srr.findByUsid(usid);
		return null;
	}


	
	
	
}
