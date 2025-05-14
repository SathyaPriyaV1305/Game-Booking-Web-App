package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.model.GamesList;

@Repository
@Component
public interface GamesRepo extends JpaRepository<GamesList,Long>{

}
