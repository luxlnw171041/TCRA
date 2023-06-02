<!--#include file="checklogin.asp"-->
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
nn=int(cp)+int(counter)
for i = int(cp)+1 to nn
		demerit=demerit&ReadString(formdata,Divider,int(i))&","
next
demeritdetail=ReadString(formdata,Divider,(int(nn)+1))
datedemerit=ReadString(formdata,Divider,(int(nn)+2))&"/"&ReadString(formdata,Divider,(int(nn)+3))&"/"&ReadString(formdata,Divider,(int(nn)+4))
pixfile1=ReadFileName(formdata,Divider,(int(nn)+5))

Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Driver"
rs.open sql,cn,1,3
	rs.addnew
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
			if demeritdetail<>"" and not(isnull(demeritdetail)) and instr(demerit,"อื่นๆ")>0 then rs("demeritdetail")=demeritdetail
			if datedemerit<>"" and not(isnull(datedemerit)) and isdate(datedemerit) then rs("datedemerit")=datedemerit
			rs("ID_Member")=session("id_member")
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
					if pixfile1<>"" then' and cimage<>0 then
'						if rs("image")<>"" then
'							Set fso=CreateObject("Scripting.FileSystemObject")
'							iPath=Server.MapPath("../image/upload/driver/"&rs("image"))
'								if fso.FileExists(iPath) then
'									fso.DeleteFile iPath
'								end if
'							Set fso=nothing
'						end if
						 image=id_driver&"-"&file2
						 ext = SaveToFile(formdata,divider,(int(nn)+5),"../image/upload/driver/"&image)
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
          <td class="big">เพิ่มข้อมูลคนขับที่มีประวัติ</td>
        </tr>
        <tr>
          <td align="center"><br>
            การเพิ่มข้อมูลคนขับที่มีประวัติสร็จสมบูรณ์แล้ว </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing %>