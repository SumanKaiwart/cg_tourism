<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>Send place Image</title>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<script>
function varify()
{
 var n = document.forms[0].elements.length;
 r = "";
 for(i=0;i<n;i++)
 {
  r = document.forms[0].elements[i].name;
   if(document.forms[0].elements[i].value=="")
   {
    alert(r+"is not filled.please filled it" );
	document.forms[0].elements[i].focus();
   break;
   }
 }
 if(i==n)
 {
 alert("Image send, Thanks for sending!!!");
 }
}

</script>
<style>
 .register{
	 width:450px;
	 height:400px;
	 position:relative;
	 left:500px;
	 top:70px;
	 background-image:url("ima.jpg");
	 background-repeat: no-repeat;
     background-size: cover;
     position: relative;
	 border-radius:15px;
	 text-align:left;
	 padding:15px;
 }
 .register input[type="submit"],.register input[type="reset"]
 {
	 width:80%;
	 border:none;
	 outline:none;
	 height:40px;
	 color:black;
	 font-size:16px;
	 background-color:skyblue;
	 cursor:pointer;
	 border-radius:20px;
	 
 }
  .register input[type="submit"]:hover,.register input[type="reset"]:hover
  {
	  background:yellow;
	  color:$262626;
	  
  }
  b{
  color:white;
  
  }
</style>
</head>
<body id="abe">
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
      <a href="temple.asp">Temple  </a>
	  <a href="river.asp">River </a>
	  <a href="water.asp">Waterfall </a>
	  <a href="zoo.asp">Zoo </a>
	  <a href="air.asp">Airport </a>
	  <a href="sendPlace.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Send Images</a>
	<% if Session("uName") <> "" then %>
       <i  style="float:right;"> <a  href="logredirect.asp">  logout </a></i>
          <% End if %>
		   </div>
	<div>
      <% if Session("uName") <> "" then %>
       <li class="navi" style="float:right;display:block;text-align:center;text-decoration:none;padding:14px 24px"><i style = "color:white">Welcome: </i>
      <i style = "color:white"> <% response.Write(ucase(Session("uName")))%> </i>
          <% End if %></li></ul> </div>
<form class = "register" method = "post" action ="userSendImg.asp">
		  <table align ="center" cellspacing = "6" cellpadding = "10">
		  
		  <caption><b>Send Image</b></caption>
		  <tr>
		  <td><b>Place Name</b>
		  </td>
		  <td><input type ="text" name="name" placeholder = "Enter image name">
		  </td>
		  </tr>
		   <tr>
		  <td><b>Add Image</b>
		  </td>
		  <td><input type ="file" name="image"  >
		  </td>
		  </tr>
		   <tr>
		  <td><b>Location</b>
		  </td>
		  <td><input type ="text" name="location" placeholder = "Enter location" >
		  </td>
		  </tr>
		   <tr>
		  <td><b>Tags</b>
		  </td>
		  <td><input type ="text" name="tags" placeholder = "ex. Temple,river,zoo!!" >
		  </td>
		  </tr>
		   <tr cellspacing = "5">
		  <td ><input type ="reset" name="reset" value = "Reset" >
		  </td>
		  <td ><input type ="submit" name="submit" value= "submit" onclick="varify()" >
		  </td>
		  </tr>
		  </table>
		  </form>
 </body>
 </html>