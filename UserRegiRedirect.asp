<html>
<title>User|Registration</TITLE>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
</head>
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
	  <a href="district.asp">District  </a>
      <a href="about.html">About Us </a>
      <a href="userLogin.asp">User </a>
	  <a href="AdminLogin.asp">Admin </a>
	  <a href="registration.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Register </a>
    </div>
	<% dim objconn, objrs, count
	  count = 0
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open %>
	<%
	dim bolAlreadyExist
	if Request.Form("uname")= "" or Request.Form("gender") = "" or Request.Form("password")="" or Request.Form("dob") = "" or Request.Form("address")="" or Request.Form("location") = "" or Request.Form("email") = ""  or Request.Form("mobile") = "" then 
	Session("userlogin")="abcd"
        response.Redirect("userRegister.asp")
	else
		bolAlreadyExist = false
		Set objrs= server.createObject("ADODB.RecordSet")
	    objrs.open "user", objconn, ,3 ,2 %>
	    
		<%do until objrs.EOF
        count=count+1
        objrs.MoveNext
        Loop
        %>
	
	<%  do while not (objrs.EOF or bolAlreadyExist)
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
			objrs("uId")= "USER"&Cstr(count)
			objrs("uname") = Request.Form("uname")
			objrs("ugender") = Request.Form("gender")
			objrs("upassword") = Request.Form("password")
			objrs("udob") = Request.Form("dob")
			objrs("uaddress") = Request.Form("address")
			objrs("ulocation") = Request.Form("location")
			objrs("uemail") = Request.Form("email")
			objrs("umobile") = Request.Form("mobile")
			objrs.Update
			Session("uID")= "USER"&Cstr(count)
			%>
			<center> <i>Thanks for registering</i> <br>
			For login <a href = "userLogin.asp">click here</a> 
			</center>
    <%
	else 
		response.write "<a href ='userRegister.asp'> Try Again </a>" 
	end if
	objrs.Close
    set objrs= nothing
	end if
    objconn.Close
    set objconn= nothing
       %>
</body>
</html>	