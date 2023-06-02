<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect

ftable=request("ftable")
fwhere=split(request("fwhere"),",")
keyword=split(trim(request("keyword")))
op=request("op")

for i=0 to ubound(keyword)
variable=variable&" "&fwhere(0)&" like '%"&keyword(i)&"%' "
if i<ubound(keyword) then variable=variable&op
next

if request("ipagenum")="" then
	ipagenum=1
else
	ipagenum=request("ipagenum")
end if

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from "&ftable
if variable<>"" and not(isnull(variable)) then sql=sql&" Where "&variable
rs.open sql,cn,1,3

ipagesize=20
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
    <td width="612" align="left" valign="top">
	<form name="form" action="delete.asp?ipagenum=<%=ipagenum%>&ftable=<%=request("ftable")%>&fwhere=<%=request("fwhere")%>&keyword=<%=request("keyword")%>&op=<%=request("op")%>" method="post">
	<table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">แสดงผลการค้นหา</td>
        </tr>
        <tr>
          <td align="center"> 
            <%
			select case ftable
				case "Member"
					Tftable="ข้อมูลสมาชิก"
				case "Customer"
					Tftable="ข้อมูลลูกค้าที่มีประวัติ"
				case "Driver"
					Tftable="ข้อมูลคนขับที่มีประวัติ"
			end select
	%>
            <%if ftable="Member" then%>
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
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
						if not(rs.eof) then
						rs.pagesize=ipagesize
						rs.absolutepage=ipagenum
						iabsolutepage=rs.absolutepage
						ipagecount=rs.pagecount
						irecordcount=rs.recordcount
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
                <tr align="left" valign="top"> 
                  <td colspan="7" align="right"><input type="submit" name="delete" value="ลบรายการที่เลือก"></td>
                </tr>
                <%
								rs.movenext
							next
						end if
		%>
			  <input type="hidden" name="gtable" value="Member">
                <div align="center">ค้นหาข้อมูล <b><%=Tftable%></b> จาก <b><%=fwhere(1)%></b> 
                  ที่มีคำว่า <font color="red"><b><%=request("keyword")%></b></font> 
                  พบจำนวน <b> 
                  <%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%>
                  </b> รายการ<br>
                  <br>
                </div>
              </table>
			  <div align="left"><strong><u>หมายเหตุ</u></strong> A คือ สถานะเป็น Administator ไม่สามารถลบได้</div><br>
            <%elseif ftable="Customer" then%>
            <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
              <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                <td><strong>ลบ</strong></td>
                <td><strong>ชื่อบริษัทลูกค้า</strong></td>
                <td><strong>ชื่อเจ้าของบริษัทลูกค้า</strong></td>
                <td><strong>โทรศัพท์</strong></td>
                <td><strong>วันที่บันทึก</strong></td>
                <td><strong>แก้ไข</strong></td>
              </tr>
              <%
						if not(rs.eof) then
						rs.pagesize=ipagesize
						rs.absolutepage=ipagenum
						iabsolutepage=rs.absolutepage
						ipagecount=rs.pagecount
						irecordcount=rs.recordcount
								for i = 1 to ipagesize
									if rs.eof then exit for
		%>
              <tr align="left" valign="top"> 
                <td align="center"><input type="checkbox" name="id" value="<%=rs("id_customer")%>"></td>
                <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Company")%></a></td>
                <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Name")%></a></td>
                <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Telephone")%></a></td>
                <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("StartDate")%></a></td>
                <td align="center"><a href="customerBedit.asp?id_customer=<%=rs("id_customer")%>">คลิกที่นี่</a></td>
              </tr>
              <%
								rs.movenext
							next
						end if
		%>
              <tr align="right" valign="top"> 
                <td colspan="6"><input type="submit" name="delete" value="ลบรายการที่เลือก"></td>
              </tr>
			  <input type="hidden" name="gtable" value="Customer">
              <div align="center">ค้นหาข้อมูล <b><%=Tftable%></b> จาก <b><%=fwhere(1)%></b> 
                ที่มีคำว่า <font color="red"><b><%=request("keyword")%></b></font> 
                พบจำนวน <b> 
                <%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%>
                </b> รายการ<br>
                <br>
              </div>
            </table>
            <%elseif ftable="Driver" then%>
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                  <td><strong>ลบ</strong></td>
                  <td><strong>ชื่อ-นามสกุล</strong></td>
                  <td><strong>โทรศัพท์</strong></td>
                  <td><strong>วันที่บันทึก</strong></td>
                  <td><strong>แก้ไข</strong></td>
                </tr>
                <%
						if not(rs.eof) then
						rs.pagesize=ipagesize
						rs.absolutepage=ipagenum
						iabsolutepage=rs.absolutepage
						ipagecount=rs.pagecount
						irecordcount=rs.recordcount
								for i = 1 to ipagesize
									if rs.eof then exit for
		%>
                <tr align="left" valign="top"> 
                  <td align="center"><input type="checkbox" name="id" value="<%=rs("id_driver")%>"></td>
                  <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Name")%>&nbsp;&nbsp;<%=rs("Surname")%></a></td>
                  <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Telephone")%></a></td>
                  <td align="center"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("StartDate")%></a></td>
                  <td align="center"><a href="driverBedit.asp?id_driver=<%=rs("id_driver")%>">คลิกที่นี่</a></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td colspan="5" align="right"><input type="submit" name="delete" value="ลบรายการที่เลือก"></td>
                </tr>
                <%
								rs.movenext
							next
						end if
		%>
			  <input type="hidden" name="gtable" value="Driver">
                <div align="center">ค้นหาข้อมูล <b><%=Tftable%></b> จาก <b><%=fwhere(1)%></b> 
                  ที่มีคำว่า <font color="red"><b><%=request("keyword")%></b></font> 
                  พบจำนวน <b> 
                  <%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%>
                  </b> รายการ<br>
                  <br>
                </div>
              </table>
            <%end if%>
            <%if ipagecount>1 then%>
            <div align="center"><br>
              <%if iabsolutepage<>1 then%>
              <a href="?ipagenum=<%=ipagenum-1%>&ftable=<%=request("ftable")%>&fwhere=<%=request("fwhere")%>&keyword=<%=request("keyword")%>&op=<%=request("op")%>">&lt;&lt;ก่อนหน้า</a> 
              <%end if%>
              | 
              <%for j=1 to ipagecount%>
              <%if j=iabsolutepage then%>
              <b><%=j%></b> 
              <%else%>
              <a href="?ipagenum=<%=j%>&ftable=<%=request("ftable")%>&fwhere=<%=request("fwhere")%>&keyword=<%=request("keyword")%>&op=<%=request("op")%>"><%=j%></a> 
              <%end if%>
              | 
              <%next%>
              <%if iabsolutepage<>ipagecount then%>
              <a href="?ipagenum=<%=ipagenum+1%>&ftable=<%=request("ftable")%>&fwhere=<%=request("fwhere")%>&keyword=<%=request("keyword")%>&op=<%=request("op")%>">ถัดไป&gt;&gt;</a> 
              <%end if%>
            </div>
            <%end if%>
          </td>
        </tr>
      </table>
	  </form>
	  </td>
  </tr>
</table>
</body>
</html>
<%rs.Close
Set rs=nothing
cn.Close
Set cn=nothing%>