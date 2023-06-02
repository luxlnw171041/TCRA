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
<form name="form" action="delete.asp" method="post">
	<table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">ดูข้อมูลสมาชิก</td>
        </tr>
        <tr>
          <td align="center"><table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
              <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                <td><strong>ลบ</strong></td>
                <td><strong>รหัสสมาชิก</strong></td>
                <td><strong>ชื่อบริษัท</strong></td>
                <td><strong>ชื่อเจ้าของบริษัท</strong></td>
                <td><strong>โทรศัพท์</strong></td>
                <td><strong>วันที่บันทึก</strong></td>
                <td><strong>แก้ไข</strong></td>
              </tr>
              <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Member,ID,Company,Name,Telephone,StartDate,Status from Member order by ID"
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
                <td align="center">
                    <%if not(rs("Status")) then%>
                    <input type="checkbox" name="id" value="<%=rs("id_member")%>"> 
                    <%else%>
                    A 
                    <%end if%>
				</td>
                <td align="center"><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("id")%></a></td>
                <td><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("Company")%></a></td>
                <td><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("Name")%></a></td>
                <td><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("Telephone")%></a></td>
                <td align="center"><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("StartDate")%></a></td>
                <td align="center"><a href="myaccountEdit.asp?id_member=<%=rs("id_member")%>">คลิกที่นี่</a></td>
              </tr>
              <%
								rs.movenext
							next
						end if
				rs.Close
				Set rs=nothing
		%>
              <tr align="left" valign="top"> 
                <td colspan="7" align="right"><input type="submit" name="delete" value="ลบรายการที่เลือก"></td>
              </tr>
            </table>
			  <div align="left"><strong><u>หมายเหตุ</u></strong> A คือ สถานะเป็น Administator ไม่สามารถลบได้</div><br>
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
      </table>
	  <input type="hidden" name="gtable" value="Member">
	  </form>
	  </td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing%>