package com.niit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.niit.model.User1;


public class BookingDAOImpl implements BookingDAO {
	final static String DRIVER_CLASS = "org.h2.Driver";
	final static String JDBC_URL = "jdbc:h2:tcp://localhost/~/test";
	final static String USERNAME = "sa";
	final static String PASSWORD = "sa";
	static Connection con = null;
	ResultSet rs;
	Statement sm;

	public BookingDAOImpl() throws ClassNotFoundException, SQLException {
		Class.forName(DRIVER_CLASS);
		con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
		System.out.println("Connection Established");
	}

	@Override
	public void insertBooking(User1 user) {
		String sql = "insert into Booking(DATE,SHOWTIME,EMAIL,N_SEATS) VALUES(?,?,?,?)";
		System.out.println("Inserted");
		// insert into xyz(username,password) values(?,?,?)
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getDate());
			ps.setString(2, user.getShowTime());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getNumberofSeats());
			
			int i=ps.executeUpdate();
			if(i!=0){  
                System.out.println("<br>Record has been inserted");  
                   
           
              }  
              else{  
                System.out.println("failed to insert the data");  
               } 

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public List<User1> getAllUsers() {

		String sql = "select * from Booking";
		String d,sh,e,ns;
		try {
	     sm = con.createStatement();

			rs = sm.executeQuery(sql);

			while (rs.next()) {
				d=rs.getString(1);
				sh=rs.getString(2);
				e= rs.getString(3);
				ns = rs.getString(5);
				
			}
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}

		return null;
	}

	
		
	
	}

	


