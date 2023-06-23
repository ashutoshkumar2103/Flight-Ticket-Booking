package com.yatra.flight_ticket_booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/adminLogout")
public class AdminLogoutController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			HttpSession httpSession=req.getSession();
			
			if(httpSession.getAttribute("adminEmail")!=null) {
				httpSession.invalidate();
				
				RequestDispatcher dispatcher=req.getRequestDispatcher("admin-login.jsp");
				dispatcher.forward(req, resp);
			}
	}
	
	

}
