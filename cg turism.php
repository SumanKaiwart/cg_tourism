<html>
<title>Chhattisgarh Tourism</TITLE>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.bg-img {
  background-image: url("tiranga.jpg");
  min-height: 1300px;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.container {
  position: absolute;
  width: 1350;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 25px;
  word-spacing:20px;
  font-family:cambria;
  
}

.topnav a:hover {
  background-color: #ddd;
  color: red;
}
p{
color:yellow;
text-shadow:2px 2px red;
font-size:50px;
}
h1{
color:black;
text-shadow:2px 2px white;
text-align:left;
font-size:50px;
font-family:cambria;
}
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

.slideshow-container {
  max-width: 1300px;
  position: relative;
  margin:10px;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
<div class="bg-img">
<table>
<tr>
  <td><div><img src="lob.jpg" height=100 width=120></div></td>
  <td width=1000><div><h1>Chhattisgarh Tourism<br>
  <td><div><img src="digital-india.png" height=100 width=120></div></td>
  <marquee style="color:yellow;text-shadow:2px 2px red; font-size:30px;">
  Welcome to chhattisgarh tourism</marquee></h1></div></td></tr>
  </table>
  <div class="container">
    <div class="topnav">
      <a href="home.php">Home | </a>
      <a href="distict.html"> District |</a>
      <a href="temple.html">Temple |</a>
      <a href="river.html">River |</a>
	  <a href="zoo.html">Zoo |</a>
	  <a href="water.html">Water_fall |</a>
	  <a href="airport.html">Airport |</a>
	  <a href="loggin.html">login |</a>
    </div>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Chitrakot_Falls1.jpg" width=1400px height=437 style="width:100%">
  <div class="text">Chitrakot Falls</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="danteswari_dantewada.jpg" width=1400px height=437 style="width:100%">
  <div class="text">Danteswari dantewada</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="achanakmar.jpg" width=1400px height=437 style="width:100%">
  <div class="text">Achanakmar</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>

</body>
</html> 
