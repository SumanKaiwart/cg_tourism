<%@ Language= VBScript %>
<% Option Explicit %>
<% 
dim con
set con = server.createobject("ADODB.Connection")
con.ConnectionString = "DSN=cg.dsn"
con.open
dim rs
set rs = server.createobject("ADODB.Recordset")
rs.open "user", con, 3, 2
%>
<html>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<style>
 .register{
	 width:350px;
	 height:300px;
	 position:relative;
	 left:500px;
	 top:70px;
	 background-color:plum;
	 
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
	 color:#fff;
	 font-size:16px;
	 background-color:lime;
	 cursor:pointer;
	 border-radius:20px;
	 
 }
  .register input[type="submit"]:hover,.register input[type="reset"]:hover
  {
	  background:red;
	  color:$262626;
	  
  }
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
background-color:lightpink;
}
</style>
</head>

<body id = "abe">
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
      <a href="Addplace.asp">Add Place </a>
      <a href="Viewplace.asp" >View Place </a>
      <a href="Viewuser.asp" style ="background-color: #1abc9c ; border-radius : 8px;">View User </a>
	  <a href="Viewfeed.asp">View Feedback </a>
	  <a href="PlaceRecieved.asp">Received Image </a>
	  <% if Session("adminname") <> "" then %>
         <i  style="float:right;"> <a  href="home.asp">  logout </a></i>
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
<form method = "post" action ="searchUser.asp">
User Name <select name = "place">
<option>Select..</option>
<% do until rs.EOF
%>
<option value = "<%=rs("uname")%>"><%=rs("uname")%></option><%rs.MoveNext
loop 
rs.close
set rs = Nothing

con.close
set con = Nothing 
%>%></select>
<input type = "submit" value = "search">
</form>
</div>
<% 
dim conn
set conn = server.createobject("ADODB.Connection")
conn.ConnectionString = "DSN=cg.dsn"
conn.open
dim rss
set rss = server.createobject("ADODB.Recordset")
rss.open "user", conn, 3, 2
%>
<table align = "center" border = "1" cellpadding ="7" cellspacing ="6" class = "boder">
<br>
<br>
<tr>
<th>User Name</th>
<th>Gender</th>
<th>Location</th>
<th>E-mail</th>
<th>Mobile Number</th>
</tr>
<% do while not rss.EOF
if request.Form("place")=rss("uname")then
%>
<tr>
<td><%=rss("uname")%></td>
<td><%=rss("ugender")%> </td>
<td><%=rss("ulocation")%></td>
<td><%=rss("uemail")%></td>
<td><%=rss("umobile")%></td>
</tr>
<%
end if 
rss.MoveNext
loop
rss.close
set rss = Nothing

conn.close
set conn = Nothing 
%>
</table>
</body>
</html>