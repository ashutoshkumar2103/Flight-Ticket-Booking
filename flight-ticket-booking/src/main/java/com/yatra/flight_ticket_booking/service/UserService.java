package com.yatra.flight_ticket_booking.service;

import java.util.List;

import com.yatra.flight_ticket_booking.dao.UserDao;
import com.yatra.flight_ticket_booking.dto.User;

public class UserService {
	
	UserDao userDao=new UserDao();
	
	/*
	 * save User details
	 */
	
	public User saveUser (User user) {
		return userDao.saveUser(user);
	}
	
	public List<User> getAllUsers(){
		return userDao.getAllUsers();
		
	}
	/*
	 * get user by email address
	 */
	public User getUserByEmail(String userEmail) {
		return userDao.getUserByEmail(userEmail);
	}

}
