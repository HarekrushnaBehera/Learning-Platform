<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.List"%>
	<%@page import="com.org.dto.User"%>
	<%@page import="com.org.service.UserService"%>
	<%@page import="com.org.serviceinter.UserServiceInter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update your Profile</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.reg_form {
	font-family: 'Arial', sans-serif;
	background: linear-gradient(135deg, #6e8ffba7, #a877e387);
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 90vh;
	padding: 20px;
}

.form-container {
	background: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	width: 100%;
	max-width: 400px;
}

.form-container h2 {
	text-align: center;
	margin-bottom: 7px;
	font-size: 24px;
	color: #333;
}

.form-group {
	margin-bottom: 10px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group input, .form-group select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	font-size: 16px;
}

.form-group input:focus, .form-group select:focus {
	border-color: #6e8efb;
	outline: none;
	box-shadow: 0 0 5px rgba(110, 142, 251, 0.5);
}

.form-group .gender-options {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.form-group .gender-options label {
	margin: 0 10px;
	font-weight: normal;
}

.btn-submit {
	width: 100%;
	padding: 10px;
	background-color: #6e8efb;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: bold;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.btn-submit:hover {
	background: #4d6edc;
}

.age_gen {
	display: flex;
	justify-content: space-between;
	gap: 10px;
}

.red {
	display: flex;
	justify-content: center;
	gap: 2px;
	margin-top: 5px;
}

.red a {
	text-decoration: none;
	color: #74ebd5;
}

.red a:hover {
	text-decoration: underline;
}

@media ( max-width : 500px) {
	.form-group .gender-options {
		flex-direction: column;
		align-items: flex-start;
	}
	.form-group .gender-options label {
		margin: 5px 0;
	}
}
</style>
</head>
<body>
	<% User user = (User) session.getAttribute("userObj");
	   if (user != null) {
		   int uid = Integer.parseInt(request.getParameter("id"));
		   UserServiceInter cdao = new UserService();
		   User theuser = cdao.findById(uid); %>
		<%@ include file="/components/userNavbar.jsp"%>
		<div class="reg_form">
			<div class="form-container">
				<h2>Update Profile</h2>
				<form action="updateuser" method="post">
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" id="name" name="name" value="<%= theuser.getName() %>" required>
					</div>
					<div class="d-flex gap-3">
						<div class="form-group">
							<label for="name">Age</label>
							<input type="number" id="age" name="age" value="<%= theuser.getAge() %>" required>
						</div>
						<div class="age_gen">
							<div class="form-group">
								<label for="gender">Gender</label>
								<select id="gender" name="gender" required>
									<option value="">Select your gender</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
									<option value="other">Other</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="email">Email Address</label>
						<input type="email" id="email" name="email" value="<%= theuser.getEmail() %>" required>
					</div>
					<div class="form-group">
						<label for="password">Mobile No</label>
						<input type="tel" id="mobile" name="mobile" value="<%= theuser.getMobile() %>" required>
					</div>
					<input type="hidden" name="uid" value="<%= theuser.getId() %>">
					<input type="hidden" name="upwd" value="<%= theuser.getPassword() %>">
					<input type="hidden" name="utype" value="<%= theuser.getType() %>">
					<button type="submit" class="btn-submit">Update</button>
				</form>
			</div>
		</div>
	<% } %>
</body>
</html>