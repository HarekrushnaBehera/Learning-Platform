<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.org.dto.Mcq"%>
<%@page import="com.org.service.McqService"%>
<%@page import="com.org.serviceinter.McqServiceInter"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All MCQs</title>
<link rel="stylesheet" type="text/css" href="./styles/sidebar.css">
<style>
.all {
	display: flex;
}

.mcq_section {
	padding: 15px 2rem;
	width: 93vw;
	display: flex;
	justify-content: space-between;
	font-family: Arial, sans-serif;
	height: 100%;
	overflow: auto;
	scrollbar-width: none;
	font-family: Arial, sans-serif;
}

.questions {
	flex-basis: 63%;
}

.questions h1 {
	margin-bottom: 15px;
}

.addmc {
	width: 350px;
	margin: 20px auto;
	background-color: rgb(239, 236, 236);
	padding: 10px;
	border-radius: 10px;
	height: 100%;
}

.input-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
}

textarea, input[type="text"], select, button {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 8px;
	margin: 5px 0px;
	box-sizing: border-box;
	outline: none;
}

button {
	cursor: pointer;
	background-color: #73e577;
	border: none;
	font-size: 18px;
}

button:hover {
	background-color: #33c23a;
	color: white;
}

.questions {
	margin: 20px 0px;
}

.questions label {
	display: block;
	margin: 5px 0;
}

#quizForm button {
	padding: 6px 15px;
	background-color: #007BFF;
	color: white;
	border: none;
	width: auto;
	cursor: pointer;
}

#quizForm button:hover {
	background-color: #0056b3;
}

.form-group {
	display: flex;
	align-items: center;
	gap: 13px;
	margin-top: 10px;
}

#typeForm {
	display: flex;
	align-items: center;
	justify-content: center;
}

label {
	display: block;
	margin-bottom: 5px;
}
</style>
</head>
<body>
	<% McqServiceInter mdao = new McqService();
	   List<Mcq> mcqs = mdao.viewAllMcq();
	   if (mcqs != null) { %>
		<%@ include file="/components/userNavbar.jsp"%>
		<div class="all">
			<div class="sidebar">
				<div class="logo">Admin Panel</div>
				<ul class="nav-links">
					<li class="nav-item" id="add-course"><a href="userhome.jsp">Active Courses</a></li>
					<li class="nav-item" id="add-assignments"><a href="#">Assignments</a></li>
					<li class="nav-item active" id="add-mcqs"><a href="mymcqs.jsp">MCQs</a></li>
				</ul>
			</div>
			<section class="mcq_section">
				<div class="questions">
					<h1>Multiple Choice Questions :</h1>
					<form id="quizForm" action="valuequiz">
						<% for (Mcq mcq : mcqs) { %>
						<div class="question">
							<p><strong><%=mcq.getQuestion()%></strong></p>
							<label><input type="radio" name="q<%=mcq.getId()%>" value="<%=mcq.getOption1()%>"><%=mcq.getOption1()%></label>
							<label><input type="radio" name="q<%=mcq.getId()%>" value="<%=mcq.getOption1()%>"><%=mcq.getOption1()%></label>
							<label><input type="radio" name="q<%=mcq.getId()%>" value="<%=mcq.getOption3()%>"><%=mcq.getOption3()%></label>
							<label><input type="radio" name="q<%=mcq.getId()%>" value="<%=mcq.getOption4()%>"><%=mcq.getOption4()%></label>
						</div>
						<% } %>
						<button type="button" onclick="submitQuiz()">Submit</button>
					</form>
				</div>
			</section>
		</div>
		<% } else { %>
		<%@ include file="/components/userNavbar.jsp"%>
		<div class="all">
			<div class="sidebar">
				<div class="logo">Admin Panel</div>
				<ul class="nav-links">
					<li class="nav-item" id="add-course"><a href="adminhome.jsp">Active Courses</a></li>
					<li class="nav-item" id="add-assignments"><a href="#">Assignments</a></li>
					<li class="nav-item active" id="add-mcqs"><a href="addmcq.jsp">MCQs</a></li>
				</ul>
			</div>
			<section class="mcq_section">
				<h1>No MCQs are there to show</h1>
			</section>
		</div>
	<% } %>
</body>
</html>