<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
          <td class="big">�٢������١��ҷ���ջ���ѵ�</td>
        </tr>
        <tr>
          <td align="center">
		  <form name="form" action="delete.asp" method="post">
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="center" valign="middle" bgcolor="#FBB18E"> 
                  <td align="center" valign="middle"><strong>ź</strong></td>
                  <td><strong>���ͺ���ѷ�١���</strong></td>
                  <td><strong>������Ңͧ����ѷ�١���</strong></td>
                  <td><strong>���Ѿ��</strong></td>
                  <td><strong>���ͺ���ѷ���ѹ�֡</strong></td>
                  <td><strong>�ѹ���ѹ�֡</strong></td>
                  <td><strong>���</strong></td>
                </tr>
                <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Customer,Company,Name,Telephone,StartDate,ID_Member from Customer order by company"
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
                  <td align="center" valign="top"><input type="checkbox" name="id" value="<%=rs("id_customer")%>"></td>
                  <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Company")%></a></td>
                  <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Name")%></a></td>
                  <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Telephone")%></a></td>
          <%
		 		Set rs1=Server.CreateObject("ADODB.Recordset")
				sql1="select Company from Member Where ID_Member="&rs("ID_Member")
				rs1.open cn.Execute(sql1)
						if not(rs1.eof) then
			%>
          <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs1("Company")%></a></td>
			<%
						end if
				rs1.Close
				Set rs1=nothing
		 %>
                  <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("StartDate")%></a></td>
                  <td align="center"><a href="customerBedit.asp?id_customer=<%=rs("id_customer")%>">��ԡ�����</a></td>
                </tr>
                <%
								rs.movenext
							next
						end if
				rs.Close
				Set rs=nothing
		%>
                <tr align="right" valign="top"> 
                  <td colspan="7" valign="top"><input type="submit" name="delete" value="ź��¡�÷�����͡"></td>
                </tr>
              </table>
	  <%if ipagecount>1 then%>
		<div align="center"><br>
				<%if iabsolutepage<>1 then%>
				<a href="?ipagenum=<%=ipagenum-1%>">&lt;&lt;��͹˹��</a>
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
				<a href="?ipagenum=<%=ipagenum+1%>">�Ѵ�&gt;&gt;</a>
				<%end if%>
		</div>
	   <%end if%>
	   <input type="hidden" name="gtable" value="Customer">
		  </form>
	   		  </td>
        </tr>
      </table>
	  </td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing%>
