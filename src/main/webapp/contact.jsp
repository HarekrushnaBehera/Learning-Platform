<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.org.dto.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        .contact-head {
            width: 90vw;
            margin: 20px auto;
            text-align: center;
        }
        .contact-page {
            padding: 1rem 0;
            display: flex;
            background: #f8f9fa;
        }
        .contact-info,
        .contact-form {
            margin: 1rem auto;
            text-align: center;
        }
        .contact-info h2,
        .contact-form h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }
        .info-cards {
            display: flex;
            justify-content: center;
            flex-direction: column;
            gap: 1.5rem;
            margin-top: 1rem;
            flex-wrap: wrap;
        }
        .card {
            background: white;
            padding: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            max-width: 300px;
        }
        .card h3 {
            margin-bottom: 0.5rem;
            font-size: 1.25rem;
            color: #0044cc;
        }
        .card a {
            color: #0044cc;
        }
        form {
            max-width: 800px;
            width: 600px;
            margin: 0 auto;
            text-align: left;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 0.5rem;
        }
        input,
        textarea {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }
        textarea {
            min-height: 100px;
        }
        .btn {
            display: inline-block;
            background: #0044cc;
            color: white;
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background: #002a80;
        }
        .map {
            height: auto;
            width: 80vw;
            margin: auto;
            text-align: center;
            margin-top: 80px;
            margin-bottom: 30px;
        }
        .map-text {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px;
        }
        .map-text i {
            font-size: 18px;
            margin: 0px 6px;
            padding-top: 2px;
        }
        .map-text p {
            font-size: 19px;
        }
        iframe {
            height: 70vh;
            width: 100%;
            border: none;
        }
    </style>
    <script src="https://kit.fontawesome.com/288fc987b1.js" crossorigin="anonymous"></script>
</head>
<body>
	<% User user = (User) session.getAttribute("userObj");
	if (user == null) { %>
		<%@ include file="/components/indexNavbar.jsp"%>
	<% } else { %>
		<%@ include file="/components/indexNavbar.jsp"%>
	<% } %>
    <div class="contact-head">
        <h2>Contact Us</h2>
        <p>We're here to help you with your educational journey. Reach out to us using the details below or the form provided.</p>
    </div>
    <main class="contact-page">
        <section class="contact-info">
            <div class="info-cards">
                <div class="card">
                    <h3>Address</h3>
                    <p>Nayapalli, Block N1<br> IRC Village, Bhubaneswar, 751015</p>
                </div>
                <div class="card">
                    <h3>Email</h3>
                    <p><a href="contact@elearning.com">contact@elearning.com</a></p>
                </div>
                <div class="card">
                    <h3>Phone</h3>
                    <p>+917846976004</p>
                </div>
            </div>
        </section>
        <section class="contact-form">
            <h2>Send Us a Message</h2>
            <form action="#" method="post">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" placeholder="Your Full Name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Your Email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" placeholder="Write your message here..." required></textarea>
                </div>
                <button type="submit" class="btn">Send Message</button>
            </form>
        </section>
    </main>
    <div class='map-text'>
        <i class="fa fa-map-marker" aria-hidden="true"></i>
        <p>Block N1, IRC Village, Bhubaneswar, PIN-751015</p>
    </div>
    <div class="map-location">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3742.2143221653473!2d85.80617937499785!3d20.29139408117988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a1909d2c7bf0671%3A0x64d16fd13e19ae5b!2sM-1%2F307%2C%20N1%2C%20Block%20N1%2C%20Irc%2C%20Nayapalli%2C%20Bhubaneswar%2C%20Odisha%20751015!5e0!3m2!1sen!2sin!4v1732859366244!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
</body>
</html>