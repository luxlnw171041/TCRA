<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/upload.inc"-->
<!--#include file="../include/connection.asp"-->
<%
FormSize = Request.TotalBytes
FormData = Request.BinaryRead(FormSize)
bnCRLF = chrB( 13 ) & chrB( 10 )
Divider = LEFTB( FormData, INSTRB( FormData, bnCRLF ) - 1 )

company=ReadString(formdata,Divider,1)
name=ReadString(formdata,Divider,2)
sex=ReadString(formdata,Divider,3)
address=ReadString(formdata,Divider,4)
province=ReadString(formdata,Divider,5)
zipcode=ReadString(formdata,Divider,6)
country=ReadString(formdata,Divider,7)
telephone=ReadString(formdata,Divider,8)
fax=ReadString(formdata,Divider,9)
mobile=ReadString(formdata,Divider,10)
cimage=ReadString(formdata,Divider,11)
pixfile1=ReadFileName(formdata,Divider,12)

Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&session("id_member")
rs.open sql,cn,1,3
	if not(rs.eof) then
'			rs("company")=company
			rs("name")=name
			rs("sex")=sex
			rs("address")=address
			rs("province")=province
			rs("zipcode")=zipcode
			rs("country")=country
			rs("telephone")=telephone
			rs("fax")=fax
			rs("mobile")=mobile
			rs("startdate")=now()
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
					if pixfile1<>"" and cimage<>0 then
						if rs("image")<>"" then
							Set fso=CreateObject("Scripting.FileSystemObject")
							iPath=Server.MapPath("../image/upload/member/"&rs("image"))
								if fso.FileExists(iPath) then
									fso.DeleteFile iPath
								end if
							Set fso=nothing
						end if
						 image=id_member&"-"&file2
						 ext = SaveToFile(formdata,divider,12,"../image/upload/member/"&image)
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
<title>\ .:Thai Car Rental Association ( TCRA ) :. /</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link rel="stylesheet" type="text/css" href="../include/stylesheet.css">
</head>
<body topmargin="0" leftmargin="0" onLoad="MM_preloadImages('../../image/head/home02.gif','../../image/head/tcra02.gif','../../image/head/rentbuy02.gif','../../image/head/qualify02.gif','../../image/head/member02.gif')">
<table border="0" cellspacing="0" cellpadding="0" align="center" width="750">
  <tr align="left" valign="top"> 
    <td colspan="2"><!--#include file="../include/head.htm"--></td>
  </tr>

  <tr align="left" valign="top"> 
    <td width="170"><!--#include file="../include/smenu.htm"--></td>
    <td width="580"><span class="big"><strong><a href="loginnow.asp">��Ҫԡ</a> 
      &gt; ��������ǹ��� </strong></span> <br>
      <br>
      <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center"><br>
            �����䢢�������������ó����� <br>
            <br>
            ��Ѻ�˹�Ң�������ǹ��� <a href="myaccount.asp">��ԡ�����</a></td>
        </tr>
      </table>
      <span class="big"><strong> </strong></span> </td>
  </tr>
  <tr align="left" valign="top"> 
    <td colspan="2"><!--#include file="../include/copyright_th.htm"--></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing %>