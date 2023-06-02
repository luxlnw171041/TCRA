<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/upload.inc"-->
<!--#include file="../include/connection.asp"-->
<%
FormSize = Request.TotalBytes
FormData = Request.BinaryRead(FormSize)
bnCRLF = chrB( 13 ) & chrB( 10 )
Divider = LEFTB( FormData, INSTRB( FormData, bnCRLF ) - 1 )

name=ReadString(formdata,Divider,1)
surname=ReadString(formdata,Divider,2)
idcard=ReadString(formdata,Divider,3)
idss=ReadString(formdata,Divider,4)
idtax=ReadString(formdata,Divider,5)
sex=ReadString(formdata,Divider,6)
address=ReadString(formdata,Divider,7)&","&ReadString(formdata,Divider,8)&","&ReadString(formdata,Divider,9)&","&ReadString(formdata,Divider,10)&","&ReadString(formdata,Divider,11)
province=ReadString(formdata,Divider,12)
zipcode=ReadString(formdata,Divider,13)
country=ReadString(formdata,Divider,14)
degree=ReadString(formdata,Divider,15)
telephone=ReadString(formdata,Divider,16)
mobile=ReadString(formdata,Divider,17)
counter=ReadString(formdata,Divider,18)
cp=18
'response.write(counter)
nn=int(cp)+int(counter)
for i = int(cp)+1 to nn
		demerit=demerit&ReadString(formdata,Divider,int(i))&","
next
demeritdetail=ReadString(formdata,Divider,(int(nn)+1))
datedemerit=ReadString(formdata,Divider,(int(nn)+2))&"/"&ReadString(formdata,Divider,(int(nn)+3))&"/"&ReadString(formdata,Divider,(int(nn)+4))
cimage=ReadString(formdata,Divider,(int(nn)+5))
pixfile1=ReadFileName(formdata,Divider,(int(nn)+6))
id_driver=ReadString(formdata,Divider,(int(nn)+7))

'response.write datedemerit

Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Staff Where ID_Staff="&id_Staff&" and ID_Member="&session("ID_Member")
'response.write(sql)
rs.open sql,cn,1,3
	if not(rs.eof) then
			rs("name")=name
			rs("surname")=surname
			rs("sex")=sex
			if address<>"" and not(isnull(address)) then rs("address")=address
			rs("province")=province
			if zipcode<>"" and not(isnull(zipcode)) then rs("zipcode")=zipcode
			rs("country")=country
			rs("idcard")=idcard
			if idss<>"" and not(isnull(idss)) then rs("idss")=idss
			if idtax<>"" and not(isnull(idtax)) then rs("idtax")=idtax
			if degree<>"" and not(isnull(degree)) then rs("degree")=degree
			if telephone<>"" and not(isnull(telephone)) then rs("telephone")=telephone
			if mobile<>"" and not(isnull(mobile)) then rs("mobile")=mobile
			rs("demerit")=demerit
			if demeritdetail<>"" and not(isnull(demeritdetail))  then rs("demeritdetail")=demeritdetail else rs("demeritdetail")=null end if
			if datedemerit<>"" and not(isnull(datedemerit)) and isdate(datedemerit) then rs("datedemerit")=datedemerit  else rs("datedemerit")=null end if
			rs("ID_Member")=session("id_member")
			rs("startdate")=now()
			rs.update
			id_driver=rs("id_driver")
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
							iPath=Server.MapPath("../image/upload/Staff/"&rs("image"))
								if fso.FileExists(iPath) then
									fso.DeleteFile iPath
								end if
							Set fso=nothing
						end if
						 image=id_driver&"-"&file2
						 ext = SaveToFile(formdata,divider,(int(nn)+6),"../image/upload/Staff/"&image)
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
    <td width="580"><span class="big"><strong><a href="loginnow.asp">สมาชิก</a> 
      &gt; </strong></span><span class="big"><strong>แก้ไขข้อมูลพนักงานที่มีประวัติ</strong></span><br>
      <br>
      <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center"><br>
            การแก้ไขข้อมูลพนักงานที่มีประวัติเสร็จสมบูรณ์แล้ว <br>
            <br>
            กลับไปหน้าข้อมูลส่วนตัว <a href="myaccount.asp">คลิกที่นี่</a></td>
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