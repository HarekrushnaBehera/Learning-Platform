package com.org.mcq_controller;

import java.io.IOException;

import com.org.dto.Course;
import com.org.dto.Mcq;
import com.org.service.CourseService;
import com.org.service.McqService;
import com.org.serviceinter.CourseServiceInter;
import com.org.serviceinter.McqServiceInter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addmcq")
public class AddMcq extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String question = req.getParameter("question");
		String opt1 = req.getParameter("option1");
		String opt2 = req.getParameter("option2");
		String opt3 = req.getParameter("option3");
		String opt4 = req.getParameter("option4");
		String answer = req.getParameter("answer");
		
		Mcq mcq = new Mcq();
		mcq.setQuestion(question);
		mcq.setOption1(opt1);
		mcq.setOption2(opt2);
		mcq.setOption3(opt3);
		mcq.setOption4(opt4);
		mcq.setAnswer(answer);
		
		McqServiceInter mdao = new McqService();
		System.out.println(mdao);
		boolean rest = mdao.addMcq(mcq);
		
		HttpSession session = req.getSession();
		
		if (rest) {
			session.setAttribute("mcqadded", "Course Added Successfully");
			res.sendRedirect("addmcq.jsp");
		} else {
			session.setAttribute("notadded", "Semething Went Wrong");
			res.sendRedirect("addmcq.jsp");
		}
	}
}
