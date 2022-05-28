<html>
<title>Recieved Image</TITLE>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
background-color:lightgray;
}
.boder tr:hover{
background-color : #ccc;
cursor : pointer;
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
<td width=100 align="center"><img src = "tourismMinister.jpg" height=50 width=100 style ="border-radius: 50%"><a href = "#"><font size=2>श्री प्रहलाद सिंग पटेल <br>मान.  पर्यटन मंत्री </a></font></td>
    <td width=100 ><img src = "flag.gif";  height=80 width=100"></td></tr>
  </table>

    <div class="topnav">
      <a href="Addplace.asp">Add Place</a>
      <a href="Viewplace.asp">View Place </a>
      <a href="Viewuser.asp">View User </a>
	  <a href="Viewfeed.asp">View Feedback </a>
	  <a href="PlaceRecieved.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Received Image </a>
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
<% 
dim con
set con = server.createobject("ADODB.Connection")
con.ConnectionString = "DSN=cg.dsn"
con.open
dim rs
set rs = server.createobject("ADODB.Recordset")
rs.open "Image", con, 3, 2
%>
<br>
<br>
<br>
<table align = "center" border = "1" width = "550" class = "boder">
<tr>
<th>Place Name</th>
<th>Location</th>
<th>Tags</th>
<th>Image</th>
<th>Verify</th>
</tr>
<% do while not rs.EOF%>
<tr>
<td><%=rs("place")%></td>
<td><%=rs("Location")%></td>
<td><%=rs("Tag")%></td>
<td><img src = <%=rs("Image")%> style="width:230px;height:100px;border-radius:1px;"> </td>
<td>
<form method="post" action="sendRedirect.asp" name="verify">
<input type ="submit" value = "Accept" id = "accept" onclick = "accept()">
</td>
</tr>
</form>
<%
rs.MoveNext
loop
rs.close
set rs = Nothing

con.close
set con = Nothing 
%>
</table>
<script>
document.getElementById("accept").onclick = accept;
function accept()
{
swal("Accepted!", "user request has received!", "success");
}
</script>
</body>
</html>