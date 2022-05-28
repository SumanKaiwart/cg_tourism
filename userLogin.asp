<html>
<title>User Login</TITLE>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<style>
.resi{
float : right ;
}
#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<link rel="stylesheet" type="text/css" href="animate.css">
</head>
<% if Session("uName")<>"" then
       response.redirect("userpage.asp")
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
      <a href="userLogin.asp" style ="background-color: #1abc9c ; border-radius : 8px;">User Login </a>
	  <a href="AdminLogin.asp">Admin </a>
	  <a href="registration.asp">Register </a>
    </div>
<div class ="register">

<img src = us.png class = "usr"><br><br><center>User Login</center><br>
<form  method="post" id="register" action="userredirect.asp">

<div>
		User Name<input type="text" name = "name" id = "name" placeholder="Enter User name" ><br>
Password<input type="password" name = "password" id = "password" placeholder="Enter Password" >
 </div>
         <p>
        <%if Session("userLogin")="abcd" then %>
        <h5 style ="color:red;">Please Fill Every Fields</h5>
        <%Session.Abandon %>
        <%End if %> 
		<%if Session("ureturn")="ureturn" then%>
		<h5 style ="color:red;">Please Enter correct data</h5>
         <%Session.Abandon 
              End if%> </p>
<div><input type="submit" value = "Login"></div>
<hr>
<div class = "resi">Not a member ? <a href = "userRegister.asp">Click here </a></div>
</form>
</div>
</body>
</html>