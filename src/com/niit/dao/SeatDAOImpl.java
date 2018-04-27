package com.niit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.niit.model.Seat;


public class SeatDAOImpl implements SeatDAO {
	final static String DRIVER_CLASS = "org.h2.Driver";
	final static String JDBC_URL = "jdbc:h2:tcp://localhost/~/test";
	final static String USERNAME = "sa";
	final static String PASSWORD = "sa";
	static Connection con = null;
	ResultSet rs;
	Statement sm;

	public SeatDAOImpl() throws ClassNotFoundException, SQLException {
		Class.forName(DRIVER_CLASS);
		con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
		System.out.println("Connection Established");
	}

	@Override
	public void insertSeat(Seat users) {
		String sql = "insert into Seat(ID,N_SEAT,COST) VALUES(id_seq.NEXTVAL,?,?)";
		System.out.println("Inserted");
		// insert into xyz(username,password) values(?,?,?)
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			//ps.setString(1, users.getId());
			ps.setString(1, users.getSeatNo());
			ps.setString(2, users.getCost());
			
			
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
	public List<Seat> getAllUsers() {
		List<Seat> seats =new ArrayList<Seat>();
		String sql = "select * from Seat ";
		String id,sn,c;
		try {
	     sm = con.createStatement();

			rs = sm.executeQuery(sql);

			while (rs.next()) {
				Seat s=new Seat();
				id=rs.getString(1);
				sn=rs.getString(2);
				c= rs.getString(3);
				s.setId(rs.getString(1));
				s.setSeatNo(rs.getString(2));
				s.setCost(rs.getString(3));
				seats.add(s);
			}
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}

		return seats;
	}

	
		
	
	}

	


