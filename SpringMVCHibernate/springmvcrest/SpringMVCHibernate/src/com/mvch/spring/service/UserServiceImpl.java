package com.mvch.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mvch.spring.dao.UserDAO;
import com.mvch.spring.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    
   @Autowired
   private UserDAO userDAO;

   public User getUser(String login) {
       return userDAO.getUser(login);
   }

}