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
surname=ReadString(formdata,Divider,3)
sex=ReadString(formdata,Divider,4)
address=ReadString(formdata,Divider,5)&","&ReadString(formdata,Divider,6)&","&ReadString(formdata,Divider,7)&","&ReadString(formdata,Divider,8)&","&ReadString(formdata,Divider,9)
province=ReadString(formdata,Divider,10)
zipcode=ReadString(formdata,Divider,11)
country=ReadString(formdata,Divider,12)
telephone=ReadString(formdata,Divider,13)
fax=ReadString(formdata,Divider,14)
mobile=ReadString(formdata,Divider,15)
demerit=ReadString(formdata,Divider,16)
'demeritdetail=ReadString(formdata,Divider,17)
datedemerit=ReadString(formdata,Divider,17)&"/"&ReadString(formdata,Divider,18)&"/"&ReadString(formdata,Divider,19)
pixfile1=ReadFileName(formdata,Divider,20)

'response.write(datedemerit)

Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Customer"
rs.open sql,cn,1,3
	rs.addnew
			rs("company")=company
			rs("name")=name
			rs("surname")=surname
			rs("sex")=sex
			rs("address")=address
			rs("province")=province
			if zipcode<>"" and not(isnull(zipcode)) then rs("zipcode")=zipcode
			rs("country")=country
			rs("telephone")=telephone
			if fax<>"" and not(isnull(fax)) then rs("fax")=fax
			if mobile<>"" and not(isnull(mobile)) then rs("mobile")=mobile
			rs("demerit")=demerit
			if demeritdetail<>"" and not(isnull(demeritdetail)) and instr(demerit,"อื่นๆ")>0 then rs("demeritdetail")=demeritdetail
			if datedemerit<>"" and not(isnull(datedemerit)) and isdate(datedemerit) then rs("datedemerit")=datedemerit
			rs("ID_Member")=session("id_member")
			rs.update
			id_customer=rs("id_customer")
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
'							iPath=Server.MapPath("../image/upload/customer/"&rs("image"))
'								if fso.FileExists(iPath) then
'									fso.DeleteFile iPath
'								end if
'							Set fso=nothing
'						end if
						 image=id_customer&"-"&file2
						 ext = SaveToFile(formdata,divider,(int(nn)+5),"../image/upload/customer/"&image)
						 rs("image")=image&ext
						 rs.update
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
    <td width="580"><span class="big"><strong><a href="loginnow.asp">สมาชิก</a> 
      &gt; เพิ่มข้อมูลลูกค้าที่มีประวัติ</strong></span><br>
      <br>
      <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center"><br>
            การเพิ่มข้อมูลลูกค้าที่มีประวัติเสร็จสมบูรณ์แล้ว <br>
            <br>
            กลับไปหน้าเพิ่มข้อมูลลูกค้าที่มีประวัติ<a href="customerBadd.asp">คลิกที่นี่</a></td>
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