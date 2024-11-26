package com.org.task_controller;

import java.io.IOException;

import com.org.dto.Task;
import com.org.service.TaskService;
import com.org.serviceinter.TaskServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addtask")
public class AddTask extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String question = req.getParameter("question");
		
		String answer = req.getParameter("answer");
		
		Task task = new Task();
		task.setQuestion(question);
		task.setAnswer(answer);
		
		TaskServiceInter tdao = new TaskService();
		boolean rest = tdao.addTask(task);
		
		HttpSession session = req.getSession();
		
		if (rest) {
			session.setAttribute("taskadded", "Task Added Successfully");
			res.sendRedirect("addassign.jsp");
		} else {
			session.setAttribute("notadded", "Semething Went Wrong");
			res.sendRedirect("addassign.jsp");
		}
	}
}
