package com.org.course_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.org.dao.CourseDao;
import com.org.dao.UserDao;
import com.org.daointer.CDaoInterface;
import com.org.dto.Course;
import com.org.dto.User;
import com.org.service.CourseService;
import com.org.serviceinter.CourseServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/courseadd")
public class AddCourses extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("courseName");
		String desc = req.getParameter("courseDescription");
		String sdate = req.getParameter("startDate");
		String duration = req.getParameter("courseDuration");
		int price = Integer.parseInt(req.getParameter("price"));
		
		Course course = new Course();
		course.setName(name);
		course.setDescription(desc);
		course.setSDate(sdate);
		course.setDuration(duration);
		course.setPrice(price);
		
		CourseServiceInter cdao = new CourseService();
		boolean rest = cdao.addCourse(course);
		
		HttpSession session = req.getSession();
		
		if (rest) {
			session.setAttribute("added", "Course Added Successfully");
			res.sendRedirect("adminhome.jsp");
		} else {
			session.setAttribute("notadded", "Something Went Wrong");
			res.sendRedirect("addcourse.jsp");
		}
	}
}
