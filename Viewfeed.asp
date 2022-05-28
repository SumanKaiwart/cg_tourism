<%@ Language= VBScript %>
<% Option Explicit %>
<html>
<head>
<title>Feedback</title>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>

<style>
  .boder{
border: 2px solid black;
width : 100%;
border-collapse : collapse;
text-align : center;
}
th,td{
 padding : 5px;
}
th{
background-color:lightblue;
}
</style>
</head>

<body id="abe">
 <% if Session("adminname")= "" then
    response.redirect("AdminLogin.asp")
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
    </tr>
  </table>

    <div class="topnav">
      <a href="Addplace.asp">Add Place  </a>
      <a href="Viewplace.asp">View Place </a>
      <a href="Viewuser.asp">View User </a>
	  <a href="Viewfeed.asp" style ="background-color: #1abc9c ; border-radius : 8px;">View Feedback </a>
	  <a href="PlaceRecieved.asp">Received Image </a>
	  <% if Session("adminname") <> "" then %>
         <i  style="float:right;"> <a  href="logredirect.asp">  logout </a></i>
          <% End if %>
    </div>
	<div>
	  
      <% if Session("adminname") <> "" then %>
      <p>  <i style = "color:white;float:left;word-spacing:20px;font-size:15px">Admin: </i>
	  <i style = "color:white;float:left;word-spacing:20px;font-size:15px"> <% response.Write( ucase(Session("adminname")))%></i>
	 
      </p>
          <% End if %>
		  </div>
		  <div align="center">
<form method = "post" action ="searchFeed.asp">
name <input type = "text" name = "name">
<input type = "submit" value = "search">
</form>
</div>
<% 
dim con
set con = server.createobject("ADODB.Connection")
con.ConnectionString = "DSN=cg.dsn"
con.open
dim rs
set rs = server.createobject("ADODB.Recordset")
rs.open "comment", con, 3, 2
%>


<table align = "center" border = "1" cellpadding ="7" cellspacing ="6" class = "boder">
<caption style ="font-size:30px;color:white;text-decoration:underline;font-family:cambria">User List</caption>

<tr>
<th>Place Name</th>
<th>User Name</th>
<th>comment</th>
</tr>
<% do while not rs.EOF%>
<tr>
<td><%=rs("pname")%></td>
<td><%=rs("uname")%> </td>
<td><%=rs("comment")%></td>
</tr>
<%
rs.MoveNext
loop
rs.close
set rs = Nothing

con.close
set con = Nothing 
%>
</table>
</body>
</html>