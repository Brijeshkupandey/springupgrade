package com.mvch.spring.dao;

import org.hibernate.SessionFactory;

import com.mvch.spring.model.Role;

public class RoleDAOImpl  implements RoleDAO{
	
private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	public Role getRole(int id) {
        Role role = (Role) sessionFactory.getCurrentSession().load(Role.class, id);
        return role;
    }
 

}
