package edu.abcp.service;


import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.AdminRegistration;
import edu.abcp.repository.AdminLoginRepository;
import edu.abcp.repository.AdminRegistrationRepository;







@Transactional
@Service
public class AdminLoginService {
protected static Logger logger = Logger.getLogger("service");
	
	@Autowired
	private AdminRegistrationRepository adminregistrationRepository;
	
	@Autowired
	private AdminLoginRepository adminloginRepository; 
	public Boolean create(AdminRegistration c) 
	{
		AdminRegistration saved = adminregistrationRepository.save(c);
		if (saved == null) 
			return false;
		
		return true;
	}
	
	
	public boolean check(AdminRegistration login) {
		String email=login.getEmail();
		String pwd=login.getPassword();
		 List<AdminRegistration> ob = adminloginRepository.findByemail(email);
		 String n="";
		 String pss="";
		 for(AdminRegistration b:ob)
		 {
			  n=b.getEmail();
			  pss=b.getPassword();
			  System.out.println("b "+n);
			
		 }
		 System.out.println("pss"+pss);
		if(pwd.equals(pss))
		return true;
		else
			return false;
     
	}


	public List<AdminRegistration> findAll() {
		
		 List<AdminRegistration> userlist=adminregistrationRepository.findAll();
		
		return userlist;
	}


	public List<AdminRegistration>  findByemail(AdminRegistration login) {
		String email=login.getEmail();
		List<AdminRegistration> userlist=adminregistrationRepository.findByemail(email);
		return userlist;
	}
	
	/*public void search() {
		
		userRepository.search();
	}*/
	

}
