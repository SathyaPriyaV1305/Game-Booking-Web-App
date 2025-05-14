package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.RegisterDetails;
import com.repository.RegisterRepo;

@Service
public class RegisterService {
	
	@Autowired
	private RegisterRepo registerRepo;

	public List<RegisterDetails> getAllRegDetails() {
        return registerRepo.findAll();  
    }

    public void saveRegDetail(RegisterDetails registerDetails) {
    	registerRepo.save(registerDetails); 
    }

    public RegisterDetails getRegDetailtById(Long id) {
        return registerRepo.findById(id).orElse(null);  
    }

    public void deletRegDetail(Long id) {
    	registerRepo.deleteById(id);  
    }
    
    public RegisterDetails login(String username, String password) {
        return registerRepo.findByUsernameAndPassword(username, password);
    }
    
    public RegisterDetails findUserByUsername(String username) {
        return registerRepo.findByUsername(username);
    }
	
}
