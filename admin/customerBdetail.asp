<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<%Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Customer Where ID_Customer="&request("id_customer")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			company=rs("company")
			name=rs("name")
			sex=rs("sex")
			if sex="F" then sex="˭ԧ" else sex="���" end if
			address=split(rs("address"),",")
			province=rs("province")
			zipcode=rs("zipcode")
			country=rs("country")
			telephone=rs("telephone")
			fax=rs("fax")
			mobile=rs("mobile")
			demerit=split(rs("demerit"),",")
			demeritdetail=rs("demeritdetail")
			datedemerit=rs("datedemerit")
			image=rs("image")
			startdate=rs("startdate")
			ID_Member=rs("ID_Member")
	end if
rs.Close
Set rs=nothing

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&ID_Member
rs.open cn.Execute(sql)
	if not(rs.eof) then
			iID=rs("ID")
			iUsername=rs("Username")
			iCompany=rs("Company")
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
          <td class="big">�٢������١��ҷ���ջ���ѵ�</td>
        </tr>
        <tr>
          <td align="center"><table width="100%" border="1" align="center" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>���ͺ���ѷ�١���</strong></td>
                <td><%=company%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>�����١���</strong></td>
                <td><%=name%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>��</strong></td>
                <td><%=sex%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>�������</strong></td>
                <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr align="left" valign="top">
                      <td width="15%">�Ţ���</td>
                      <td width="85%"><%=address(0)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>���</td>
                      <td><%=address(1)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>���</td>
                      <td><%=address(2)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>�ǧ</td>
                      <td><%=address(3)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>ࢵ</td>
                      <td><%=address(4)%></td>
                    </tr>
                  </table> </td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>�ѧ��Ѵ</strong></td>
                <td> <%=province%> </td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>������ɳ���</strong></td>
                <td><%=zipcode%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
                <td> <%=country%> </td>
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
                <td bgcolor="#FBB18E"><strong>�ѡɳС�á�зӼԴ</strong></td>
                <td> 
                  <%for i=0 to ubound(demerit)-1%>
                  &#8226; <%=demerit(i)%>&nbsp;&nbsp; 
                  <%if instr(demerit(i),"����") then response.write demeritdetail%>
                  <br> 
                  <%next%>
                </td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>�ѹ/��͹/�� ����зӼԴ</strong></td>
                <td><%=datedemerit%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>�ٻ�Ҿ</strong></td>
                <td> 
                  <%if image<>"" and not(isnull(image)) then %>
                  <a href="../image/upload/customer/<%=image%>" target="_new"><img src="../image/upload/customer/<%=image%>" border="0" width="100"></a> 
                  <%else%>
                  ������ٻ 
                  <%end if%>
                </td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>�����ż��ѹ�֡</strong></td>
                <td> <table width="100%" border="0" cellspacing="0" cellpadding="2">
                    <tr> 
                      <td width="50%"><strong>������Ҫԡ</strong></td>
                      <td><%=iID%></td>
                    </tr>
                    <tr> 
                      <td width="50%"><strong>���ͼ�����к�</strong></td>
                      <td><%=iUsername%></td>
                    </tr>
                    <tr> 
                      <td width="50%"><strong>���ͺ���ѷ</strong></td>
                      <td><%=iCompany%></td>
                    </tr>
                    <tr> 
                      <td width="50%"><strong>�ѹ/��͹/�� ���ѹ�֡</strong></td>
                      <td><%=startdate%> </td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<%cn.Close
Set cn=nothing%>