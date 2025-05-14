package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.AdminMemInfo;

@Repository
public interface AdminMemRepo extends JpaRepository<AdminMemInfo,Long>{

}
