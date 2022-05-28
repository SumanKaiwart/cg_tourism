<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>Temple</title>
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
      <a href="temples.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Temple</a>
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
		  <br>
		  <br>
		  <div>
		  <i style = "font-family:cambria;font-size:30px;">Temples</i><hr> <div>
<table cellspacing=20>
<% dim place  
do while not objrs.EOF%>
<tr>
<% for place = 1 to 4%>
<td class="gallery">
<a href= <%=objrs("file")%>><img src=<%=objrs("pimage")%> width="300" height="300"></a>
<div class="desc"><a href= <%=objrs("filename")%>><%=objrs("pname")%></a></div>
<div class="star">
<img src=star.jpg width=80 height = 20><br><a href = "userComment.asp"><i>Review </i></a></div>
<div class="visit"><img src=train.jpg width=30 height = 20><img src=bus.jpg width=30 height = 20><img src=plan.jpg width=30 height = 20><br>
<i style ="float:right;font-family:cambria;font-size:20px"><a href=<%=objrs("filereach")%>> how to reach</a></div>
</td>
<%objrs.MoveNext
next %>
</tr>
<%
objrs.MoveNext
loop
objrs.close
set objrs = Nothing

objconn.close
set objconn = Nothing 
%>
</table>
</body>
</html>