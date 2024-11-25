<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Learning Platform</title>
<style type="text/css">
	.home-section {
    display: flex;
    align-items: center;
    padding: 40px 20px;
    background-color: #f4f4f9;
    height: 37vh;
}
.container {
    max-width: 1200px;
    margin: auto;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 20px;
}
.text-content {
    flex: 1 1 50%;
    text-align: center;
}
.text-content h1 {
    font-size: 2.5rem;
    color: #333;
}
.text-content p {
    margin: 20px 0;
    font-size: 1.1rem;
    color: #666;
}
.user-auth {
    display: flex;
    justify-content: center;
    gap: 10px;
}
.auth-btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    font-size: 20px;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
}
.auth-btn:first-child {
    background-color: #ff810b;
}
.auth-btn:hover {
    background-color: #0056b3;
}
.auth-btn:first-child:hover {
    background-color: #bf5c00;
}
@media (max-width: 768px) {
	.container {
        flex-direction: column;
        text-align: center;
    }
    .text-content h1 {
        font-size: 2rem;
    }
}
@media (max-width: 480px) {
    .text-content h1 {
        font-size: 1.8rem;
    }
    .text-content p {
        font-size: 1rem;
    }
    .cta-button {
        padding: 8px 16px;
        font-size: 0.9rem;
    }
}
</style>
</head>
<body>
	<%@ include file="/components/userNavbar.jsp"%>
<%-- 	<%@ include file="/components/slider.jsp" %> --%>
	<section class="home-section">
        <div class="container">
            <div class="text-content">
                <h1>Welcome to Our Learning Platform</h1>
                <p>Your journey to knowledge starts here. Explore courses, resources, and a community to help you grow.
                </p>
            </div>
        </div>
    </section>
    <%@ include file="/components/footer.jsp" %>
</body>
</html>