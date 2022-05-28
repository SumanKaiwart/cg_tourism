<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>Waterfall</title>
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
 <% if Session("uName")= "" then
    response.redirect("userLogin.asp")
    End if %>
	<% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "waterfall", objconn, , ,2
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
    <div class="topnav">
      <a href="temple.asp">Temple </a>
	  <a href="river.asp">River </a>
	  <a href="water.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Waterfall</a>
	  <a href="zoo.asp">Zoo </a>
	  <a href="air.asp">Airport </a>
	  <a href="sendPlace.asp">Send Images </a>
	<% if Session("uName") <> "" then %>
       <i  style="float:right;"> <a  href="home.asp">  logout </a></i>
          <% End if %>
		   </div>
	<div>
      <% if Session("uName") <> "" then %>
       <li class="navi" style="float:right;display:block;text-align:center;text-decoration:none;padding:14px 24px"><i style = "color:white">Welcome: </i>
      <i style = "color:white"> <% response.Write(ucase(Session("uName")))%> </i>
          <% End if %></li></ul> </div>
		  <br>
		  <br>
		  <div>
		  <i style = "font-family:cambria;font-size:30px;">WaterFall</i><hr> <div>
<table cellspacing=20>
<% dim place  
do while not objrs.EOF%>
<tr>
<% for place = 1 to 4%>
<td class="gallery">
<a href= <%=objrs("pimage")%>><img src=<%=objrs("pimage")%> width="300" height="300"></a>
<div class="desc"><%=objrs("pname")%></div>
<div class="star">
<img src=star.jpg width=80 height = 20><br><a href = "userComment.asp"><i>Review </i></a></div>
<div class="visit"><img src=train.jpg width=30 height = 20><img src=bus.jpg width=30 height = 20><img src=plan.jpg width=30 height = 20><br>
<i style ="float:right;font-family:cambria;font-size:20px"><a href = "indiamap.html"> how to reach</a></div>
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