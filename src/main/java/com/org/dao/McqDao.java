package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.org.daointer.McqDaoInter;
import com.org.dto.Mcq;
import com.org.utility.Helpers;

@Component
public class McqDao implements McqDaoInter {
	
	static EntityManager em = Helpers.getEMF().createEntityManager();

	public boolean addMcq(Mcq m) {
		EntityTransaction transaction = em.getTransaction();
		transaction.begin();
		em.persist(m);
		transaction.commit();
		return true;
	}
	
	public List<Mcq> viewAllMcq() {
		Query query = em.createQuery("select m from Mcq m");
		List<Mcq> list = query.getResultList();
		return list;
	}
	
	@Override
	public void deleteMcq(int id) {
		EntityTransaction transaction = em.getTransaction();
		Mcq mcq = em.find(Mcq.class, id);
		transaction.begin();
		em.remove(mcq);
		transaction.commit();
	}
}
