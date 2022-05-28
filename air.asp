<%@ language="VBScript"%>
<% Option Explicit %>
<html>
<title>Airport</title>
<head>
<meta charset="utf-8"><link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="menubar.css">
<link rel="stylesheet" type="text/css" href="animate.css">
<style>

#abe{font-family: 'Noto Sans', sans-serif;}
</style>
<style>
.gallery {
  border: 1px solid #ccc;
}

.gallery:hover {
  border: 1px solid #777;
}

div.desc {
  padding: 10px;
  text-align: center;
  background-color: #bbb;
  font-family:cambria;
  font-size:18px;
}
div.star{
  float:left;
  padding: 10px;
  font-family:cambria;
  font-size:18px;
}
div.visit{
  float:right;
  padding: 10px;
}
</style>
</head>
<body id="abe">
 <% if Session("uName")= "" then
    response.redirect("userLogin.asp")
    End if %>
	<% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "temple", objconn, , ,2
	%>
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
      <a href="temple.asp">Temple </a>
	  <a href="river.asp">River </a>
	  <a href="water.asp">Waterfall </a>
	  <a href="zoo.asp">Zoo </a>
	  <a href="air.asp" style ="background-color: #1abc9c ; border-radius : 8px;">Airport </a>
	  <a href="sendPlace.asp">Send Images </a>
	<% if Session("uName") <> "" then %>
       <i  style="float:right;"> <a  href="home.asp">  logout </a></i>
          <% End if %>
		   </div>
	<div>
      <% if Session("uName") <> "" then %>
       <li class="navi" style="float:right;display:block;text-align:center;text-decoration:none;padding:14px 24px"><i style = "color:white">Welcome: </i>
      <i style = "color:white"> <% response.Write(ucase(Session("uName")))%> </i>
          <% End if %></li></ul> </div>
		  <br>
		  <br>
		  <div>
		  <i style = "font-family:cambria;font-size:30px;">Airports</i><hr><br>
<table>
<tr style=font-size:20px;>
<td>
<H2>Airports in Chhattisgarh</H2>
<ul type='circle'>
<a href="bilaspurA.html">
<li>Bilaspur Airport Chakarbhata, Chhattisgarh</li></a>
<a href="raipurA.html">
<li>Swami Vivekananda Airport, Raipur Atal Nagar, Chhattisgarh</li></a>
<a href="raigarhA.html">
<li>Raigarh Airport
Kondatarai, Chhattisgarh</li></a>
<a href="korbaA.html">
<li>Korba Airport Balco, Chhattisgarh</li></a>
<a href="kotaA.html">
<li>Kota Road Air Strip Bharari, Chhattisgarh</li></a>
<a href="helipadA.html">
<li>Tempory Helipade Pendridih, Chhattisgarh</li></a>
<a href="jindalA.html">
<li>O.P. Jindal Airport Chiraipani, Chhattisgarh</li></a>
<a href="seclA.html">
<li>SECL helipad no 2 Bilaspur, Chhattisgarh</li></a>
<a href="vasantA.html">
<li>Vasant Vihar Helipad Bilaspur, Chhattisgarh</li></a>
<a href="tjisA.html">
<li>TJIS Helipad Bilaspur, Chhattisgarh</li></a>
<a href="bastarA.html">
<li>Airport Bastar Jagdalpur
075878 33897</li></a>
<a href="arasmetaA.html">
<li>Arasmeta Helipad Arasmeta, Chhattisgarh</li></a>
<a href="helipadA.html">
<li>Helipad Chaiturgarh Lapha, Chhattisgarh
077470 06332</li></a>
<a href="niranjanA.html">
<li>Niranjan Prasad Kesharwani International Airport Mungeli, Chhattisgarh</li></a>
<a href="htpsA.html">
<li>HTPS VIP Port Korba, Chhattisgarh</li></a>
<a href="ambikapurA.html">
<li>Ambikapur Airport Darima, Chhattisgarh</li></a>
</ul>
</td>
<td><H2>Airport Map</h2>
<img src="mapb.jpg"width=700 height=400>
</td>
</tr>
</table>
</body>
</html>