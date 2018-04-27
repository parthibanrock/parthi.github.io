package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.BookingDAOImpl;
import com.niit.dao.SeatDAOImpl;
import com.niit.model.Seat;
import com.niit.model.User1;



public class BookingServlet extends HttpServlet {
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
        String date=request.getParameter("date");
        String showTime=request.getParameter("showTime");
		String numberofSeats = request.getParameter("numberOfSeats");
		String email = request.getParameter("email");
		
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			// creating an object of model and setting the form values
			User1 users1 = new User1();
            
			users1.setDate(date);
			users1.setEmail(email);
			users1.setNumberofSeats(numberofSeats);
			users1.setShowTime(showTime);
			try {
				BookingDAOImpl BookingDAO = new BookingDAOImpl();
				BookingDAO.insertBooking(users1);
				//
				RequestDispatcher rd=request.getRequestDispatcher("seat.jsp");
				 try {
					// request.setAttribute("msg", "i am getting msg");
					SeatDAOImpl seats=new SeatDAOImpl();
					 List<Seat> se=seats.getAllUsers();
					//Seat l=se.get(1);
					//request.setAttribute("seat", l.getSeatNo());
					 request.setAttribute("list", se);
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

