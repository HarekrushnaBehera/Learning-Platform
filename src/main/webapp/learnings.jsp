<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
	<%@page import="com.org.dto.User"%>
	<%@page import="com.org.dto.Course"%>
	<%@page import="com.org.service.CourseService"%>
	<%@page import="com.org.serviceinter.CourseServiceInter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Learnings</title>
<link rel="stylesheet" type="text/css" href="./styles/sidebar.css">
<style type="text/css">
.all {
	display: flex;
}
.course-section {
    padding: 2rem;
    width: 93vw;
    text-align: center;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}
.course-section h1 {
    font-size: 2rem;
    margin-bottom: 0.4rem;
    text-align: start;
}
.course-container {
    display: flex;
    flex-wrap: wrap;
    gap: 1.5rem;
}
.cta-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
}
.cta-button:hover {
    background-color: #0056b3;
}
.course-card {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 300px;
    padding: 1.5rem;
    text-align: left;
    transition: transform 0.3s ease;
}

.course-card:hover {
    transform: translateY(-10px);
}

.course-card h3 {
    font-size: 1.5rem;
    color: #333;
    margin-bottom: 0.5rem;
}

.course-description {
    font-size: 0.95rem;
    color: #666;
    margin-bottom: 0.8rem;
}

.course-card p {
    font-size: 0.9rem;
    color: #444;
    margin: 0.3rem 0;
}

.card-btn {
    display: flex;
    justify-content: space-between;
}
</style>
</head>
<body>
	<% User user = (User) session.getAttribute("userObj"); 
	   CourseServiceInter cdao = new CourseService();
	   List<Course> courses = cdao.fetchCourseByUserId(user.getId()); %>
	   <% if (user != null) { %>
		<%@ include file="/components/userNavbar.jsp" %>
		<div class="all">
			<div class="sidebar">
				<div class="logo">Admin Panel</div>
				<ul class="nav-links">
					<li class="nav-item" id="add-course"><a href="adminhome.jsp">Active Courses</a></li>
					<li class="nav-item" id="add-assignments"><a href="#">Assignments</a></li>
					<li class="nav-item" id="add-mcqs"><a href="mymcqs.jsp">MCQs</a></li>
				</ul>
			</div>
			<section class="course-section">
				<h1>Your Courses</h1>
				<div class="course-container">
				<% for (Course course : courses) { %>
					<div class="course-card">
						<h3><%= course.getName() %></h3>
						<p class="course-description"><%= course.getDescription() %></p>
						<p class="course-duration">Duration: <%= course.getDuration() %></p>
						<p class="course-price"><strong>Price:</strong><%= course.getPrice() %></p>
					</div>
				<% } %>
				</div>
			</section>
		</div>
	<% } %>
</body>
</html>