<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./styles/navbar.css">
</head>
<body>
	<nav class="navbar">
		<div class="logo">
			<a href="#">EduSite</a>
		</div>
		<ul class="nav-links">
			<li><a href="#">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Courses</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
		<div class="reg">
			<a href="register.jsp">Signup</a>
		</div>
		<div class="hamburger" onclick="toggleMenu()">
			<span></span> <span></span> <span></span>
		</div>
	</nav>
	<script type="text/javascript">
		function toggleMenu() {
			const navLinks = document.querySelector('.nav-links');
			navLinks.classList.toggle('active');
		}
	</script>
</body>
</html>