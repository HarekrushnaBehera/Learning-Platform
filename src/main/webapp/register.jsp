<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
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
            margin-bottom: 10px;
            font-size: 24px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .form-group input:focus,
        .form-group select:focus {
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
        @media (max-width: 500px) {
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
	<%@ include file="/components/indexNavbar.jsp" %>
	<div class="reg_form">
	    <div class="form-container">
	        <h2>Register</h2>
	        <form action="saveuser" method="post">
	            <div class="form-group">
	                <label for="name">Full Name</label>
	                <input type="text" id="name" name="name" placeholder="Enter your name" required>
	            </div>
	            <div class="form-group">
	                <label for="name">Age</label>
	                <input type="number" id="age" name="age" placeholder="Enter your Age" required>
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
	                <div class="form-group">
	                    <label for="role">Role</label>
	                    <select id="role" name="type" required>
	                        <option value="">Select your role</option>
	                        <option value="admin">Admin</option>
	                        <option value="user">User</option>
	                    </select>
	                </div>
	            </div>
	            <div class="form-group">
	                <label for="email">Email Address</label>
	                <input type="email" id="email" name="email" placeholder="Enter your email" required>
	            </div>
	            <div class="form-group">
	                <label for="password">Password</label>
	                <input type="password" id="password" name="password" placeholder="Enter your password" required>
	            </div>
	            <div class="form-group">
	                <label for="password">Mobile No</label>
	                <input type="tel" id="mobile" name="mobile" placeholder="Enter your Mobile Number" required>
	            </div>
	            <button type="submit" class="btn-submit">Register</button>
	            <div class="red">
	                <p>Already have an account ?</p>
	                <a href="index.jsp">login here</a>
	            </div>
	        </form>
	    </div>
    </div>
</body>
</html>