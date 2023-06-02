<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&session("id_member")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			company=rs("company")
			name=rs("name")
			sex=rs("sex")
			if sex="F" then isex="หญิง" else isex="ชาย" end if
			address=rs("address")
			province=rs("province")
			zipcode=rs("zipcode")
			country=rs("country")
			telephone=rs("telephone")
			fax=rs("fax")
			mobile=rs("mobile")
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
      &gt; ข้อมูลส่วนตัว</strong></span></td>
  </tr>
  <tr align="left" valign="top"> 
    <td height="316" align="center" valign="middle"><br>
	<table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
          <td><%=company%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>กรรมการผู้มีอำนาจ</strong></td>
          <td><%=name%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
          <td><%=isex%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
          <td><%=address%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
          <td><%=province%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
          <td><%=zipcode%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>ประเทศ</strong></td>
          <td><%=country%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
          <td><%=telephone%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
          <td><%=fax%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
          <td><%=mobile%></td>
        </tr>
      </table>
	  <div align="center"><br>
	  <input type="button" name="edit" value="แก้ไขข้อมูล" onClick="location='myaccountEdit.asp'" style="width:100">
	  <input type="button" name="logout" value="ออกจากระบบ" onClick="location='logout.asp'"  style="width:100">
	  </div><br><br>
	  <div align="left" class="big"><b>ประวัติการเพิ่มข้อมูลลูกค้าที่มีประวัติ</b></div>
      <br>
      <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E">
          <td width="17%"><strong>ชื่อบริษัท</strong></td>
          <td width="36%"><strong>ชื่อลูกค้า</strong></td>
          <td width="24%"><strong>วันที่บันทึก</strong></td>
          <td width="23%"><strong>แก้ไข</strong></td>
        </tr>
        <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Customer,Company,Name,Telephone,StartDate from Customer Where ID_Member="&session("id_member")&" order by company"
				rs.open cn.Execute(sql)
						if not(rs.eof) then
								do until rs.eof
		%>
        <tr align="left" valign="top">
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Company")%></a></td>
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Name")%></a></td>
          <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("StartDate")%></a></td>
          <td align="center"><input type="button" name="edit" value="แก้ไข" onClick="location='customerBedit.asp?id_customer=<%=rs("id_customer")%>'"></td>
        </tr>
        <%
										rs.movenext
								loop
						end if
				rs.Close
				Set rs=nothing
		%>
		</table>
      <br><br>
	  <div align="left" class="big"><b>ประวัติการเพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</b></div>
      <br>
      <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>ชื่อ-นามสกุล</strong></td>
          <td><strong>โทรศัพท์</strong></td>
          <td><strong>วันที่บันทึก</strong></td>
          <td><strong>แก้ไข</strong></td>
        </tr>
        <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Driver,Name,Surname,Telephone,StartDate from Driver Where ID_Member="&session("id_member")&" order by Name"
				rs.open cn.Execute(sql)
						if not(rs.eof) then
								do until rs.eof
		%>
        <tr align="left" valign="top"> 
          <td height="36"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Name")%>&nbsp;&nbsp;<%=rs("Surname")%></a></td>
          <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Telephone")%></a></td>
          <td align="center"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("StartDate")%></a></td>
          <td align="center"><input type="button" name="edit" value="แก้ไข" onClick="location='driverBedit.asp?id_driver=<%=rs("id_driver")%>'"></td>
        </tr>
        <%
										rs.movenext
								loop
						end if
				rs.Close
				Set rs=nothing
		%>
      </table> </td>
  </tr>
  <tr align="left" valign="top"> 
    <td colspan="2"><!--#include file="../include/copyright_th.htm"--></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing%>