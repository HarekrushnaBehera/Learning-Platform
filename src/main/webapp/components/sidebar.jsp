<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./styles/sidebar.css">
</head>
<body>
	<div class="sidebar">
		<div class="logo">Admin Panel</div>
		<ul class="nav-links">
			<li class="nav-item active" id="add-course"><a href="adminhome.jsp">All Courses</a></li>
			<li class="nav-item" id="view-courses"><a href="addcourse.jsp">Add Course</a></li>
			<li class="nav-item" id="add-assignments"><a href="#">Add Assignments</a></li>
			<li class="nav-item" id="add-mcqs"><a href="addmcq.jsp">Add MCQs</a></li>
		</ul>
	</div>
	<script type="text/javascript">
	    const navItems = document.querySelectorAll(".nav-item");
	    navItems.forEach((item) => {
	        item.addEventListener("click", () => {
	            document.querySelector(".nav-item.active").classList.remove("active");
	            item.classList.add("active");
	        });
	    });
    </script>
</body>
</html>