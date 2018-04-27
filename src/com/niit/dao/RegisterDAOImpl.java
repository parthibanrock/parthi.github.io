package com.niit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.niit.model.User;

public class RegisterDAOImpl implements RegisterDAO {
	final static String DRIVER_CLASS = "org.h2.Driver";
	final static String JDBC_URL = "jdbc:h2:tcp://localhost/~/test";
	final static String USERNAME = "sa";
	final static String PASSWORD = "sa";
	static Connection con = null;
	ResultSet rs;
	Statement st;

	public RegisterDAOImpl() throws ClassNotFoundException, SQLException {
		Class.forName(DRIVER_CLASS);
		con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
		System.out.println("Connection Established");
	}

	@Override
	public void insertUser(User user) {
		String sql = "insert into Users(F_NAME,L_NAME,PASSWORD,C_PASSWORD,EMAIL,PHONENUMBER) VALUES(?,?,?,?,?,?)";
		System.out.println("Inserted");
		// insert into xyz(username,password) values(?,?,?)
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getConfirmPassword());
			ps.setString(5, user.getEmailId());
			ps.setString(6, user.getPhoneNumber());
			
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
	public List<User> getAllUsers() {

		String sql = "select * from Users";
		String f, l, p, cp, e, ph, id;
		try {
			st = con.createStatement();

			rs = st.executeQuery(sql);

			while (rs.next()) {
				id = rs.getString(1);
				f = rs.getString(2);
				l = rs.getString(3);
				p = rs.getString(4);
				cp = rs.getString(5);
				e = rs.getString(6);
				ph = rs.getString(7);

			}
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}

		return null;
	}

	@Override
	public boolean validate(String email, String password) {
		String sql="select email, password from Users";
		boolean flag=false;
		try {
			st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			
			while(rs.next())
			{
				if(email.equals(rs.getString(1)) && password.equals(rs.getString(2)))
				
					flag=true;
				else
					flag=false;
						
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return flag;
		
		
	
	}

	

}
