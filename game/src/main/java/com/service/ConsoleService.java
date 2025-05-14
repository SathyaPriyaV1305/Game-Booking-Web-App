package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.ConsoleDetails;
import com.repository.ConsoleRepo;


@Service
public class ConsoleService{
	
	@Autowired
	ConsoleRepo consoleRepo;
	
	public List<ConsoleDetails> getAllConsoleDetails() {
        return consoleRepo.findAll();  
    }

    public void saveConsoleDetail(ConsoleDetails consoleDetails) {
    	consoleRepo.save(consoleDetails); 
    }

    public ConsoleDetails getConsoleDetailtById(Long id) {
        return consoleRepo.findById(id).orElse(null);  
    }

    public void deleteConsole(Long id) {
    	consoleRepo.deleteById(id);  
    }
    
}

