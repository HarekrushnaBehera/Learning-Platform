package com.org.course_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

@WebServlet("/savecourse")
public class SaveCourseToUser extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int cid = Integer.parseInt(req.getParameter("cid"));
		
		CourseServiceInter csi = new CourseService();
		Course course = csi.findCourseById(cid);
		List<Course> clist = new ArrayList<Course>();
		clist.add(course);
		
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("userObj");
		user.setCourses(clist);
		
		res.sendRedirect("userhome.jsp");
		
	}
}
