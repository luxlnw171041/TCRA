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
			if sex="F" then isex="˭ԧ" else isex="���" end if
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
    <td width="580"><span class="big"><strong><a href="loginnow.asp">��Ҫԡ</a> 
      &gt; ��������ǹ���</strong></span></td>
  </tr>
  <tr align="left" valign="top"> 
    <td height="316" align="center" valign="middle"><br>
	<table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>���ͺ���ѷ</strong></td>
          <td><%=company%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>������ü�����ӹҨ</strong></td>
          <td><%=name%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>��</strong></td>
          <td><%=isex%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>�������</strong></td>
          <td><%=address%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>�ѧ��Ѵ</strong></td>
          <td><%=province%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>������ɳ���</strong></td>
          <td><%=zipcode%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
          <td><%=country%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>���Ѿ��</strong></td>
          <td><%=telephone%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
          <td><%=fax%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>���Ѿ����Ͷ��</strong></td>
          <td><%=mobile%></td>
        </tr>
      </table>
	  <div align="center"><br>
	  <input type="button" name="edit" value="��䢢�����" onClick="location='myaccountEdit.asp'" style="width:100">
	  <input type="button" name="logout" value="�͡�ҡ�к�" onClick="location='logout.asp'"  style="width:100">
	  </div><br><br>
	  <div align="left" class="big"><b>����ѵԡ�������������١��ҷ���ջ���ѵ�</b></div>
      <br>
      <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E">
          <td width="17%"><strong>���ͺ���ѷ</strong></td>
          <td width="36%"><strong>�����١���</strong></td>
          <td width="24%"><strong>�ѹ���ѹ�֡</strong></td>
          <td width="23%"><strong>���</strong></td>
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
          <td align="center"><input type="button" name="edit" value="���" onClick="location='customerBedit.asp?id_customer=<%=rs("id_customer")%>'"></td>
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
	  <div align="left" class="big"><b>����ѵԡ�����������ž�ѡ�ҹ�Ѻö����ջ���ѵ�</b></div>
      <br>
      <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>����-���ʡ��</strong></td>
          <td><strong>���Ѿ��</strong></td>
          <td><strong>�ѹ���ѹ�֡</strong></td>
          <td><strong>���</strong></td>
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
          <td align="center"><input type="button" name="edit" value="���" onClick="location='driverBedit.asp?id_driver=<%=rs("id_driver")%>'"></td>
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