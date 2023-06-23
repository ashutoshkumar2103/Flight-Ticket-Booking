package com.yatra.flight_ticket_booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yatra.flight_ticket_booking.dto.User;
import com.yatra.flight_ticket_booking.service.UserService;
@WebServlet("/userLogin")
public class UserLoginController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession=req.getSession();
	    String userEmail=req.getParameter("userEmail"); //log in jsp page se read kar rhe hai
	    String userPassword=req.getParameter("userPassword"); // TO STORE DATA FROM FRONT RND LOG IN PAGE
	    
	    UserService userService= new UserService();
	    
	    User user=userService.getUserByEmail(userEmail);
	    
	    if(user!=null) {
	    	if(user.getPassword().equals(userPassword)) {
	    		httpSession.setAttribute("userEmail", user.getEmail());
	    		RequestDispatcher requestDispatcher=req.getRequestDispatcher("user-home.jsp");
	    		requestDispatcher.forward(req, resp);
	    		
	    	}else {
	    		req.setAttribute("userPassword", "invalid-passowrd");
	    		RequestDispatcher requestDispatcher=req.getRequestDispatcher("user-login.jsp");
	    		requestDispatcher.forward(req, resp);
	    	}
	    	
	    }else {
	    	req.setAttribute("userEmail", "invalid-email");
	    	RequestDispatcher requestDispatcher=req.getRequestDispatcher("user-login.jsp");
    		requestDispatcher.forward(req, resp);
	    }
	    
	}
	

}
