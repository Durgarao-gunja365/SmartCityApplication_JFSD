package com.example.demo.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.model.service;

public class ServiceService {
	@Autowired
    private ServiceRepository serrepo;

    public void addService(service service) {
        serrepo.save(service);
    }

    public List<service> getServicesByCategory(String category) {
        return serrepo.findByCategory(category);
    }

    public List<service> getAllServices() {
        return serrepo.findAll();
    }

}
