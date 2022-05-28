<html>
<title>User|Registration</TITLE>
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
a:link {
  text-decoration: none;
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
      <a href="home.asp">Home | </a>
	  <a href="district.asp">District | </a>
      <a href="about.html">About Us |</a>
      <a href="userLogin.asp">User |</a>
	  <a href="AdminLogin.asp">Admin |</a>
	  <a href="registration.asp"><i style ="color: yellow;">Register</i> |</a>
    </div>
	<% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "user", objconn, ,3 ,2
	dim bolAlreadyExist
	if Request.Form("uname")= "" or Request.Form("gender") = "" or Request.Form("password")="" or Request.Form("dob") = "" or Request.Form("address")="" or Request.Form("location") = "" or Request.Form("email") = ""  or Request.Form("mobile") = "" then 
	Session("userlogin")="abcd"
        response.Redirect("userRegister.asp")
	else
		bolAlreadyExist = false
		Set objrs= server.createObject("ADODB.RecordSet")
       objrs.open "user", objconn, ,3 ,2
	   do while not (objrs.EOF or bolAlreadyExist)
	    if(Strcomp(objrs("uname"),Request.Form("uname"),vbTextCompare) = 0) then
		Response.write "Username already exists"
		bolAlreadyExist = true
		end if
		 if(Strcomp(objrs("upassword"),Request.Form("password"),vbTextCompare) = 0) then
		Response.write "Password already exists"
		bolAlreadyExist = true
		end if
		objrs.Movenext
	  Loop
	  if not bolAlreadyExist then
	  objrs.AddNew
	objrs("uname") = Request.Form("uname")
	objrs("ugender") = Request.Form("gender")
	objrs("upassword") = Request.Form("password")
	objrs("udob") = Request.Form("dob")
	objrs("uaddress") = Request.Form("address")
	objrs("ulocation") = Request.Form("location")
	objrs("uemail") = Request.Form("email")
	objrs("umobile") = Request.Form("mobile")
	objrs.Update%>
	<center> <i>Thanks for registering</i> <br>
	For login <a href = "userLogin.asp">click here</a> 
	</center>
    <%
	end if
	objrs.Close
    set objrs= nothing
	end if
    objconn.Close
    set objconn= nothing
       %>
</body>
</html>	