package com.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;



	@Entity 
	@Table(name="product")
	@Component
	public class Product implements Serializable
	{

		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="pId")
		int id;
		
		@Column(name="pName")
		 String name;
		
		@Column(name="pPrice")
		 String price;
		
		@Column(name="pDescription")
		String Description;
		
		@Column(name="pWarranty")
		 String warranty;
	 	 
		 	@OneToOne(cascade=CascadeType.PERSIST)
			@JoinColumn(name="supplier")
			private Supplier supplier;
		 	
		 	 @OneToOne(cascade=CascadeType.PERSIST)
				@JoinColumn(name="category")
				private Category category;
	 	
		@Column(name="image",columnDefinition="varchar(255)")
		@Size(min=3,message="Please Select the Image")
		private	String image;
		@JsonIgnore
		transient private MultipartFile img;
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
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		public String getDescription() {
			return Description;
		}
		public void setDescription(String description) {
			Description = description;
		}
		public String getWarranty() {
			return warranty;
		}
		public void setWarranty(String warranty) {
			this.warranty = warranty;
		}
		public Supplier getSupplier() {
			return supplier;
		}
		public void setSupplier(Supplier supplier) {
			this.supplier = supplier;
		}
		public Category getCategory() {
			return category;
		}
		public void setCategory(Category category) {
			this.category = category;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public MultipartFile getImg() {
			return img;
		}
		public void setImg(MultipartFile img) {
			this.img = img;
		}
		}