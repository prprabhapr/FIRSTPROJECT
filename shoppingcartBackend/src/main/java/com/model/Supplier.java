package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

	@Entity 
	@Table(name="supplier")
	@Component
	public class Supplier {

		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="sId")
		int id;
		
		@Column(name="sName")
		 String name;
		
		@Column(name="sLocation")
		 String location;
		
		@Column(name="category")
		String category;

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

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

}
