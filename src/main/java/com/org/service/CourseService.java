package com.org.service;

import java.util.List;

import com.org.dao.CourseDao;
import com.org.daointer.CDaoInterface;
import com.org.dto.Course;
import com.org.serviceinter.CourseServiceInter;

public class CourseService implements CourseServiceInter {
	
	CDaoInterface cdao = new CourseDao();
	
	@Override
	public boolean addCourse(Course c) {
		return cdao.addCourse(c);
	}

	@Override
	public void deleteCoursesById(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Course> fetchAllCourse() {
		return cdao.fetchAllCourse();
	}
	
	@Override
	public List<Course> fetchCourseByUserId(int id) {
		return cdao.fetchCourseByUserId(id);
	}

	@Override
	public Course findCourseById(int id) {
		return cdao.findCourseById(id);
	}

}
