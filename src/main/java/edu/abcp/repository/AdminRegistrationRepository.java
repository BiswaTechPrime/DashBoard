package edu.abcp.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.AdminRegistration;





@Repository
public interface AdminRegistrationRepository extends JpaRepository<AdminRegistration,Long> {

	List<AdminRegistration> findByemail(String email);
	
	
}

/*	boolean search();*/
	
	






