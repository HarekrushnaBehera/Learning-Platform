package com.org.serviceinter;

import java.util.List;

import com.org.dto.Course;

public interface CourseServiceInter {
	
	boolean addCourse(Course c);
	
	void deleteCoursesById(int id);
	
	List<Course> fetchAllCourse();
	
	List<Course> fetchCourseByUserId(int id);
	
	Course findCourseById(int id);
}
