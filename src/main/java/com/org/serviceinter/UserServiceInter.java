package com.org.serviceinter;

import java.util.List;

import com.org.dto.User;

public interface UserServiceInter {
	
	boolean saveAndUpdate(User u);

	User findById(int id);
	
	List<User> findAllStudents();

	User findUserByUsernameAndPassword(String email, String password, String type);

	List<User> deleteById(int id);
}
