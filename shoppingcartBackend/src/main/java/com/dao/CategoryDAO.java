package com.dao;

import java.util.List;

import com.model.Category;


public interface CategoryDAO {
	
	public boolean saveOrUpdate(Category category);
	public List<Category> list();
	public boolean updateCategory( Category category);
	public Category get(int id);
    public boolean deleteCategory(int id);
}
