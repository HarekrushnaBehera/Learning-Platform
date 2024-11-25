package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.org.daointer.UDaoInterface;
import com.org.dto.User;
import com.org.utility.Helpers;

public class UserDao implements UDaoInterface {

	static EntityManager em = Helpers.getEMF().createEntityManager();

	public boolean saveAndUpdate(User u) {
		EntityTransaction transaction = em.getTransaction();
		transaction.begin();
		em.merge(u);
		transaction.commit();
		return true;
	}

	public User findById(int id) {
		User user = em.find(User.class, id);
		return user;
	}	
	
	public User findUserByUsernameAndPassword(String email,String password, String type) {
		Query query = em.createQuery("select u from User u where u.email=?1 and u.password=?2 and u.type=?3");
		query.setParameter(1, email);
		query.setParameter(2,password);
		query.setParameter(3,type);
		List<User> list = query.getResultList();
		if (!list.isEmpty())
			return list.get(0);
		else
			return null;
	}
	
	
	public boolean deleteById(int id) {
		EntityTransaction transaction = em.getTransaction();
		transaction.begin();
		em.remove(findById(id));
		transaction.commit();
		return true;
	}
	
	public List<User> findAll() {
		Query query = em.createQuery("select s from Student s");
		List<User> list = query.getResultList();
		return list;
	}
}
