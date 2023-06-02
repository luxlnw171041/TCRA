<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<%Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Staff Where ID_Staff="&request("id_Staff")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			name=rs("name")
			surname=rs("surname")
			sex=rs("sex")
			if sex="F" then sex="หญิง" else sex="ชาย" end if
			address=split(rs("address"),",")
			province=rs("province")
			zipcode=rs("zipcode")
			country=rs("country")
			idcard=rs("idcard")
			idss=rs("idss")
			idtax=rs("idtax")
			degree=rs("degree")
			telephone=rs("telephone")
			mobile=rs("mobile")
			demerit_tmp=rs("demerit")
			demeritdetail=rs("demeritdetail")
			datedemerit=rs("datedemerit")
			image=rs("image")
			startdate=rs("startdate")
			ID_Member=rs("ID_Member")
	end if
rs.Close
Set rs=nothing

If Len(demerit_tmp) > 1 then
	demerit=split(demerit_tmp,",")
End If

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&ID_Member
rs.open cn.Execute(sql)
	if not(rs.eof) then
			iID=rs("ID")
			iUsername=rs("Username")
			iCompany=rs("Company")
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
    <td width="170" rowspan="2">
		<!--#include file="../include/smenu.htm"-->
    </td>
    <td width="580"><span class="big"><strong><a href="loginnow.asp">สมาชิก</a> 
      &gt; <a href="driverBview.asp">ดูข้อมูลพนักงานที่มีประวัติ</a></strong></span></td>
  </tr>
  <tr align="left" valign="top"> 
    <td height="316" align="center" valign="middle"> <br>
        <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>ชื่อ</strong></td>
          <td width="263"><%=name%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>นามสกุล</strong></td>
          <td><%=surname%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>เลขที่บัตรประชาชน</strong></td>
          <td><%=idcard%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>เลขที่บัตรประกันสังคม</strong></td>
          <td><%=idss%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>เลขประจำตัวผู้เสียภาษี</strong></td>
          <td><%=idtax%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>เพศ</strong></td>
          <td><%=sex%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
          <td>
		  		<table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle">
                  <td width="15%">เลขที่</td>
                  <td width="85%"><%=address(0)%></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ซอย</td>
                  <td><%=address(1)%></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ถนน</td>
                  <td><%=address(2)%></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>แขวง</td>
                  <td><%=address(3)%></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>เขต</td>
                  <td><%=address(4)%></td>
                </tr>
              </table>
		  </td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
          <td> <%=province%> </td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
          <td><%=zipcode%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>ประเทศ</strong></td>
          <td> <%=country%> </td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>วุฒิการศึกษา</strong></td>
          <td><%=degree%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
          <td><%=telephone%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="131" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
          <td><%=mobile%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>ลักษณะการกระทำผิด</strong></td>
          <td> 
<%
If Len(demerit_tmp) > 1 Then
%>
            <%for i=0 to ubound(demerit)-1%>
            &#8226; <%=demerit(i)%>&nbsp;&nbsp; 
            <%if instr(demerit(i),"อื่นๆ") then response.write demeritdetail%>
            <br> 
            <%next%>
<%
End if
%>
          </td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>วัน/เดือน/ปี ที่กระทำผิด</strong></td>
          <td><%=datedemerit%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
          <td> 
            <%if image<>"" and not(isnull(image)) then %>
            <a href="../image/upload/Staff/<%=image%>" target="_new"><img src="../image/upload/Staff/<%=image%>" border="0" width="100"></a> 
            <%else%>
            ไม่มีรูป 
            <%end if%>
          </td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>ข้อมูลผู้บันทึก</strong></td>
          <td>
<table width="100%" border="0" cellspacing="0" cellpadding="2">
              <tr> 
                <td width="50%"><strong>รหัสสมาชิก</strong></td>
                <td><%=iID%></td>
              </tr>
              <tr> 
                <td width="50%"><strong>ชื่อผู้ใช้ระบบ</strong></td>
                <td><%=iUsername%></td>
              </tr>
              <tr> 
                <td width="50%"><strong>ชื่อบริษัท</strong></td>
                <td><%=iCompany%></td>
              </tr>
              <tr> 
                <td width="50%"><strong>วัน/เดือน/ปี ที่บันทึก</strong></td>
                <td><%=startdate%> </td>
              </tr>
            </table></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr align="left" valign="top"> 
    <td colspan="2"><!--#include file="../include/copyright_th.htm"--></td>
  </tr>
</table>
</body>
</html>
<%cn.Close
Set cn=nothing%>