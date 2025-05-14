package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.model.AdminRegDetails;

@Repository
@Component
public interface AdminRegisterRepo extends JpaRepository<AdminRegDetails,Long>{
	AdminRegDetails findByAdminUsernameAndAdminPassword(String username, String password);
		
}
