<!--#include file="../include/connection.asp"-->
<%
	username=request("username")
	password=request("password")
	
	Set cn=Server.CreateObject("ADODB.Connection")
	cn.open Connect
	
	Set rs=Server.CreateObject("ADODB.Recordset")
	sql="select ID_Member from Member Where Username='"&username&"' and Password='"&password&"' and Status="&true
	rs.open sql,cn,1,3
		if not(rs.eof) then
			session("ID_Member")=rs("ID_Member")
			response.redirect "default.asp"
		else
			response.redirect "login.asp?Error=ข้อมูลการเข้าสู่ระบบไม่ถูกต้อง"
		end if
	cn.Close
	Set cn=nothing
%>