<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>Share Experience</title>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<script>
    function msg()
	{
    alert("your feedback has succesfully posted !")
	}
</script>
<link rel = "stylesheet" type="css/text" href = "wstyle.css">
<style>
.container{
	 height:500px;
	 position:relative;
	 background-image : url("login.jpg");
	  background-repeat: no-repeat;
	  background-size: cover;
  position: relative;
	 text-align:left;
	 padding:15px;
}
 .container input[type="submit"]
 {
	 border:none;
	 outline:none;
	 height:30px;
	 color:#fff;
	 font-size:20px;
	 background-color:rgb(255,38,126);
	 cursor:pointer;
	 border-radius:20px;
	 
 }
  .register input[type="submit"]:hover
  {
	  background:#efed40;
	  color:$262626;
	  
  }
   .container input[type="reset"]
 {
	 border:none;
	 outline:none;
	 height:30px;
	 color:#fff;
	 font-size:20px;
	 background-color:rgb(255,38,126);
	 cursor:pointer;
	 border-radius:20px;
	 
 }
  .register input[type="reset"]:hover
  {
	  background:#efed40;
	  color:$262626;
	  
  }
 .navi{
  color : white;
  font-family : cambria;
 }
 .container input[type="text"]
 {
	 width:100%;
	 margin-bottom:20px;
	 border:none;
	 border-bottom:1px solid #fff;
	 background:transparent;
	 outline:none;
	 height:40px;
	 color:#fff;
	 font-size:20px;
	 
 }
</style>
</head>
<body id = "abe">
 <% if Session("uName")= "" then
    response.redirect("userLogin.asp")
    End if %>
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
      <a href="temple.asp">Temple</a>
	  <a href="river.asp">River</a>
	  <a href="water.asp">Waterfall</a>
	  <a href="zoo.asp">Zoo </a>
	  <a href="air.asp">Airport </a>
	  <a href="sendPlace.asp">Send Images</a>
	<% if Session("uName") <> "" then %>
       <i  style="float:right;"> <a  href="logredirect.asp">  logout </a></i>
          <% End if %>
		   </div>
	<div>
      <% if Session("uName") <> "" then %>
       <li class="navi" style="float:right;display:block;text-align:center;text-decoration:none;padding:14px 24px"><i style = "color:white">Welcome: </i>
      <i style = "color:white"> <% response.Write(ucase(Session("uName")))%> </i>
          <% End if %></li></ul> </div>
	<div class="container">
	 <form method = "post" action = "Commentredirect.asp"><center>
		 <% if Session("uName") <> "" then %>
       <p class="navi"><i>Welcome: </i>
       <% response.Write(ucase(Session("uName")))%>
          <% End if %></p><hr></center>
		  <br><br>
		 <p class="navi">Share details of your own experience at this place </p><br><br>
		<b> Enter Place Name </b><br><input type = "text" name = "place"><br>
<b>Comment </b> <br>
<input type = "text"  name = "comment" "><br><br><br><br>
<input type = "reset" value="Reset" padding = "15">
<input type="submit" value="Post" onclick = "msg()">		 
		 </form>
	</div>
	</div>
	</body>
	</html>