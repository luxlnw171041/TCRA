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
          <td class="big">�ʴ��š�ä���</td>
        </tr>
        <tr>
          <td align="center"> 
            <%
			select case ftable
				case "Member"
					Tftable="��������Ҫԡ"
				case "Customer"
					Tftable="�������١��ҷ���ջ���ѵ�"
				case "Driver"
					Tftable="�����Ť��Ѻ����ջ���ѵ�"
			end select
	%>
            <%if ftable="Member" then%>
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                  <td><strong>ź</strong></td>
                  <td><strong>������Ҫԡ</strong></td>
                  <td><strong>���ͺ���ѷ</strong></td>
                  <td><strong>������Ңͧ����ѷ</strong></td>
                  <td><strong>���Ѿ��</strong></td>
                  <td><strong>�ѹ���ѹ�֡</strong></td>
                  <td><strong>���</strong></td>
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
                  <td align="center"><a href="myaccountEdit.asp?id_member=<%=rs("id_member")%>">��ԡ�����</a></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td colspan="7" align="right"><input type="submit" name="delete" value="ź��¡�÷�����͡"></td>
                </tr>
                <%
								rs.movenext
							next
						end if
		%>
			  <input type="hidden" name="gtable" value="Member">
                <div align="center">���Ң����� <b><%=Tftable%></b> �ҡ <b><%=fwhere(1)%></b> 
                  ����դ���� <font color="red"><b><%=request("keyword")%></b></font> 
                  ���ӹǹ <b> 
                  <%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%>
                  </b> ��¡��<br>
                  <br>
                </div>
              </table>
			  <div align="left"><strong><u>�����˵�</u></strong> A ��� ʶҹ��� Administator �������öź��</div><br>
            <%elseif ftable="Customer" then%>
            <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
              <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                <td><strong>ź</strong></td>
                <td><strong>���ͺ���ѷ�١���</strong></td>
                <td><strong>������Ңͧ����ѷ�١���</strong></td>
                <td><strong>���Ѿ��</strong></td>
                <td><strong>�ѹ���ѹ�֡</strong></td>
                <td><strong>���</strong></td>
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
                <td align="center"><a href="customerBedit.asp?id_customer=<%=rs("id_customer")%>">��ԡ�����</a></td>
              </tr>
              <%
								rs.movenext
							next
						end if
		%>
              <tr align="right" valign="top"> 
                <td colspan="6"><input type="submit" name="delete" value="ź��¡�÷�����͡"></td>
              </tr>
			  <input type="hidden" name="gtable" value="Customer">
              <div align="center">���Ң����� <b><%=Tftable%></b> �ҡ <b><%=fwhere(1)%></b> 
                ����դ���� <font color="red"><b><%=request("keyword")%></b></font> 
                ���ӹǹ <b> 
                <%if irecordcount="" or isnull(irecordcount) then response.write "0" else response.write irecordcount end if%>
                </b> ��¡��<br>
                <br>
              </div>
            </table>
            <%elseif ftable="Driver" then%>
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                  <td><strong>ź</strong></td>
                  <td><strong>����-���ʡ��</strong></td>
                  <td><strong>���Ѿ��</strong></td>
                  <td><strong>�ѹ���ѹ�֡</strong></td>
                  <td><strong>���</strong></td>
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
                  <td align="center"><a href="driverBedit.asp?id_driver=<%=rs("id_driver")%>">��ԡ�����</a></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td colspan="5" align="right"><input type="submit" name="delete" value="ź��¡�÷�����͡"></td>
                </tr>
                <%
								rs.movenext
							next
						end if
		%>
			  <input type="hidden" name="gtable" value="Driver">
                <div align="center">���Ң����� <b><%=Tftable%></b> �ҡ <b><%=fwhere(1)%></b> 
                  ����դ���� <font color="red"><b><%=request("keyword")%></b></font> 
                  ���ӹǹ <b> 
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