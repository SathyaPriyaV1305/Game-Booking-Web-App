package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.AdminRegDetails;
import com.model.RegisterDetails;
import com.repository.AdminRegisterRepo;

@Service
public class AdminRegService {
	
	@Autowired
	AdminRegisterRepo adminRegisterRepo;
	
	public List<AdminRegDetails> getAllAdminRegDetails() {
        return adminRegisterRepo.findAll();  
    }

    public void saveAdminRegDetail(AdminRegDetails registerDetails) {
    	
    	adminRegisterRepo.save(registerDetails); 
    }

    public AdminRegDetails getAdminRegDetailtById(Long id) {
        return adminRegisterRepo.findById(id).orElse(null);  
    }

    public void deleteAdminRegDetail(Long id) {
    	adminRegisterRepo.deleteById(id);
    }
    
    public AdminRegDetails login(String adminUsername, String adminPassword) {
        return adminRegisterRepo.findByAdminUsernameAndAdminPassword(adminUsername, adminPassword);
    }
}
