package com.mvch.spring.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.mvch.spring.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	/* @Autowired
	    private SessionFactory sessionFactory;
	     
	    private Session openSession() {
	        return sessionFactory.getCurrentSession();
	    }*/
private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	 
	    public User getUser(String login) {
	        List<User> userList = new ArrayList<User>();
	        Query query = sessionFactory.openSession().createQuery("from User u where u.login = :login");
	        query.setParameter("login", login);
	        userList = query.list();
	        if (userList.size() > 0)
	            return userList.get(0);
	        else
	            return null;   
	    }

}
