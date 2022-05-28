<?php
$host="localhost";
$user="root";
$pass="";
$dbname="tourism";

$conn= mysqli_connect($host,$user,$pass,$dbname);

if(!$conn)
{
  echo"connection failed";
}
else
{
	echo"connection successfully ";
}
?>
<html>
<title>Ragistration|user</TITLE>
<head>
<link rel="stylesheet" type="text/css" href="styllle.css">
</head>
<body>
<div class="bg-img">
<table>
<tr>
  <td><div><img src="lob.jpg" height=100 width=120></div></td>
  <td width=1000 style="font-size:70px;"><div><h1>Chhattisgarh Tourism<br>
  </h1></div></td></tr>
  </table>
  <div class="container">
    <div class="topnav">
      <a href="home.html">Home | </a>
      <a href="distict.html"> District |</a>
      <a href="temple.html">Temple |</a>
      <a href="river.html">River |</a>
	  <a href="zoo.html">Zoo |</a>
	  <a href="water.html">Water_fall |</a>
	  <a href="airport.html">Airport |</a>
	  <a href="loggin.html">login |</a>
    </div>
	<marquee style="color:pink;text-shadow:2px 2px red; font-size:30px;">
  Please login | to send C.G. Tourism related picture</marquee>
	</div>
	
	<div class ="register">
	
<img src = us.png class = "usr"><br><br><center>Login</center><br>
<form  method="post" id="register" action="">
<input type="text" name = "uname" id = "name" placeholder="Enter User name" ><br>
<input type="text" name = "pname" id = "password" placeholder="Enter Password" ><br><br>
<input type="submit" value = "Login"><br><br>
<a href ="#" >Forgot Password</a><br><br>
<a href ="#" >New Registration</a><br>
</form>
</div>
</body>
</html>