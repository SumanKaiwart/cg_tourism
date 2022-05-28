<html>
<title>Chhatisgarh Tourism</TITLE>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.animate{
  width: 40px;
  height: 20px;
  background-color: red;
  animation-name: example;
  animation-duration: 200ms;
  animation-iteration-count : infinite;
  animation-direction : alternate;
}

@keyframes example {
from{ 
  color : yellow;
  background-color: red;}
to
  {color : red;
  background-color: yellow;}
}
.notify{
 float : right;
 background-color : white;
 border-radius : 12px 12px 0 0 ;
 height : 300px;
  width:500px;
  margin-left:50px;
}
.head{
background-color : deepskyblue;
text-align:center;
border-radius : 12px 12px 0 0;
font-size : 20px;
height : 30px;
}
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1100px;
  max-height : 500px;
  position: relative;
  margin:5px;
  align: center;
  border-radius:50px;
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
</style>
</head>
<body id="abe">
<div class="bg-img">
<table height=40>
<tr>
  <td width=100><div><img src="lob.jpg" height=80 width=100 style ="border-radius: 50%;"></div></td>
  <td width=1000 align="left"><div><h1>Chhattisgarh Tourism<br>
  <marquee style="color:yellow;text-shadow:2px 2px red; font-size:18px;">
  Welcome to chhattisgarh tourism</marquee></h1></div></td>
  <td width=100 align="right" ><img src = "prime.jpg" height=50 width=90 style ="border-radius: 50%;font-size:100px"><font size=2><a href = "pm.html"><br>श्री नरेंद्र मोदी<br>मान‍. प्रधानमंत्री</a></font></td>
  <td width=100 align="center"><img src = "cm.jpg" height=50 width=90 style ="border-radius: 50%; horizontal-align: middle ;"><font size=2><a href = "cm.html"> श्री भूपेश बघेल <br>
मान‍. मुख्यमंत्री</td></font></a>
<td width=100 align="center"><img src = "tourismMinister.jpg" height=50 width=100 style ="border-radius: 50%"><a href = "#"><font size=2>श्री प्रहलाद सिंग पटेल <br>मान.  पर्यटन मंत्री </a></font></td>
    <td width=100 ><img src = "flag.gif";  height=80 width=100"></td></tr>
  </table>

    <div class="topnav">
      <a href="home.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Home </a>
	   <a href="temples.asp">Temple</a>
	  <a href="rivers.asp">River</a>
	  <a href="waters.asp">Waterfall</a>
	  <a href="zoos.asp">Zoo </a>
	  <a href="airs.asp">Airport </a>
	   <a href="districts.asp">District </a>
      <a href="abouts.html">About Us </a>
      <a href="userLogin.asp">User Login </a>
	  <a href="AdminLogin.asp">Admin </a>
	  <a href="registration.asp">Register </a>
    </div>
	
	<table >
	<tr><td width ="1100" height = "300">

<div class="slideshow-container">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Chitrakot_Falls1.jpg" width=1400px height=200 style="width:100%;border-radius: 50px;" border="2px" >
  <div class="text">Chitrakot Falls</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="danteswari_dantewada.jpg" width=1400px height=200 style="width:100%;border-radius: 50px;" border="2px">
  <div class="text">Danteswari dantewada</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="achanakmar.jpg" width=1400px height=200 style="width:100%;border-radius: 50px;" border="2px">
  <div class="text">Achanakmar</div>
</div>
</div>
<br>
<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div></td>
<td valign=top><strong><center>Chhatisgarh MAP</center></strong><br>
<a href="map.png"><img src="map.png" width=150 hight=90 border="2px" style = "border-radius: 50px;"></a>
</td>
</table>
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
<table height=900 weight=1450 >
<tr style="text-align:left; font-size:30px;">
<th><Strong>HISTORY</strong></th>


