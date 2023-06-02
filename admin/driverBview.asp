<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect%>
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
    <td width="612" align="left" valign="top">
	<table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">ดูข้อมูลพนักงานขับรถที่มีประวัติ</td>
        </tr>
        <tr>
          <td align="center">
	<form name="form" action="delete.asp" method="post">
		      <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                  <td><strong>ลบ</strong></td>
                  <td><strong>ชื่อ-นามสกุล</strong></td>
                  <td><strong>โทรศัพท์</strong></td>
                  <td><strong>ชื่อบริษัทที่บันทึกข้อมูล</strong></td>
                  <td><strong>วันที่บันทึก</strong></td>
                  <td><strong>แก้ไข</strong></td>
                </tr>
                <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Driver,Name,Surname,Telephone,StartDate,ID_Member from Driver order by Name"
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
                  <td align="center"><input type="checkbox" name="id" value="<%=rs("id_driver")%>"></td>
                  <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Name")%>&nbsp;&nbsp;<%=rs("Surname")%></a></td>
                  <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Telephone")%></a></td>
          <%
		 		Set rs1=Server.CreateObject("ADODB.Recordset")
				sql1="select Company from Member Where ID_Member="&rs("ID_Member")
				rs1.open cn.Execute(sql1)
						if not(rs1.eof) then
			%>
          <td align="center"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs1("Company")%></a></td>
			<%
						end if
				rs1.Close
				Set rs1=nothing
		 %>
                  <td align="center"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("StartDate")%></a></td>
                  <td align="center"><a href="driverBedit.asp?id_driver=<%=rs("id_driver")%>">คลิกที่นี่</a></td>
                </tr>
                <%
								rs.movenext
							next
						end if
				rs.Close
				Set rs=nothing
		%>
                <tr align="left" valign="top"> 
                  <td colspan="6" align="right"><input type="submit" name="delete" value="ลบรายการที่เลือก"></td>
                </tr>
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
			<input type="hidden" name="gtable" value="Driver">
	</form>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing%>