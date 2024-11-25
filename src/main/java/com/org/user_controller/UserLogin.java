package com.org.user_controller;

import java.io.IOException;

import com.org.dao.UserDao;
import com.org.daointer.UDaoInterface;
import com.org.dto.User;
import com.org.service.UserService;
import com.org.serviceinter.UserServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginuser")
public class UserLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = req.getParameter("email");
		String pwd = req.getParameter("password");
		String type = req.getParameter("type");
		System.out.println(email + " "+ pwd + " "+ type);
		
		UserServiceInter udao = new UserService();
		User user = udao.findUserByUsernameAndPassword(email, pwd,type);
		HttpSession session = req.getSession();
		if (user != null) {
			session.setAttribute("userObj", user);
			res.sendRedirect("userhome.jsp");
		} else {
			session.setAttribute("msg", "Invalid Credentials");
			res.sendRedirect("userlogin.jsp");
		}
	}
}
