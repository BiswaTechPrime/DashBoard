package edu.abcp.domain;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;



@Entity
public class State  {
	  //private static final long serialVersionUID = 1L;
@Id
@GeneratedValue
private int id;


private String name;


@OneToMany(mappedBy="state",cascade=CascadeType.PERSIST)
private List<City> state = new ArrayList<City>();


@OneToMany(mappedBy="state",cascade=CascadeType.PERSIST)
private List<Product> statep = new ArrayList<Product>();


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}

/*@ElementCollection(targetClass=String.class)
private List<String> namelist;
public int getId() {
	return id;
}*/



}
