package edu.abcp.domain;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AdRegistration")
public class AdminRegistration {
  
	 @Id
	    @GeneratedValue
	    private Long id;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	
	//@NotEmpty(message="please enter name")
	private String firstname;
	
	private String lastname;
	
	//@NotEmpty(message="please enter valid email address")
	//@Email
	private String email;
	

	
	
	
	
	//@NotEmpty(message="please enter password")
	//@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	private String password;
	
	//@NotNull(message="not match")
	private String Confirmpassword;
	
	///@NotEmpty(message="please enter valid address")
	//private String address;
	
	//private String sex;
	
	public String getConfirmpassword() {
		return Confirmpassword;
	}
	public void setConfirmpassword(String Confirmpassword) {
		 this.Confirmpassword = Confirmpassword;
		 //  checkPassword();//check
		/*  if(!password.equals(this.password)){
		      this.password = null;*/
		   }
	    



	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		  this.password = password;
		  //  checkPassword();//check
	}

	
	/*private void checkPassword() {
	    if(this.password == null || this.Confirmpassword == null){
	        return;
	    }else if(!this.password.equals(Confirmpassword)){
	        this.Confirmpassword = null;
	    }
	}*/
}
