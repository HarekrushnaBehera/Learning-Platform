package com.org.user_controller;

import java.io.IOException;

import com.org.dao.UserDao;
import com.org.dto.User;
import com.org.service.UserService;
import com.org.serviceinter.UserServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/saveuser")
public class RegisterUser extends HttpServlet {	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		String pwd = req.getParameter("password");
		String gender = req.getParameter("gender");
		String type = req.getParameter("type");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		
		User user = new User();
		user.setName(name);
		user.setAge(age);
		user.setEmail(email);
		user.setPassword(pwd);
		user.setMobile(mobile);
		user.setGender(gender);
		user.setType(type);
		
		UserServiceInter udao = new UserService();
		udao.saveAndUpdate(user);
		
		HttpSession session = req.getSession();
		session.setAttribute("success", "Registered Successfully");
		if (type.equals("admin"))
			res.sendRedirect("adminlogin.jsp");
		else
			res.sendRedirect("userlogin.jsp");
	}
}
