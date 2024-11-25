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
<title>E-Learning Platform</title>
<script src="https://kit.fontawesome.com/288fc987b1.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
    margin-bottom: 0.4rem;
	height: 66px;
	background-color: #fafaff;
	padding: 2px 7px;
	text-align: justify;
	border-radius: 8px;
	overflow: auto;
	scrollbar-width: none;
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
.icons {
	display: flex;
	align-items: center;
	justify-content: flex-end;
	gap: 10px;
}
.icons button {
	font-size: 19px;
	border: none;
	background: none;
}
@media (min-width: 993px) {
    .course-card {
        width: 30%;
    }
}
@media (min-width: 769px) and (max-width: 992px) {
    .course-card {
        width: 45%;
    }
}
@media (max-width: 768px) {
    .course-card {
        width: 100%;
        max-width: 100%;
    }
}
</style>
</head>
<body>
	<% User user = (User) session.getAttribute("userObj");
	   if (user != null) {
	   CourseServiceInter cdao = new CourseService();
	   List<Course> courses = cdao.fetchAllCourse(); %>
		<%@ include file="/components/userNavbar.jsp"%>
		<div class="all">
			<%@ include file="/components/sidebar.jsp"%>
			<section class="course-section">
				<h1>All Active Courses</h1>
				<div class="course-container">
				<% for (Course course : courses) { %>
					<div class="course-card">
						<h3><%= course.getName() %></h3>
						<p class="course-description"><%= course.getDescription() %></p>
						<p class="sdate"><strong>Start Date : </strong><%= course.getSDate() %></p>
						<p class="course-duration"><strong>Duration : </strong><%= course.getDuration() %> Weeks</p>
						<p class="course-price"><strong>Price : </strong><%= course.getPrice() %> rupees only</p>
						<div class="icons">
							<button type="button" data-bs-toggle="modal" data-bs-target="#editModal<%= course.getId() %>">
								<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
							</button>
							<button type="button" data-bs-toggle="modal" data-bs-target="#deleteModal<%= course.getId() %>">
								<i class="fa fa-trash-o" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				<% } %>
				</div>
			</section>
		</div>
		<% for (Course course : courses) { %>
		<div class="modal fade" id="editModal<%= course.getId() %>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="px-3 pt-3" action="editcourse" method="post">
						<div class="mb-2">
							<label class="form-label">Name :</label>
							<input name="name" type="text" value="<%= course.getName() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Description :</label>
							<input name="desc" type="text" value="<%= course.getDescription() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Start Date :</label>
							<input name="sdate" type="date" value="<%= course.getDuration() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Duration :</label>
							<input name="duration" type="text" value="<%= course.getDuration() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Price :</label>
							<input name="price" type="text" value="<%= course.getPrice() %>" class="form-control" required>
						</div>
						<input name="nid" type="hidden" value="<%=course.getId() %>">
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary">Edit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<% } %>
		<% for (Course course : courses) { %>
		<div class="modal fade" id="deleteModal<%=course.getId()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="px-3 pt-3" action="deletecourse">
						<div class="mb-2 delete">Do you want to delete this course ?</div>
						<input name="cid" type="hidden" value="<%=course.getId()%>">
						<div class="modal-footer border-top-0">
							<button type="button" class="btn btn-primary"
								data-bs-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-danger">Delete</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<% } %>
	<% } else {
		response.sendRedirect("adminlogin.jsp");
	} %>
</body>
</html>