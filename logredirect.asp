<%@Language=VBScript%>
<% option explicit %>
<% 
Session.Abandon 
response.redirect("userLogin.asp")
%>
