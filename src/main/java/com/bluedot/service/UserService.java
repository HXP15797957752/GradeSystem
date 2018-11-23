package com.bluedot.service;

import java.util.Set;

import com.bluedot.po.User;

public interface UserService {

	public User getByUserName(String userName);
	
	
	public Set<String> getRoles(String userName);
	
	
}
