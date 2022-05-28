<html>
<head>
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
<body>
    <% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "place", objconn, , ,2
	%>
<table cellspacing=20>
<% dim place  
do while not objrs.EOF%>
<tr>
<% for place = 1 to 2%>
<td class="gallery">
<a href="bamleshwari_rajnandgaon.png"><img src=<%=objrs("pimage")%> width="300" height="300"></a>
<div class="desc"><%=objrs("pname")%></div>
<div class="star">
<img src=star.jpg width=80 height = 20><br><a href = "review.asp"><i>Review </i></a></div>
<div class="visit"><img src=train.jpg width=30 height = 20><img src=bus.jpg width=30 height = 20><img src=plan.jpg width=30 height = 20><br>
<i style ="float:right;font-family:cambria;font-size:20px"><a href = "indiamap.html"> how to reach</a></div>
</td>
<% objrs.MoveNext
next %>
</tr>
<%
objrs.MoveNext
loop
objrs.close
set objrs = Nothing

objconn.close
set objconn = Nothing 
%>
</table>
</body>
</html>