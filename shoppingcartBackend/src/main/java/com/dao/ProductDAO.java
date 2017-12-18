package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDAO {
	public boolean saveOrUpdate(Product product);
	public List<Product> list();
	public boolean updateProduct( Product product);
	public Product get(int id);
    public boolean deleteProduct(int id);

}
