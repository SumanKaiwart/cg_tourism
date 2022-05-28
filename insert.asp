<%@ language=vbscript %>
<%option explicit %>
<html>
<body>
<%
dim objconn
set objconn = Server.CreateObject("ADODB.Connection")
objconn.ConnectionString =  "DSN=cgtourism.dsn"
objconn.open
    dim objrs
	Set objrs= Server.CreateObject("ADODB.RecordSet")
    objrs.open "table", objconn, , 3, 2
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
</body>
</html>