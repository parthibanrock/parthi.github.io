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

import com.niit.dao.SeatDAOImpl;
import com.niit.model.Seat;



public class SeatServlet extends HttpServlet {
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
		String id=request.getParameter("id");
        String Seat_no=request.getParameter("seats");
        String Cost=request.getParameter("cost");
        String myName = request.getParameter("name");
        
        
       System.out.println(Cost+ "***********" + Seat_no);
       
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			// creating an object of model and setting the form values
			Seat users = new Seat();
            
			
		    users.setCost(Cost);
		    users.setSeatNo(Seat_no);
		    
			try {
				SeatDAOImpl SeatDAO = new SeatDAOImpl();
				SeatDAO.insertSeat(users);
				
				List<Seat> seats=SeatDAO.getAllUsers();
				for(Seat s:seats){
					
					System.out.println(s.getSeatNo());
				}
				RequestDispatcher rd=request.getRequestDispatcher("final.jsp");
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

