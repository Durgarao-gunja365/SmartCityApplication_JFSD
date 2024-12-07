package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.service;


public interface ServiceRepository extends JpaRepository<service, Long> {
    List<service> findByCategory(String category);
}
