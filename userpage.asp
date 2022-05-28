<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>User Page</title>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>
#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<style>

.temple{
text-align: center;
background-image:url("bel.gif");
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
}
.template table{
width:80%;
height:80%;
font-family:cambria;
}
.air{
text-align: center;
background-image:url("aro.gif");
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
}
.other{
text-align: center;
background-color:red;
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
}
.zoo{
text-align: center;
background-image:url("lion.gif");
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
}
.water{
text-align: center;
background-image:url("wat.gif");
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
}
.river{
text-align: center;
background-image:url("riv.gif");
width:20%;
top:100px;
font-size:50px;
height:20%;
 border-radius:15px;
}
.template a{
color: #f2f2f2;
}
.template a:hover{
font-size:60px;
color:yellow;
text-decoration:none;
}

</style>
</head> 
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
      <a href="#" style ="background-color: #1abc9c ; border-radius : 8px;" >Places</a>
	  <a href="#" >Review</a>
	<% if Session("uName") <> "" then %>
       <i  style="float:right;"> <a  href="logredirect.asp">  logout </a></i>
          <% End if %>
		   </div>
	<div>
      <% if Session("uName") <> "" then %>
       <li class="navi" style="float:right;display:block;text-align:center;text-decoration:none;padding:14px 24px"><i style = "color:white">Welcome: </i>
      <i style = "color:white"> <% response.Write(ucase(Session("uName")))%> </i>
          <% End if %></li> </div>
		  <div class="template">
	<table align = "center" cellpadding="2" cellspacing = "40" border =0>
<tr>
<td class="temple">
<a href="temple.asp">Temple</a>
</td>
<td class ="river">
<a href="river.asp">River</a>
</td>
<td class="water">
<a href="water.asp">Water fall</a>
</td></tr>
<tr>
<td class="zoo">
<a href="zoo.asp">Zoo</a>
</td>
<td class="air">
<a href="air.asp">AirPort</a>
</td>
<td class="other">
<a href="sendPlace.asp">Add new</a>
</td>
</tr>
</table>
</div>
   
	</body>
	</html>