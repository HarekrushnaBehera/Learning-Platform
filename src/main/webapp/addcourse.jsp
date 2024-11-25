<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.org.dto.User"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Courses</title>
<link rel="stylesheet" type="text/css" href="./styles/sidebar.css">
<style type="text/css">
.all {
	display: flex;
}
.tab-content {
	padding: 15px 2rem;
	width: 93vw;
	display: flex;
	justify-content: center;
	font-family: Arial, sans-serif;
	height: 100%;
	overflow: auto;
	scrollbar-width: none;
	font-family: Arial, sans-serif;
}
form {
	width: 70%;
	margin-top: 20px;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input, textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
}

textarea {
	resize: none;
}

input:focus, textarea:focus {
	outline: none;
	border-color: #3498db;
}

.btn-submit {
	background-color: #3498db;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.btn-submit:hover {
	background-color: #2980b9;
}

.date_box {
	display: flex;
	justify-content: space-between;
}

.date_box div {
	width: 45%;
}
</style>
</head>
<body>
	<% User user = (User) session.getAttribute("userObj");
	   if (user != null) { %>
		<%@ include file="/components/userNavbar.jsp"%>
		<div class="all">
			<div class="sidebar">
					<div class="logo">Admin Panel</div>
					<ul class="nav-links">
						<li class="nav-item" id="all-course"><a href="adminhome.jsp">Active Courses</a></li>
						<li class="nav-item active" id="add-course"><a href="addcourse.jsp">Add Courses</a></li>
						<li class="nav-item" id="add-assignments"><a href="#">Add Assignments</a></li>
						<li class="nav-item" id="add-mcqs"><a href="addmcq.jsp">Add MCQs</a></li>
					</ul>
				</div>
			<section id="add-course" class="tab-content">
				<form id="addCourseForm" action="courseadd" method="post">
					<div class="form-group">
						<label for="courseName">Course Name</label>
						<input type="text" id="courseName" name="courseName" placeholder="Enter course name" required>
					</div>
					<div class="form-group">
						<label for="courseDescription">Course Description</label>
						<textarea id="courseDescription" name="courseDescription" placeholder="Enter course description" rows="4" required></textarea>
					</div>
					<div class="date_box">
						<div class="form-group">
							<label for="startDate">Start Date</label>
							<input type="date" id="startDate" name="startDate" required>
						</div>
						<div class="form-group">
							<label for="courseDuration">Course Duration (in weeks)</label>
							<input type="number" id="courseDuration" name="courseDuration" placeholder="Enter duration in weeks" required>
						</div>
					</div>
					<div class="form-group">
						<label for="price">Price</label>
						<input type="number" id="price" name="price" placeholder="Enter course price" step="0.01" required>
					</div>
					<button type="submit" class="btn-submit">Add Course</button>
				</form>
			</section>
		</div>
	<% } else {
		response.sendRedirect("adminlogin.jsp");
	} %>
</body>
</html>