<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<%
Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect

url=request.ServerVariables("HTTP_REFERER")
x=request.ServerVariables("QUERY_STRING")
if instr(url,"?")<=0 and x<>"" then url=url&"?"&x

gtable=request("gtable")
id=split(request("id"),",")

	for i = 0 to ubound(id)
		Set rs=Server.CreateObject("ADODB.Recordset")
		sql="select * from "&gtable&" Where ID_"&gtable&"="&id(i)
		rs.open sql,cn,1,3
				if not(rs.eof) then
						Set fso=CreateObject("Scripting.FileSystemObject")
						iPath=Server.MapPath("../image/upload/"&gtable&"/"&rs("image"))
							if fso.FileExists(iPath) then
								fso.DeleteFile iPath
							end if
						Set fso=nothing
						if lcase(gtable)="member" then
							Set rs1=Server.CreateObject("ADODB.Recordset")
							sql1="select * from Customer Where ID_Member="&rs("id_member")
							rs1.open sql1,cn,1,3
									if not(rs1.eof) then
											do until rs1.eof
														Set fso=CreateObject("Scripting.FileSystemObject")
														iPath=Server.MapPath("../image/upload/customer/"&rs1("image"))
															if fso.FileExists(iPath) then
																fso.DeleteFile iPath
															end if
														Set fso=nothing
														rs1.delete
														rs1.update
													rs1.movenext
											loop
									end if
							rs1.Close
							Set rs1=nothing
							
							Set rs1=Server.CreateObject("ADODB.Recordset")
							sql1="select * from Driver Where ID_Member="&rs("id_member")
							rs1.open sql1,cn,1,3
									if not(rs1.eof) then
											do until rs1.eof
														Set fso=CreateObject("Scripting.FileSystemObject")
														iPath=Server.MapPath("../image/upload/driver/"&rs1("image"))
															if fso.FileExists(iPath) then
																fso.DeleteFile iPath
															end if
														Set fso=nothing
														rs1.delete
														rs1.update
													rs1.movenext
											loop
									end if
							rs1.Close
							Set rs1=nothing
						end if
						rs.delete
						rs.update
				end if
		rs.Close
		Set rs=nothing
	next
	
cn.Close
Set cn=nothing
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link rel="stylesheet" type="text/css" href="../include/stylesheet.css">
</head>

<body topmargin="0" leftmargin="0">
<table width="auto" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td colspan="2" align="left" valign="top">
      <!--#include file="head.htm"-->
    </td>
  </tr>
  <tr> 
    <td width="140" align="left" valign="top"><!--#include file="menu.htm"--></td>
    <td width="612" align="left" valign="top"><table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">ลบข้อมูล</td>
        </tr>
        <tr>
          <td align="center">การลบข้อมูลเสร็จสมบูรณ์แล้ว กลับไปกรุณา <a href="<%=url%>">คลิกที่นี่</a></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>