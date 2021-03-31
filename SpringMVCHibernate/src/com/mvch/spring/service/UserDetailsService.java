package com.mvch.spring.service;

public interface UserDetailsService {
	public UserDetails loadUserByUsername(String login);
}
