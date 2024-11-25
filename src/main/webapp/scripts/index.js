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