<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>Banjari Mata Mandir</title>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<style>
.gallery {
  border: 1px solid #ccc;
}

.gallery:hover {
  border: 1px solid #777;
}

div.desc {
  padding: 10px;
  text-align: center;
  background-color: #bbb;
  font-family:cambria;
  font-size:18px;
}
div.star{
  float:left;
  padding: 10px;
  font-family:cambria;
  font-size:18px;
}
div.visit{
  float:right;
  padding: 10px;
}
.content{
margin-top : 50px;
margin-left : 40px;
margin-right : 20px;
display : flex;
align-item : center;
 font-family : cambria;
 font-size : 40px;
 color : white;
 possition : absolute;
 height : 400px;
 justify-content : space-between;
}
</style>
</head>
<body id="abe">

	<% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "temple", objconn, , ,2
	%>
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
    <div class="topnav"><a href="home.asp">Home </a>
      <a href="temple.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Temple</a>
	  <a href="river.asp">River</a>
	  <a href="water.asp">Waterfall</a>
	  <a href="zoo.asp">Zoo </a>
	  <a href="air.asp">Airport </a>
	     <a href="districts.asp">District </a>
      <a href="abouts.html">About Us </a>
      <a href="userLogin.asp">User Login </a>
	  <a href="AdminLogin.asp">Admin </a>
	  <a href="registration.asp">Register </a>
</div>
	
<html>
<head>
<title>Maa Bamleshwari Temple Dongra</title>
</head>
<body>
<div class = "content">
<div>
<h1 style ="color : red ; font-family:calibria; ">Banjari Mata Mandir<hr>
<img src = "banjarimata_raigharh.jfif" width = "350px" height = "300px" > <br></div><hr> <br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3718.7725556790465!2d81.6355007!3d21.2408659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a28ddbd270f73ad%3A0x47a408a586871e7d!2sBanjari%20Mata%20Mandir!5e0!3m2!1sen!2sin!4v1599829323023!5m2!1sen!2sin" width="100%" height="100%" frameborder="0" style="border:1;float:center;margin:20px;border-radius:15px;" aria-hidden="false" tabindex="0"></iframe>
</div>
</body>
</html>
