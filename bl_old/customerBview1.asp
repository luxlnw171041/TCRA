<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect%>
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
      &gt; ดูข้อมูลลูกค้าที่มีประวัติ</strong></span></td>
  </tr>
  <tr align="left" valign="top"> 
    <td align="center" valign="middle"><br><br>
<table width="95%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>ชื่อบริษัทลูกค้า<br>
            Company</strong></td>
          <td><strong>ชื่อเจ้าของบริษัทลูกค้า<br>
            Name </strong></td>
          <td><STRONG>ลักษณะการกระทำความ<BR>
          Demerit</STRONG></td>
          <td><strong>ชื่อบริษัทที่บันทึกข้อมูล<br>
		  Company Submit</strong></td>
          <td><strong>วันที่บันทึก<br>
            Date Submit</strong></td>
        </tr>
        <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Customer,Company,Name,Demerit,StartDate,ID_Member from Customer order by StartDate DESC"
				rs.open sql,cn,1,3
						if not(rs.eof) then
							if request("ipagenum")="" then
								ipagenum=1
							else
								ipagenum=request("ipagenum")
							end if
								ipagesize=20
								rs.pagesize=ipagesize
								rs.absolutepage=ipagenum
								iabsolutepage=rs.absolutepage
								ipagecount=rs.pagecount
								for i = 1 to ipagesize
									if rs.eof then exit for
		%>
        <tr align="left" valign="top"> 
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Company")%></a></td>
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Name")%></a></td>
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Demerit")%></a></td>
          <%
		 		Set rs1=Server.CreateObject("ADODB.Recordset")
				sql1="select Company from Member Where ID_Member="&rs("ID_Member")
				rs1.open cn.Execute(sql1)
						if not(rs1.eof) then
			%>
          <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs1("Company")%></a>&nbsp;</td>
			<%
						end if
				rs1.Close
				Set rs1=nothing
		 %>
          <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("StartDate")%></a></td>
        </tr>
        <%
								rs.movenext
							next
						end if
				rs.Close
				Set rs=nothing
		%>
      </table>
	  <%if ipagecount>1 then%>
		<div align="center"><br>
				<%if iabsolutepage<>1 then%>
				<a href="?ipagenum=<%=ipagenum-1%>">&lt;&lt;ก่อนหน้า</a>
				<%end if%>
				|
				<%for j=1 to ipagecount%>
					<%if j=iabsolutepage then%>
					<b><%=j%></b>
					<%else%>
					<a href="?ipagenum=<%=j%>"><%=j%></a>
					<%end if%>
					|
				<%next%>
				<%if iabsolutepage<>ipagecount then%>
				<a href="?ipagenum=<%=ipagenum+1%>">ถัดไป&gt;&gt;</a>
				<%end if%>
		</div>
	   <%end if%>
      </td>
  </tr>
  <tr align="left" valign="top"> 
    <td colspan="2"><!--#include file="../include/copyright_th.htm"--></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing%>