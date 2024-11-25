package com.org.course_controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.org.dto.Course;
import com.org.service.CourseService;
import com.org.service.UserService;
import com.org.serviceinter.CourseServiceInter;
import com.org.serviceinter.UserServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/editcourse")
public class EditCourse extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int c_id = Integer.parseInt(req.getParameter("nid"));
		String name = req.getParameter("name");
		String desc = req.getParameter("desc");
		String sdate = req.getParameter("sdate");
		String time = req.getParameter("duration");
		int price = Integer.parseInt(req.getParameter("price"));
		
		Course course = new Course();
		course.setId(c_id);
		course.setName(name);
		course.setDescription(desc);
		course.setSDate(sdate);
		course.setDuration(time);
		course.setPrice(price);
		
		CourseServiceInter udao = new CourseService();
		udao.addCourse(course);
		
		HttpSession session = req.getSession();
		
		session.setAttribute("update_msg", "Course Updated Successfully");
		res.sendRedirect("adminhome.jsp");
	}
}
