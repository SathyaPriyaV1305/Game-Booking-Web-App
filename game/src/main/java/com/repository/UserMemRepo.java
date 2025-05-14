package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.model.MembershipDetails;

@Repository
public interface UserMemRepo extends JpaRepository<MembershipDetails,Long>{
	
	MembershipDetails findByUsername(String username);

}
