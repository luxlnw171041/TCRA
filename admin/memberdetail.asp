<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&request("id_member")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			id=rs("id")
			username=rs("username")
			password=rs("password")
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
			image=rs("image")
			startdate=rs("startdate")
	end if
rs.Close
Set rs=nothing
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
    <td width="612" align="left" valign="top"><table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">�٢�������Ҫԡ</td>
        </tr>
        <tr>
          <td align="center"><table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>������Ҫԡ</strong></td>
                <td><%=id%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>���ͼ�����к�</strong></td>
                <td><%=username%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>���ʼ�ҹ</strong></td>
                <td><%=password%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>���ͺ���ѷ</strong></td>
                <td><%=company%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>������Ңͧ����ѷ</strong></td>
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
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>�ٻ�Ҿ</strong></td>
                <td> 
                  <%if image<>"" and not(isnull(image)) then %>
                  <a href="../image/upload/member/<%=image%>" target="_new"><img src="../image/upload/member/<%=image%>" border="0" width="100"></a> 
				  <%else%>
				  ������ٻ
                  <%end if%>
                </td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>�ѹ���ѹ�֡������</strong></td>
                <td><%=startdate%></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing%>