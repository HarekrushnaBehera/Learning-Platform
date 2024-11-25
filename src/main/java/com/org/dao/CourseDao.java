package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.org.daointer.CDaoInterface;
import com.org.dto.Course;
import com.org.dto.User;
import com.org.utility.Helpers;

public class CourseDao implements CDaoInterface {
	
	static EntityManager em = Helpers.getEMF().createEntityManager();

	@Override
	public void deleteCoursesById(int id) {
		EntityTransaction transaction = em.getTransaction();
		Course course = em.find(Course.class, id);
		transaction.begin();
		em.remove(course);
		transaction.commit();
	}
	
	@Override
	public boolean addCourse(Course c) {
		EntityTransaction transaction = em.getTransaction();
		transaction.begin();
		em.merge(c);
		transaction.commit();
		return true;
	}
	
	@Override
	public List<Course> fetchAllCourse() {
		Query query = em.createQuery("select c from Course c");
		List<Course> courses = query.getResultList();
		return courses;
	}
	
	@Override
	public Course findCourseById(int id) {
		Course course = em.find(Course.class, id);
		return course;
	}

	@Override
	public List<Course> fetchCourseByUserId(int id) {
		User user = em.find(User.class, id);
		return user.getCourses();
	}	
}
