package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{
	
	@Query("select a from Admin a where a.username=?1 and a.password=?2")
	public Admin checkAdminLogin(String uname,String pwd);

}
