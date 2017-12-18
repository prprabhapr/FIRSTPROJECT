package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity 
@Table(name="category")
@Component
public class Category {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="cId")
	int id;
	
	@Column(name="cName")
	 String name;
	
	@Column(name="cDescription")
	 String description;
	
	
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
}
