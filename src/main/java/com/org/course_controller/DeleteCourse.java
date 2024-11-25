package com.org.course_controller;

import java.io.IOException;

import com.org.service.CourseService;
import com.org.serviceinter.CourseServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deletecourse")
public class DeleteCourse extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int c_id = Integer.parseInt(req.getParameter("cid"));
		
		CourseServiceInter cdao = new CourseService();
		cdao.deleteCoursesById(c_id);
		
		HttpSession session = req.getSession();
		session.setAttribute("delete_msg", "Course Deleted Successfully");
		res.sendRedirect("adminhome.jsp");
	}
}
