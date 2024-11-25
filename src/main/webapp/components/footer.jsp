<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/288fc987b1.js" crossorigin="anonymous"></script>
<style type="text/css">
.footer {
    background-color: #2c3e50;
    color: #ecf0f1;
    padding: 2rem 0;padding-bottom: 0px;
    font-family: Arial, sans-serif;
}
.footer-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 1rem;
}
.footer-section {
    flex: 1 1 200px;
    margin-bottom: 1.5rem;
}
.footer-section h2 {
    font-size: 1.2rem;
    margin-bottom: 1rem;
}
.footer-section p, .footer-section ul, .footer-section a {
    font-size: 0.9rem;
    color: #ecf0f1;
    text-decoration: none;
}
.footer-section ul {
    list-style: none;
}
.footer-section ul li {
    margin-bottom: 0.5rem;
}
.footer-section a:hover {
    color: #3498db;
}
.social-icons a {
    color: #ecf0f1;
    font-size: 1.2rem;
    margin-right: 0.8rem;
    transition: color 0.3s ease;
}
.social-icons a:hover {
    color: #3498db;
}
.footer-bottom {
    text-align: center;
    padding: 1rem;
    font-size: 0.8rem;
    background-color: #222;
}
.footer-bottom p {
    color: #bdc3c7;
}
@media (max-width: 768px) {
    .footer-container {
        flex-direction: column;
        align-items: center;
    }
    .footer-section {
        flex: 1 1 100%;
        text-align: center;
    }
    .social-icons {
        display: flex;
        justify-content: center;
    }
}
</style>
</head>
<body>
	<footer class="footer">
        <div class="footer-container">
            <!-- About Section -->
            <div class="footer-section about">
                <h2>About Us</h2>
                <p>We are dedicated to providing high-quality education resources and courses for learners of all ages.
                    Join us to explore knowledge!</p>
            </div>

            <!-- Quick Links Section -->
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section contact">
                <h2>Contact Us</h2>
                <p><i class="fas fa-map-marker-alt"></i> 123 Education St, Knowledge City, 45678</p>
                <p><i class="fas fa-phone-alt"></i> +1 (555) 123-4567</p>
                <p><i class="fas fa-envelope"></i> contact@educationsite.com</p>
            </div>

            <div class="footer-section social">
                <h2>Follow Us</h2>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2023 Education Website | Designed by Your Name</p>
        </div>
    </footer>
</body>
</html>