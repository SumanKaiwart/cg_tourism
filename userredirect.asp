
<html>
<head>
    <title></title>
</head>
<body>
     <%if request.Form("name") ="" OR request.Form("password")="" then
        Session("userlogin")="abcd"
        response.Redirect("userLogin.asp")
        End if%>
    <% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "user", objconn, , ,2
do until objrs.EOF
    if objrs("uname")=request.Form("name") AND objrs("upassword")=request.Form("password") then
	Session("uName")=objrs("uname")
response.redirect("userpage.asp")
        End if
objrs.MoveNext
Loop
 Session("ureturn")="ureturn"
 response.Redirect("userLogin.asp")
 
        objrs.Close
set objrs= nothing
objconn.Close 
set objconn= nothing       
 %>
</body>
</html>