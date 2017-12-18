package com.dao;

import java.util.List;

import com.model.Supplier;

public interface SupplierDAO {
	public boolean saveOrUpdate(Supplier supplier);
	public List<Supplier> list();
	public boolean updateSupplier(Supplier supplier);
	public Supplier get(int id);
    public boolean deleteSupplier(int id);
}
