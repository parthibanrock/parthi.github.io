package com.niit.dao;

import java.util.List;

import com.niit.model.User1;


public interface BookingDAO {
	
	public void insertBooking(User1 users); // for inserting
	public List<User1> getAllUsers(); // for getting the list of all registered users
	
 
}
