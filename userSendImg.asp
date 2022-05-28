
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
    objrs.open "Image", objconn, ,3 ,2
    objrs.AddNew
    objrs("place")=request.Form("name")
	objrs("Image")=request.Form("image")
    objrs("Location")=request.Form("location")
    objrs("Tag")=request.Form("tags")
    objrs.Update
    objrs.MoveFirst
	response.redirect("sendplace.asp")
    objrs.Close
    set objrs= nothing
    objconn.Close
    set objconn= nothing
       %>
</body>
</html>