package com.niit.Dao;

import java.util.List;

import com.niit.model.Seat;

public interface SeatDao {
	public void insertSeat(Seat users); // for inserting
	public List<Seat> getAllUsers(); // for getting the 

}
