package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.org.daointer.TaskDaoInter;
import com.org.dto.Task;
import com.org.utility.Helpers;

public class TaskDao implements TaskDaoInter {

	static EntityManager em = Helpers.getEMF().createEntityManager();

	public boolean addTask(Task t) {
		EntityTransaction transaction = em.getTransaction();
		transaction.begin();
		em.persist(t);
		transaction.commit();
		return true;
	}
	
	@Override
	public List<Task> viewAllTask() {
		Query query = em.createQuery("select t from Task t");
		List<Task> list = query.getResultList();
		return list;
	}

	@Override
	public void deleteTask(int id) {
		EntityTransaction transaction = em.getTransaction();
		Task task = em.find(Task.class, id);
		transaction.begin();
		em.remove(task);
		transaction.commit();
	}

}
