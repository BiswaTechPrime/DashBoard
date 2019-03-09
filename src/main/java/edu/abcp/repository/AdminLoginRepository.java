package edu.abcp.repository;


import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.AdminRegistration;





@Repository
public interface AdminLoginRepository extends CrudRepository<AdminRegistration, Integer> {
	
	

		 List<AdminRegistration> findByemail(String email);


	}

