
<html>
<head>
    
    <title></title>
</head>
<body>
    <% dim objconn, objrs,rs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "place", objconn, ,3 ,2
	Set rs= server.createObject("ADODB.RecordSet")
	rs.open "Image", objconn, ,3 ,2
	do while not rs.EOF
		objrs.AddNew
		objrs("pname")=rs("place")
		objrs("pimage")=rs("Image")
		objrs("plocation")=rs("Location")
		objrs("ptags")=rs("Tag")
		objrs.Update
		rs.MoveNext
	loop
	
	response.redirect("PlaceRecieved.asp")
    objrs.Close
    set objrs= nothing
	rs.Close
    set rs= nothing
    objconn.Close
    set objconn= nothing
       %>
   
       
</body>
</html>