</tr>
<tr>
<td>
<br>
<strong>Ancient and medieval history</strong><br>
<p>In ancient times, this region was known as Dakshina Kosala. This area also finds mention in Ramayana and Mahabharata. One of the earliest statues of Vishnu has been excavated from Shunga period site at Malhar. Between the sixth and twelfth centuries, Sharabhpurias, Panduvanshis (of Mekala and Dakshina Kosala), Somavanshi, Kalachuri and Nagavanshi rulers dominated this region. The Bastar region of Chhattisgarh was invaded by Rajendra Chola I and Kulothunga Chola I of the Chola dynasty in the 11th century.
</p>
<br><strong>Colonial and post-independence history</strong><br>
<p>Chhattisgarh was under Maratha rule (Bhonsales of Nagpur) from 1741 to 1845 AD. It came under British rule from 1845 to 1947 as the Chhattisgarh Division of the Central Provinces. Raipur gained prominence over the capital Ratanpur with the advent of the British in 1845. In 1905, the Sambalpur district was transferred to Odisha and the estates of Surguja were transferred from Bengal to Chhattisgarh.
The area constituting the new state merged into Madhya Pradesh on 1 November 1956, under the States Reorganisation Act, 1956 and remained a part of that state for 44 years. Prior to it's becoming a part of the new state of Madhya Pradesh, the region was part of old Madhya Pradesh State, with its capital at Bhopal. Prior to that, the region was part of the Central Provinces and Berar (CP and Berar) under British rule. Some areas constituting the Chhattisgarh state were princely states under the British rule, but later on were merged into Madhya Pradesh.
</p><br><strong>Separation of Chhattisgarh</strong><br>

<p>The present state of Chhattisgarh was carved out of Madhya Pradesh on 1 November 2000.[7][8] The demand for a separate state was first raised in the 1920s. Similar demands kept cropping up at regular intervals; however, a well-organised movement was never launched. Several all-party platforms were formed and they usually resolved around petitions, public meetings, seminars, rallies and strikes.[30] A demand for separate Chhattisgarh was raised in 1924 by the Raipur Congress unit and also discussed in the Annual Session of the Indian Congress at Tripuri. A discussion also took place of forming a Regional Congress organisation for Chhattisgarh. When the State Reorganisation Commission was set up in 1954, the demand for a separate Chhattisgarh was put forward, but was not accepted. In 1955, a demand for a separate state was raised in the Nagpur assembly of the then state of Madhya Bharat.

The 1990s saw more activity for a demand for the new state, such as the formation of a statewide political forum, especially the Chhattisgarh Rajya Nirman Manch. Chandulal Chadrakar led this forum, several successful region-wide strikes and rallies were organised under the banner of the forum, all of which were supported by major political parties, including the Indian National Congress and the Bharatiya Janata Party.[30]

The new National Democratic Alliance (NDA) government sent the redrafted Separate Chhattisgarh Bill for the approval of the Madhya Pradesh Assembly, where it was once again unanimously approved and then it was tabled in the Lok Sabha. This bill for a separate Chhattisgarh was passed in the Lok Sabha and the Rajya Sabha, paving the way for the creation of a separate state of Chhattisgarh. The President of India gave his consent to the Madhya Pradesh Reorganisation Act 2000 on 25 August 2000. The Government of India subsequently set 1 November 2000, as the day the state of Madhya Pradesh would be divided into Chhattisgarh and Madhya Pradesh.[30] 
</p></td>
<td valign=top>
<div class = "notify"><div class = "head">Updated News!!</div><marquee direction = "up">
  <b class ="animate">New</b><a href = "chhattisgarh.pdf">GOVERNMENT OF INDIA  MINISTRY OF TOURISM & CULTURE DEPARTMENT OF TOURISM MARKET RESEARCH DIVISION</a></marquee></div>
<p><strong>Government of Chhatisgarh</strong> </p>
The Government of Chhattisgarh also known as the State Government of Chhattisgarh, or locally as State Government, is the supreme governing authority of the Indian state of Chhattisgarh and its 27 districts. It consists of an executive, led by the Governor of Chhattisgarh, a judiciary and a legislative branch.
 
Like other states in India, the head of state of Chhattisgarh is the Governor, appointed by the President of India on the advice of the Central government. His or her post is largely ceremonial. The Chief Minister is the head of government and is vested with most of the executive powers. Raipur is the capital of Chhattisgarh, and houses the Chhattisgarh Vidhan Sabha (Legislative Assembly) and the secretariat. The Chhattisgarh High Court, located Bilaspur, has jurisdiction over the whole state
<br>
<p><strong>List of Chief Ministers</strong><br>

1.Ajeet Pramod Kumar Jogi, Indian National Congress Party
2.Raman Singh, Bhartiya Janta Party<br>
3.Bhupesh Baghel, Indian National Congress Party</p></td>

</tr>
</table>
</body>
</html> 
