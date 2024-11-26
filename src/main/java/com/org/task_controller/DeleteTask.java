package com.org.task_controller;

import java.io.IOException;

import com.org.service.TaskService;
import com.org.serviceinter.TaskServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deltask")
public class DeleteTask extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int tid = Integer.parseInt(req.getParameter("tid"));
		TaskServiceInter tsi = new TaskService();
		tsi.deleteTask(tid);
		HttpSession session = req.getSession();
		session.setAttribute("deltask", "Deleted Successfully");
		res.sendRedirect("addassign.jsp");
	}
}
