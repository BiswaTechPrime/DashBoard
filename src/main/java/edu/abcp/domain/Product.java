package edu.abcp.domain;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Product {

	@Id
	@GeneratedValue
	private Long id;

	private String Firstname;

	private String Lastname;

	private String phone;

	private String email;

	private String Address;

	private String LandMark;

	private int LocationPicker;

	//private String state;

	//private String city;

	private String title;

	private String description;
	
	private double Price;

	@OneToMany(mappedBy = "product", cascade = CascadeType.PERSIST)
	private List<Upload> product = new ArrayList<Upload>();

	@ManyToOne
	private  Category  category;

	@ManyToOne
	private SubCategory subCategory;

	@ManyToOne
	private Item item;
	
	@ManyToOne
	private State state;
	
	@ManyToOne
	private City city;

	public List<Upload> getProduct() {
		return product;
	}

	public void setProduct(List<Upload> product) {
		this.product = product;
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

	/*public String getState() {
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
	}*/

	public String getTitle() {
		return title;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double price) {
		Price = price;
	}

}
