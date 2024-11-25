package com.org.mcq_controller;

import java.io.IOException;

import com.org.service.McqService;
import com.org.serviceinter.McqServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delmcq")
public class DeleteMcq extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int cid = Integer.parseInt(req.getParameter("cid"));
		McqServiceInter msi = new McqService();
		msi.deleteMcq(cid);
		HttpSession session = req.getSession();
		session.setAttribute("delmcq", "Deleted Successfully");
		res.sendRedirect("addmcq.jsp");
	}
}
