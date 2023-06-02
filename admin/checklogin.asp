<%
		if session("ID_Member")="" then
				response.redirect "login.asp"
		end if
%>