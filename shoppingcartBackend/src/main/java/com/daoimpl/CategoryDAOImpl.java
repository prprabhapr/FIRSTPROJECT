package com.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CategoryDAO;
import com.model.Category;


@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO 
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
public boolean saveOrUpdate(Category category) 
{
	try
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		return true ;
	}
	catch(HibernateException e) 
	{
		e.printStackTrace();
		return false; 
		
	}
}
@Transactional
public List<Category> list() 
{
	return sessionFactory.getCurrentSession().createQuery("from Category").list();
}
@Transactional
public Category get(int id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	Category category=(Category)session.load(Category.class,id);
	return category;
}
@Transactional
public boolean updateCategory(Category category) {
	try{
	// TODO Auto-generated method stub
	sessionFactory.getCurrentSession().update(category);
	}
	catch(Exception e)
	{
	e.printStackTrace();
	
	return false;
	}
	return true;
}
@Transactional
public boolean deleteCategory(int id)
{
	Category category = new Category();
	category.setId(id);
	try 
	    {
		sessionFactory.getCurrentSession().delete(category);
		return true;
		} 
	catch (Exception e) 
	    {
		e.printStackTrace();
		return false;
	    }
 }
}

