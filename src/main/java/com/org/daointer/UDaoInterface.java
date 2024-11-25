package com.org.daointer;

import java.util.List;

import com.org.dto.User;

public interface UDaoInterface {
	
	boolean saveAndUpdate(User u);

	User findById(int id);
	
	List<User> findAll();

	User findUserByUsernameAndPassword(String email, String password, String type);

	boolean deleteById(int id);
}
