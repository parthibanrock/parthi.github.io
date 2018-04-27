package com.niit.dao;

import java.util.List;

import com.niit.model.Seat;


public interface SeatDAO {
	
	public void insertSeat(Seat users); // for inserting
	public List<Seat> getAllUsers(); // for getting the list of all registered users
	
 
}
