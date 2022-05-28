<%@ language=vbscript %>
<%option explicit %>

<html>
<body>
<%
dim objconn
dim objrs
set objconn = Server.CreateObject("ADODB.Connection")
objconn.Open =  "DSN=register.dsn"
'objconn.open 
	Set objrs= Server.CreateObject("ADODB.RecordSet")
	objrs.CursorType = 2
	objrs.LockType = 3
    objrs.Open "table", objconn
	objrs.AddNew
	objrs("name") = Request.Form("uname")
	objrs("gender") = Request.Form("gender")
	objrs("password") = Request.Form("password")
	objrs("dob") = Request.Form("dob")
	objrs("address") = Request.Form("address")
	objrs("location") = Request.Form("location")
	objrs("email") = Request.Form("email")
	objrs("mobile") = Request.Form("mobile")
	objrs.Update
    objrs.Close
    set objrs= nothing
    objconn.Close
    set objconn= nothing
       %>
	   successfully uploaded
</body>
</html>