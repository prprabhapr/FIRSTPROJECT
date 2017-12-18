package com.daoimpl;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.dao.UserDAO;
import com.model.User;
@Repository("userDAO")
@Component
@Transactional
public class UserDAOImpl implements UserDAO
{

	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	public boolean saveUser(User user) //IMPLEMENTATION  METHOD OF UserDAO
	{
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return false;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return true;
		}
	}

}
