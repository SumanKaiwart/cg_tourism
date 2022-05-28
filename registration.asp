<html>
<title>Registration</TITLE>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<style>
.user{
text-align: center;
background-color:red;
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
 font-family:cambria;
}
.admin{
text-align: center;
background-color:yellow;
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
 font-family:cambria;
}
.user a:hover{
font-size:60px;
color:yellow;
text-decoration:none;
font-family:cambria;
}
.admin a:hover{
font-size:60px;
color:white;
text-decoration:none;
font-family:cambria;
}
</style>
</head>
<% if Session("uName")<>"" then
       response.redirect("Adminpage.asp")
           End if %>
<body id = "abe">
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
      <a href="home.asp">Home </a>
	      <a href="temples.asp" >Temple</a>
	  <a href="rivers.asp">River</a>
	  <a href="waters.asp" >Waterfall</a>
	  <a href="zoos.asp">Zoo </a>
	  <a href="airs.asp">Airport </a>
	   <a href="districts.asp" >District </a>
      <a href="abouts.html">About Us </a>
      <a href="userLogin.asp">User Login </a>
	  <a href="AdminLogin.asp">Admin </a>
	  <a href="registration.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Register </a>
    </div>
<table align = "center" cellpadding="4" cellspacing = "40" border =0>
<tr>
<td class="user">
<a href="userRegister.asp">User Registration</a>
</td>
<td class ="admin">
<a href="AdminRegister.asp">Admin Registration</a>
</td>
</tr>
</table>
</body>
</html>