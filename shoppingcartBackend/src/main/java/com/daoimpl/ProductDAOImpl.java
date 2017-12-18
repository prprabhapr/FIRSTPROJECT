package com.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.ProductDAO;
import com.model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
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
public boolean saveOrUpdate(Product product) 
{
	try
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		return true ;
	}
	catch(HibernateException e) 
	{
		e.printStackTrace();
		return false; 
		
	}
}
@Transactional
public List<Product> list() 
{
	return sessionFactory.getCurrentSession().createQuery("from Product").list();
}
@Transactional
public Product get(int id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	Product product=(Product)session.load(Product.class,id);
	return product;
}
@Transactional
public boolean updateProduct(Product product) {
	try{
	// TODO Auto-generated method stub
	sessionFactory.getCurrentSession().update(product);
	}
	catch(Exception e)
	{
	e.printStackTrace();
	
	return false;
	}
	return true;
}
@Transactional
public boolean deleteProduct(int id)
{
	Product product = new Product();
	product.setId(id);
	try 
	    {
		sessionFactory.getCurrentSession().delete(product);
		return true;
		} 
	catch (Exception e) 
	    {
		e.printStackTrace();
		return false;
	    }
 }
}
