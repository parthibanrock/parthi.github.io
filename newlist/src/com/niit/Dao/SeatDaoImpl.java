package com.niit.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.security.sasl.SaslException;

import com.niit.model.Seat;

public class SeatDaoImpl implements SeatDao{
	final static String DRIVER_CLASS = "org.h2.Driver";
	final static String JDBC_URL = "jdbc:h2:tcp://localhost/~/test";
	final static String USERNAME = "sa";
	final static String PASSWORD = "sa";
	static Connection con = null;
	ResultSet rs;
	Statement sm;


	public void SeatDAOImpl() throws ClassNotFoundException, SaslException {
		Class.forName(DRIVER_CLASS);
		try {
			con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Connection Established");

}

	@Override
	public void insertSeat(Seat users) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Seat> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}
}
