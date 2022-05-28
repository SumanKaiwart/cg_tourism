
<html>
<head>
    
    <title></title>
</head>
<body>
   
    <% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "place", objconn, ,3 ,2
    objrs.AddNew
    objrs("pname")=request.Form("name")
	objrs("pimage")=request.Form("image")
    objrs("plocation")=request.Form("location")
    objrs("ptags")=request.Form("tags")
    objrs.Update
    
	response.redirect("Addplace.asp")
    objrs.Close
    set objrs= nothing
    objconn.Close
    set objconn= nothing
       %>
</body>
</html>