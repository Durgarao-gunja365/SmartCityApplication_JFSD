package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>{
	@Query("select c from Customer c where c.email=?1 and c.password=?2")
	public Customer checkCustomerLogin(String email,String password);

	public Customer findByEmail(String email);
	 

}
