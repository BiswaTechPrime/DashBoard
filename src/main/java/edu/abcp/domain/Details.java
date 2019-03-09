package edu.abcp.domain;

public class Details {
	private Long id;
	private String Firstname;

	private String Lastname;

	private String phone;

	private String email;
	
	private String Address;
	
	private String LandMark;
	
	private int LocationPicker;
	
	private String state;
	
	private String city;
	
	private String title;
		
   private String description;
   
   private String name;      /*Image name of upload table*/
   
	private double Price;

public Details(
		 String title, String description, String name, double Price) {
	super();


	this.title = title;
	this.description = description;
	this.name = name;
}


public Details(String title, String description) {
	super();
	this.title = title;
	this.description = description;
}


public Details(
		 String title, String description, String name, double Price,String phone,String Address,int LocationPicker) {
	super();


	this.title = title;
	this.description = description;
	this.name = name;
}


public Long getId() {
	return id;
}


public void setId(Long id) {
	this.id = id;
}


public String getFirstname() {
	return Firstname;
}

public void setFirstname(String firstname) {
	Firstname = firstname;
}

public String getLastname() {
	return Lastname;
}

public void setLastname(String lastname) {
	Lastname = lastname;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getAddress() {
	return Address;
}

public void setAddress(String address) {
	Address = address;
}

public String getLandMark() {
	return LandMark;
}

public void setLandMark(String landMark) {
	LandMark = landMark;
}

public int getLocationPicker() {
	return LocationPicker;
}

public void setLocationPicker(int locationPicker) {
	LocationPicker = locationPicker;
}

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}


public double getPrice() {
	return Price;
}


public void setPrice(double price) {
	Price = price;
}
   
   

}
