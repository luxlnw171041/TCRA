<!--#include file="../include/checklogin.asp"-->
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
    <td width="580"><span class="big"><strong><a href="loginnow.asp">��Ҫԡ</a> 
      &gt; �ʴ��š�ä���</strong></span></td>
  </tr>
  <tr align="left" valign="top"> 
    <td align="center" valign="middle">
	<%
			select case ftable
				case "Member"
					Tftable="��������Ҫԡ"
				case "Customer"
					Tftable="�������١��ҷ���ջ���ѵ�"
				case "Driver"
					Tftable="�����ž�ѡ�ҹ�Ѻö����ջ���ѵ�"
			end select
	%>



	
	<%if ftable="Member" then%>
      <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E">
          <td><strong>������Ҫԡ</strong></td>
          <td><strong>���ͺ���ѷ</strong></td>
          <td><strong>������Ңͧ����ѷ</strong></td>
          <td><strong>���Ѿ��</strong></td>
          <td><strong>�ѹ���ѹ�֡</strong></td>
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
          <td align="center"><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("id")%></a></td>
          <td><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("Company")%></a></td>
          <td><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("Name")%></a></td>
          <td><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("Telephone")%></a></td>
          <td align="center"><a href="memberdetail.asp?id_member=<%=rs("id_member")%>"><%=rs("StartDate")%></a></td>
        </tr>
		<%
								rs.movenext
							next
						end if
		%>
	<div align="center">���Ң����� <b><%=Tftable%></b> �ҡ <b><%=fwhere(1)%></b> ����դ���� <font color="red"><b><%=request("keyword")%></b></font> ���ӹǹ <b><%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%></b> ��¡��<br><br></div>
      </table>
	  <%elseif ftable="Customer" then%>
      <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>���ͺ���ѷ�١���</strong></td>
          <td><strong>������Ңͧ����ѷ�١���</strong></td>
          <td><strong>���Ѿ��</strong></td>
          <td><strong>���ͺ���ѷ���ѹ�֡������</strong></td>
          <td><strong>�ѹ���ѹ�֡</strong></td>
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
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Company")%></a></td>
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Name")%></a></td>
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Telephone")%></a></td>
          <td align="center">
		  		<%
						Set rs1=Server.CreateObject("ADODB.Recordset")
						sql1="select Company from Member Where ID_Member="&rs("ID_Member")
						rs1.open cn.Execute(sql1)
								if not(rs1.eof) then
										response.write "<a href='customerBdetail.asp?id_customer="&rs("id_customer")&"'>"&rs1("Company")&"</a>"
								end if
						rs1.Close
						Set rs1=nothing
				%>
		  </td>
          <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("StartDate")%></a></td>
        </tr>
        <%
								rs.movenext
							next
						end if
		%>
        <div align="center">���Ң����� <b><%=Tftable%></b> �ҡ <b><%=fwhere(1)%></b> 
          ����դ���� <font color="red"><b><%=request("keyword")%></b></font> ���ӹǹ 
          <b>
          <%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%>
          </b> ��¡��<br>
          <br>
        </div>
      </table>
	  <%elseif ftable="Driver" then%>
      <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>����-���ʡ��</strong></td>
          <td><strong>���Ѿ��</strong></td>
          <td><strong>���ͺ���ѷ���ѹ�֡������</strong></td>
          <td><strong>�ѹ���ѹ�֡</strong></td>
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
          <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Name")%>&nbsp;&nbsp;<%=rs("Surname")%></a></td>
          <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Telephone")%></a></td>
          <td align="center">
		  		<%
						Set rs1=Server.CreateObject("ADODB.Recordset")
						sql1="select Company from Member Where ID_Member="&rs("ID_Member")
						rs1.open cn.Execute(sql1)
								if not(rs1.eof) then
										response.write "<a href='driverBdetail.asp?id_driver="&rs("id_driver")&"'>"&rs1("Company")&"</a>"
								end if
						rs1.Close
						Set rs1=nothing
				%>
		  </td>
          <td align="center"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("StartDate")%></a></td>
        </tr>
        <%
								rs.movenext
							next
						end if
		%>
        <div align="center">���Ң����� <b><%=Tftable%></b> �ҡ <b><%=fwhere(1)%></b> 
          ����դ���� <font color="red"><b><%=request("keyword")%></b></font> ���ӹǹ 
          <b>
          <%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%>
          </b> ��¡��<br>
          <br>
        </div>
      </table>
	  <%end if%>







	  <%if ipagecount>1 then%>
		<div align="center"><br>
				<%if iabsolutepage<>1 then%>
				<a href="?ipagenum=<%=ipagenum-1%>&ftable=<%=request("ftable")%>&fwhere=<%=request("fwhere")%>&keyword=<%=request("keyword")%>&op=<%=request("op")%>">&lt;&lt;��͹˹��</a>
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
				<a href="?ipagenum=<%=ipagenum+1%>&ftable=<%=request("ftable")%>&fwhere=<%=request("fwhere")%>&keyword=<%=request("keyword")%>&op=<%=request("op")%>">�Ѵ�&gt;&gt;</a>
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
<%rs.Close
Set rs=nothing
cn.Close
Set cn=nothing%>