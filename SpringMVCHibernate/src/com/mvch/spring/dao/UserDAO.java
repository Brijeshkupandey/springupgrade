package com.mvch.spring.dao;

import com.mvch.spring.model.User;

public interface UserDAO {
	public User getUser(String login);
}
