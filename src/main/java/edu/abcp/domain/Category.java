package edu.abcp.domain;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String name;
/*	
	@OneToMany(mappedBy="category",cascade=CascadeType.PERSIST)
	private List<Sub_Category> category = new ArrayList<Sub_Category>();
	
	@OneToMany(mappedBy="categorys",cascade=CascadeType.PERSIST)
	private List<Item> categorys = new ArrayList<Item>();
	*/
	
	@OneToMany(mappedBy="category",cascade=CascadeType.PERSIST)
	private List<Product> categoryp = new ArrayList<Product>();
	
	
	
	
	
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
 	

}
