package com.yatra.flight_ticket_booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yatra.flight_ticket_booking.dto.User;
import com.yatra.flight_ticket_booking.service.UserService;
@WebServlet("/userRegister")
public class UserRegisterController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name =req.getParameter("username");
		long phone=Long.parseLong(req.getParameter("usermobile"));
		String email =req.getParameter("useremail");
		String password =req.getParameter("userpassword");
		String confirmPassword =req.getParameter("confirmpassword");
		
		User user= new User();
		user.setName(name);
		user.setPhone(phone);
		user.setEmail(email);
		user.setPassword(password);
		
		UserService userService=new UserService();
		
		if(password.equals(confirmPassword)) {
			
			userService.saveUser(user);
			RequestDispatcher dispatcher=req.getRequestDispatcher("user-login.jsp");
			dispatcher.forward(req, resp);
		}else {
			req.setAttribute("msg", "password-mismatch");
			RequestDispatcher dispatcher=req.getRequestDispatcher("user-register.jsp");
			dispatcher.forward(req, resp);
		}
	}
	

}
