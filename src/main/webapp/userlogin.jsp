<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<script src="https://kit.fontawesome.com/288fc987b1.js" crossorigin="anonymous"></script>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Arial', sans-serif;
	background: linear-gradient(135deg, #74ebd5, #9face6);
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	padding: 20px;
}

.login-container {
	background: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	max-width: 400px;
	width: 100%;
}

.login-container h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 24px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
	font-size: 16px;
}

.form-group input:focus {
	border-color: #74ebd5;
	outline: none;
	box-shadow: 0 0 5px rgba(116, 235, 213, 0.5);
}

.btn-login {
	width: 100%;
	padding: 10px;
	background-color: #74ebd5;
	border: none;
	color: #121111;
	font-size: 18px;
	font-weight: bold;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.btn-login:hover {
	background-color: #4cbea9;
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
.orbox {
    display: flex;
    flex-direction: column;
}
.or {
    text-align: center;
    font-weight: bold;
    font-size: 20px;
    margin: 10px 1px;
}
.social {
    width: 50%;
    margin: auto;
    display: flex;
    justify-content: center;
    gap: 20px;
}
.social i {
    font-size: 27px;
    color: black;
}
.social i:hover {
    transform: scale(1.2);
}
@media ( max-width : 500px) {
	.login-container {
		padding: 15px;
	}
	.login-container h2 {
		font-size: 20px;
	}
}
</style>
</head>
<body>
	<div class="login-container">
		<h2>User Login</h2>
		<form action="loginuser" method="post">
			<div class="form-group">
				<label for="email">Email Address</label> <input type="email"
					id="email" name="email" placeholder="Enter your email" required>
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" placeholder="Enter your password"
					required>
			</div>
			<input type="hidden" name="type" value="user">
			<button type="submit" class="btn-login">Login</button>
			<div class="red">
				<p>Already have an account ?</p>
				<a href="register.jsp">login here</a>
			</div>
		</form>
		<div class="orbox">
            <p class="or">OR</p>
            <div class="social">
                <a href="#"><i class="fa fa-google" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
            </div>
        </div>
	</div>
</body>
</html>