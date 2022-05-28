<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>Review</title>
<head>
<style>
.bg-img {
  background-image: url("tiranga.jpg");
  min-height: 2000px;
   width: 1350;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.topnav {
  overflow: hidden;
  background-color: #333;
  align : top;
 
}
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 5px 15px;
  text-decoration: none;
  font-size: 20px;
  word-spacing:20px;
  font-family:cambria;
  
}

.topnav a:hover {
  background-color: #ddd;
  color: red;
}

h1{
color:black;
text-shadow:2px 2px white;
valign:top;
font-size:30px;
height : 40px;
font-family:cambria;
}
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}


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
a:active {
  text-decoration: underline;
}
img{
opacity:1;
margin-top:0px;
border-radius:50px;
}
img:hover{
opacity:0.6;
}

</style>
</head>
<body>
 <% if Session("uName")= "" then
    response.redirect("userLogin.asp")
    End if %>
	<% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "place", objconn, , ,2
	%>
<div class="bg-img">

<table height=40>
<tr>
  <td width=100><div><img src="lob.jpg" height=80 width=100 style ="border-radius: 50%;"></div></td>
  <td width=1000 align="left"><div><h1>Chhattisgarh Tourism<br>
  <marquee style="color:yellow;text-shadow:2px 2px red; font-size:18px;">
  Welcome to chhattisgarh tourism</marquee></h1></div></td>
   <td width=100 align="right"><img src = "prime.jpg" height=50 width=95 style ="border-radius: 50%"><a href = "pm.html"><i style="font-size:11px;">Prime Minister of India</i></a></td>
  <td width=100 align="center"><img src = "cm.jpg" height=50 width=90 style ="border-radius: 50%"><a href = "cm.html"><i style="font-size:11px;">Chief Minister of C.G. </i></a></td>
    </tr>
  </table>
    <div class="topnav">
      <a href="place.asp">Places | </a>
	<% if Session("uName") <> "" then %>
       <i  style="float:right;"> <a  href="home.asp">  logout </a></i>
          <% End if %>
		   </div>
	<div>
      <% if Session("uName") <> "" then %>
       <li class="navi" style="float:right;display:block;text-align:center;text-decoration:none;padding:14px 24px"><i style = "color:white">Welcome: </i>
      <i style = "color:white"> <% response.Write(ucase(Session("uName")))%> </i>
          <% End if %></li></ul> </div>
		  <br><br>
		  <br>
<table align="center">
    <form>
	<tr>
	<td>
	<select>
	<option>Select...</option>
	<% do while not objrs.EOF%>
	<option><%=objrs("pname")%></option>
<%
objrs.MoveNext
loop
objrs.close
set objrs = Nothing

objconn.close
set objconn = Nothing 
%>
	</select> </td>
	<td><input type = "Submit" value = "Seach Temple"></td> 
	</form>
	</table>
	</body>
	</html>