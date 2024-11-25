<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./styles/slider.css">
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}./scripts/script.js"></script> --%>
</head>
<body>
	<div class="slider">
		<div class="slides">
			<div class="slide" style="background-color: #ff6f61;">Slide 1</div>
			<div class="slide" style="background-color: #6fcf97;">Slide 2</div>
			<div class="slide" style="background-color: #56ccf2;">Slide 3</div>
			<div class="slide" style="background-color: #bb6bd9;">Slide 4</div>
		</div>
		<button class="prev">&#10094;</button>
		<button class="next">&#10095;</button>
	</div>
 	<script type="text/javascript">
	    const slides = document.querySelector('.slides');
	    const slide = document.querySelectorAll('.slide');
	    const prevBtn = document.querySelector('.prev');
	    const nextBtn = document.querySelector('.next');
	
	    let currentIndex = 0;
	
	    function showSlide(index) {
	      const totalSlides = slide.length;
	      if (index >= totalSlides) {
	        currentIndex = 0;
	      } else if (index < 0) {
	        currentIndex = totalSlides - 1;
	      } else {
	        currentIndex = index;
	      }
	      const offset = -currentIndex * 100;
	      slides.style.transform = `translateX(${offset}%)`;
	    }
	
	    nextBtn.addEventListener('click', () => showSlide(currentIndex + 1));
	    prevBtn.addEventListener('click', () => showSlide(currentIndex - 1));
	
	    // Auto-slide every 5 seconds
	    setInterval(() => {
	      showSlide(currentIndex + 1);
	    }, 5000);
     </script>
</body>
</html>