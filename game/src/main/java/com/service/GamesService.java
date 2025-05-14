package com.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.GamesList;
import com.model.RegisterDetails;
import com.repository.GamesRepo;

@Service
public class GamesService{
	
	@Autowired
	GamesRepo gamesRepo;
	
	public List<GamesList> getAllGameDetails() {
        return gamesRepo.findAll();  
    }

    public void saveGameDetail(GamesList gamesList) {
    	gamesRepo.save(gamesList); 
    }

    public GamesList getGameDetailtById(Long id) {
        return gamesRepo.findById(id).orElse(null);  
    }

    public void deleteGameDetail(Long id) {
    	gamesRepo.deleteById(id);  
    }
    
}
