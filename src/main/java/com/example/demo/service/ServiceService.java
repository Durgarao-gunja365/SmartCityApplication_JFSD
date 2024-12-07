package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.model.service;
import com.example.demo.repository.ServiceRepository;

import org.springframework.stereotype.Service;
@Service
public class ServiceService {

    @Autowired
    private ServiceRepository serviceRepository;

    public void addService(service service) {
        serviceRepository.save(service);
    }

    public List<service> getServicesByCategory(String category) {
        return serviceRepository.findByCategory(category);
    }

    public List<service> getAllServices() {
        return serviceRepository.findAll();
    }

	public void deleteService(Long id) {
		serviceRepository.deleteById(id);
		
	}

	public service getServiceById(Long id) {
		// TODO Auto-generated method stub
		 return serviceRepository.findById(id).orElse(null);
	}

	public void updateService(service updatedService) {
		serviceRepository.save(updatedService);
	}
}