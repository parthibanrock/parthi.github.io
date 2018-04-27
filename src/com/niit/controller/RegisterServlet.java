package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.RegisterDAOImpl;
import com.niit.model.User;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		process(request, response);

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		process(request, response);
	}

	public void process(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		// fetching the values from the register page

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String emailId = request.getParameter("emailId");
		String phoneNumber = request.getParameter("phoneNumber");
	
		
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			// creating an object of model and setting the form values
			User users = new User();

			users.setFirstName(firstName);
			users.setLastName(lastName);
			users.setPassword(password);
			users.setEmailId(emailId);
			users.setPhoneNumber(phoneNumber);
			users.setConfirmPassword(confirmPassword);

			try {
				RegisterDAOImpl registerDAO = new RegisterDAOImpl();
				registerDAO.insertUser(users);
				
				RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
				 try {
					rd.forward(request, response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			out.println("data inserted");
		}
	
	

	}

