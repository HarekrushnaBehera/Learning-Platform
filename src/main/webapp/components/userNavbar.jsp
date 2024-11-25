<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="com.org.dto.User"%>
	<%@page import="com.org.serviceinter.UserServiceInter"%>
	<%@page import="com.org.service.UserService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 1rem 2rem;
	background-color: #003366;
	position: sticky;
	top: 0px;
	left: 0px;
}

.navbar .logo a {
	color: #fff;
	font-size: 1.5rem;
	text-decoration: none;
}

.navbar .nav-links {
	display: flex;
	list-style: none;
}

.navbar .nav-links li {
	margin-left: 1.5rem;
}

.navbar .nav-links a, .reg a {
	color: #fff;
	text-decoration: none;
	font-size: 1rem;
	position: relative;
	transition: color 0.3s;
}

.reg a {
	padding: 5px;
	border-radius: 8px;
	color: white;
}

.reg a:hover {
	color: orangered;
}

.navbar .nav-links a::after {
	content: "";
	position: absolute;
	width: 0;
	height: 2px;
	background-color: #fff;
	left: 0;
	bottom: -5px;
	transition: width 0.3s ease-in-out;
}

.navbar .nav-links a:hover::after {
	width: 100%;
}

.hamburger {
	display: none;
	cursor: pointer;
	flex-direction: column;
	justify-content: space-around;
	height: 1.5rem;
}

.hamburger span {
	display: block;
	width: 1.5rem;
	height: 0.2rem;
	background-color: #fff;
	transition: 0.3s;
}

@media ( max-width : 768px) {
	/* Responsive */
	.navbar .nav-links {
		display: none;
		flex-direction: column;
		width: 100%;
		background-color: #333;
		position: absolute;
		top: 60px;
		left: 0;
		z-index: 1000;
	}
	.navbar .nav-links.active {
		display: flex;
	}
	.nav-links li {
		text-align: center;
		margin: 10px 0;
	}
	.hamburger {
		display: flex;
	}
}
</style>
</head>
<body>
	<% User user5 = (User) session.getAttribute("userObj"); %>
	<nav class="navbar">
		<div class="logo">
			<a href="#">EduSite</a>
		</div>
		<% if (user5.getType().equals("user")) { %>
		<ul class="nav-links">
			<li><a href="home.jsp">Home</a></li>
			<li><a href="about.jsp">About</a></li>
			<li><a href="userhome.jsp">Courses</a></li>
			<li><a href="learnings.jsp">MyLearnings</a></li>
			<li><a href="contact.jsp">Contact</a></li>
		</ul>
		<% } else { %>
		<ul class="nav-links">
			<li><a href="home.jsp">Home</a></li>
			<li><a href="about.jsp">About</a></li>
			<li><a href="adminhome.jsp">Courses</a></li>
			<li><a href="contact.jsp">Contact</a></li>
		</ul>
		<% } %>
		<div class="reg">
			<a href="#" data-bs-toggle="modal" data-bs-target="#profileModal">Profile</a>
			<a href="logout">Logout</a>
		</div>
		<div class="hamburger" onclick="toggleMenu()">
			<span></span> <span></span> <span></span>
		</div>
	</nav>
	<div class="modal fade" id="profileModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="px-3 pt-3">
						<div class="mb-2">
							<label class="form-label">Name :</label>
							<input name="name" type="text" value="<%= user5.getName() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Age :</label>
							<input name="desc" type="text" value="<%= user5.getAge() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Gender :</label>
							<input name="sdate" type="text" value="<%= user5.getGender() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Email :</label>
							<input name="duration" type="text" value="<%= user5.getEmail() %>" class="form-control" required>
						</div>
						<div class="mb-2">
							<label class="form-label">Mobile No :</label>
							<input name="price" type="text" value="<%= user5.getMobile() %>" class="form-control" required>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
							<a href="update.jsp?id=<%=user5.getId() %>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script type="text/javascript">
		function toggleMenu() {
			const navLinks = document.querySelector('.nav-links');
			navLinks.classList.toggle('active');
		}
	</script>
</body>
</html>