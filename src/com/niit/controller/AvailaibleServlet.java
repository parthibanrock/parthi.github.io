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

public class AvailaibleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			login(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			login(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void login(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ClassNotFoundException, SQLException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String noS = request.getParameter("noSeat");
         SeatDAOImpl st=new SeatDAOImpl();
         List<Seat> setas=st.getAllUsers();
         for(Seat s:setas){
        	 
        	 System.out.println(s.getSeatNo());
        	 
         }
		/*try {
		BookingDAOImpl registerDAO = new BookingDAOImpl();
		//	boolean flag = registerDAO.validate(email);
			if (flag == true) {
				System.out.println("Valid Login");
				RequestDispatcher rd = request
						.getRequestDispatcher("welcome.jsp");
				try {
					rd.forward(request, response);
				} catch (ServletException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}

				
			} else {
				System.out.println("InValid Login");
				RequestDispatcher rd = request
						.getRequestDispatcher("login.jsp");
				
				try {
					rd.forward(request, response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/

	}
	

}
