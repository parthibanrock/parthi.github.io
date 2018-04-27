package com.niit.dao;

import java.util.List;

import com.niit.model.User;

public interface RegisterDAO {
	
	public void insertUser(User user); // for inserting
	public List<User> getAllUsers(); // for getting the list of all registered users
	public boolean validate(String email,String password);//for validating
	
	
 
}
