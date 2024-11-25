package com.org.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.org.dao.UserDao;
import com.org.daointer.UDaoInterface;
import com.org.dto.User;
import com.org.serviceinter.UserServiceInter;

public class UserService implements UserServiceInter {
	
	private UDaoInterface sdao = new UserDao();
	
	@Override
	public boolean saveAndUpdate(User u) {
		return sdao.saveAndUpdate(u);
	}

	@Override
	public User findById(int id) {
		return sdao.findById(id);
	}

	@Override
	public User findUserByUsernameAndPassword(String email, String password, String type) {
		return sdao.findUserByUsernameAndPassword(email, password, type);
	}

	@Override
	public List<User> deleteById(int id) {
		sdao.deleteById(id);
		return findAllStudents();
	}

	@Override
	public List<User> findAllStudents() {
		return sdao.findAll();
	}
}
