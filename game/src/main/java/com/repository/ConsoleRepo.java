package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.model.ConsoleDetails;

public interface ConsoleRepo extends JpaRepository<ConsoleDetails,Long>{

}
