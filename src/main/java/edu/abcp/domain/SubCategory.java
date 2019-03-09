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
public class SubCategory {

	
	@Id
	@GeneratedValue
	private Long id;
	
	private String itemname;
	
	@OneToMany(mappedBy="subCategory",cascade=CascadeType.PERSIST)
	private List<Item> sub_category = new ArrayList<Item>();
	
	
	@OneToMany(mappedBy="subCategory",cascade=CascadeType.PERSIST)
	private List<Product> sub_categoryp = new ArrayList<Product>();
	
	@OneToMany(mappedBy="subCategory",cascade=CascadeType.PERSIST)
	private List<Upload> upload = new ArrayList<Upload>();

@ManyToOne
private Category category;











	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String item_name) {
		this.itemname = item_name;
	}

	public List<Item> getSub_category() {
		return sub_category;
	}

	public void setSub_category(List<Item> sub_category) {
		this.sub_category = sub_category;
	}

	public List<Product> getSub_categoryp() {
		return sub_categoryp;
	}

	public void setSub_categoryp(List<Product> sub_categoryp) {
		this.sub_categoryp = sub_categoryp;
	}

	public List<Upload> getUpload() {
		return upload;
	}

	public void setUpload(List<Upload> upload) {
		this.upload = upload;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	
}
