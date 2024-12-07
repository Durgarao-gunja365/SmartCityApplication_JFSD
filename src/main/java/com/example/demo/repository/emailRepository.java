package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.email;

public interface emailRepository extends JpaRepository<email, Long>{

}
