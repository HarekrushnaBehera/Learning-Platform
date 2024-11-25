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

@WebServlet("/updateuser")
public class UpdateServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("uid"));
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String gender = req.getParameter("gender");
		String type = req.getParameter("utype");
		String email = req.getParameter("email");
		String pwd = req.getParameter("upwd");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setAge(age);
		user.setGender(gender);
		user.setType(type);
		user.setEmail(email);
		user.setPassword(pwd);
		user.setMobile(mobile);
		
		UserServiceInter udao = new UserService();
		udao.saveAndUpdate(user);
		
		HttpSession session = req.getSession();
		session.setAttribute("profile_update", "Profile Updated Successfully");
		res.sendRedirect("home.jsp");
	}
}
