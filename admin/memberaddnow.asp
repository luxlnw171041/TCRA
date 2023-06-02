<!--#include file="checklogin.asp"-->
<!--#include file="../include/upload.inc"-->
<!--#include file="../include/connection.asp"-->
<%
FormSize = Request.TotalBytes
FormData = Request.BinaryRead(FormSize)
bnCRLF = chrB( 13 ) & chrB( 10 )
Divider = LEFTB( FormData, INSTRB( FormData, bnCRLF ) - 1 )

id=ReadString(formdata,Divider,1)
username=ReadString(formdata,Divider,2)
password=ReadString(formdata,Divider,3)
company=ReadString(formdata,Divider,4)
name=ReadString(formdata,Divider,5)
sex=ReadString(formdata,Divider,6)
address=ReadString(formdata,Divider,7)
province=ReadString(formdata,Divider,8)
zipcode=ReadString(formdata,Divider,9)
country=ReadString(formdata,Divider,10)
telephone=ReadString(formdata,Divider,11)
fax=ReadString(formdata,Divider,12)
mobile=ReadString(formdata,Divider,13)
pixfile1=ReadFileName(formdata,Divider,14)

Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member"
rs.open sql,cn,1,3
	if not(rs.eof) then
			rs.addnew
			rs("id")=id
			rs("username")=username
			rs("password")=password
			rs("company")=company
			rs("name")=name
			rs("sex")=sex
			rs("address")=address
			rs("province")=province
			rs("zipcode")=zipcode
			rs("country")=country
			rs("telephone")=telephone
			rs("fax")=fax
			rs("mobile")=mobile
			rs.update
			id_member=rs("id_member")
			if pixfile1 <> "" then
					if instrRev(pixfile1,"/")<>0 then
					   slash=instrRev(pixfile1,"/")
					else
					   slash=instrRev(pixfile1,"\")
					end if
					dot=instrRev(pixfile1,".")
					length=(cint(dot)-(cint(slash)+1))
					file=mid(pixfile1,(cint(slash)+1))
					file2=mid(pixfile1,(cint(slash)+1),length)
			
					'Upload Attach File to server
					if pixfile1<>"" then' and cimage<>0 then
'						if rs("image")<>"" then
'							Set fso=CreateObject("Scripting.FileSystemObject")
'							iPath=Server.MapPath("../image/upload/member/"&rs("image"))
'								if fso.FileExists(iPath) then
'									fso.DeleteFile iPath
'								end if
'							Set fso=nothing
'						end if
						 image=id_member&"-"&file2
						 ext = SaveToFile(formdata,divider,14,"../image/upload/member/"&image)
						 rs("image")=image&ext
						 rs.update
					end if 
			end if
	end if
rs.Close
Set rs=nothing
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
          <td class="big">เพิ่มข้อมูลสมาชิก</td>
        </tr>
        <tr>
          <td align="center"><br>
            การเพิ่มข้อมูลสมาชิกเสร็จสมบูรณ์แล้ว<br>
            <br>
            กลับไปหน้า เพิ่มข้อมูลสมาชิก <a href="memberadd.asp">คลิกที่นี่</a></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing %>