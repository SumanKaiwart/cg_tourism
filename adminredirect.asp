
<html>
<head>
    
    <title></title>
</head>
<body>
    <%if request.Form("name") ="" OR request.Form("password")="" then
        Session("AdminLogin")="abcd"
        response.Redirect("AdminLogin.asp")
        End if%>
    <% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "admin", objconn, , ,2
    do until objrs.EOF
    if request.Form("name")=objrs("aname") AND request.Form("password")=objrs("apassword") then
    Session("adminname")=objrs("aname")
    response.redirect("Adminpage.asp")
    'session variable must be defined here
   End if
    objrs.MoveNext
    Loop
        Session("areturn")="areturn"
        response.Redirect("AdminLogin.asp")
    
    objrs.Close
    set objrs= nothing
    objconn.Close
    set objconn= nothing
       %>
</body>
</html>