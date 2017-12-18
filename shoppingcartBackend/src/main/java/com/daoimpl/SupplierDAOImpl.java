package com.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.SupplierDAO;
import com.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO
{	
	@Autowired
	SessionFactory sessionFactory;
public	SessionFactory getSessionFactory()
{
	return sessionFactory;
}
public void setSessionFactory(SessionFactory sessionFactory) 
{
	this.sessionFactory =sessionFactory;
	
}
@Transactional
public boolean saveOrUpdate(Supplier supplier) 
{
	try
	{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		return true ;
	}
	catch(HibernateException e) 
	{
		e.printStackTrace();
		return false; 
		
	}
}
@Transactional
public List<Supplier> list() 
{
	return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
}
@Transactional
public Supplier get(int id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
   Supplier supplier=(Supplier)session.load(Supplier.class,id);
	return supplier;
}
@Transactional
public boolean updateSupplier(Supplier supplier) {
	try{
	// TODO Auto-generated method stub
	sessionFactory.getCurrentSession().update(supplier);
	}
	catch(Exception e)
	{
	e.printStackTrace();
	
	return false;
	}
	return true;
}
@Transactional
public boolean deleteSupplier(int id)
{
	Supplier supplier = new Supplier();
	supplier.setId(id);
	try 
	    {
		sessionFactory.getCurrentSession().delete(supplier);
		return true;
		} 
	catch (Exception e) 
	    {
		e.printStackTrace();
		return false;
	    }
 }
}