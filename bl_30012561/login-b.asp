<!--#include file="../include/connection.asp"-->
<%
	username=request("username")
	password=request("password")
	
	Set cn=Server.CreateObject("ADODB.Connection")
	cn.open Connect
	Set rs=Server.CreateObject("ADODB.Recordset")
	sql="select ID_Member from Member Where Username='"&username&"' and Password='"&password&"'"
	rs.open cn.Execute(sql)
		if not(rs.eof) then
			session("ID_Member")=rs("ID_Member")
			session("username")=username
			rs.Close
			Set rs=nothing
			cn.Close
			Set cn=nothing
			response.Redirect("../freeaspwebboard/aspboard.asp")
		else
			rs.Close
			Set rs=nothing
			cn.Close
			Set cn=nothing
			response.Redirect("../")
			'response.write(username)
		end if
%>