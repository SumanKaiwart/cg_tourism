<%@ language="VBScript"%>
<% Option Explicit %>
 <% if Session("uName")= "" then
    response.redirect("userLogin.asp")
    End if %>
    <% dim objconn, objrs
    Set objconn=server.CreateObject("ADODB.Connection")
    objconn.connectionString= "DSN=cg.dsn"
    objconn.open
    Set objrs= server.createObject("ADODB.RecordSet")
    objrs.open "comment", objconn, ,3 ,2
     objrs.AddNew
	 objrs("pname")=request.Form("place")
	 objrs("uname")=Session("uName")
	 objrs("comment")=request.Form("comment")
	 objrs.Update
	 response.Redirect("userComment.asp")
        objrs.Close
set objrs= nothing
objconn.Close 
set objconn= nothing       
 %>
