<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.org.dto.Task"%>
<%@page import="com.org.dto.User"%>
<%@page import="com.org.service.TaskService"%>
<%@page import="com.org.serviceinter.TaskServiceInter"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Assignments</title>
<link rel="stylesheet" type="text/css" href="./styles/sidebar.css">
<script src="https://kit.fontawesome.com/288fc987b1.js" crossorigin="anonymous"></script>
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

.question {
	margin: 20px 0px;
}

.question label {
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
.delm {
	font-size: 15px;
	padding: 1px 5px;
	margin-left: 8px;
	color: black;
}
</style>
</head>
<body>
	<% User user = (User) session.getAttribute("userObj");
	   if (user != null) {
		   TaskServiceInter mdao = new TaskService();
		   List<Task> tasks = mdao.viewAllTask();
		   if (tasks != null) { %>
			<%@ include file="/components/userNavbar.jsp"%>
			<div class="all">
				<div class="sidebar">
					<div class="logo">Admin Panel</div>
					<ul class="nav-links">
						<li class="nav-item" id="add-course"><a href="adminhome.jsp">Active Courses</a></li>
						<li class="nav-item" id="add-course"><a href="addcourse.jsp">Add Course</a></li>
						<li class="nav-item active" id="add-assignments"><a href="addassign.jsp">Add Assignments</a></li>
						<li class="nav-item" id="add-mcqs"><a href="addmcq.jsp">Add MCQs</a></li>
					</ul>
				</div>
				<section class="mcq_section">
					<div class="questions">
						<h1>Active Assignments :</h1>
						<form id="quizForm" action="valuequiz">
							<% for (Task task : tasks) { %>
							<div class="question">
								<p><strong><%=task.getQuestion()%></strong><a class="delm" href="delmcq?tid=<%=task.getId()%>"><i class="fa fa-trash-o" aria-hidden="true"></i></a></p>
							</div>
							<% } %>
						</form>
						<p id="result"></p>
					</div>
					<form class="addmc" action="addtask" method="POST">
						<div class="input-group">
							<label for="question">Question:</label>
							<textarea id="question" name="question" rows="2"></textarea>
						</div>
						<div class="input-group">
							<label>Answer :</label>
							<textarea id="answer" name="answer" rows="5"></textarea>
						</div>
						<button type="submit">Add</button>
					</form>
				</section>
			</div>
			<% } else { %>
			<%@ include file="/components/userNavbar.jsp"%>
			<div class="all">
				<div class="sidebar">
					<div class="logo">Admin Panel</div>
					<ul class="nav-links">
						<li class="nav-item" id="add-course"><a href="adminhome.jsp">Active Courses</a></li>
						<li class="nav-item" id="add-assignments"><a href="addassign.jsp">Assignments</a></li>
						<li class="nav-item active" id="add-mcqs"><a href="addmcq.jsp">MCQs</a></li>
					</ul>
				</div>
				<section class="mcq_section">
					<form class="addmc" action="addtask" method="POST">
						<div class="input-group">
							<label for="question">Question:</label>
							<textarea id="question" name="question" rows="3"></textarea>
						</div>
						<div class="input-group">
							<label>Answer :</label>
							<textarea id="answer" name="answer" rows="5"></textarea>
						</div>
						<button type="submit">Add</button>
					</form>
				</section>
			</div>
		<% } %>
	<% } else {
		response.sendRedirect("adminlogin.jsp");
	} %>
</body>
</html>