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
			if sex="F" then isex="หญิง" else isex="ชาย" end if
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
          <td class="big">ดูข้อมูลสมาชิก</td>
        </tr>
        <tr>
          <td align="center"><table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>รหัสสมาชิก</strong></td>
                <td><%=id%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>ชื่อผู้ใช้ระบบ</strong></td>
                <td><%=username%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>รหัสผ่าน</strong></td>
                <td><%=password%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
                <td><%=company%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>ชื่อเจ้าของบริษัท</strong></td>
                <td><%=name%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
                <td><%=isex%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
                <td><%=address%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
                <td><%=province%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
                <td><%=zipcode%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>ประเทศ</strong></td>
                <td><%=country%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
                <td><%=telephone%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
                <td><%=fax%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
                <td><%=mobile%></td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
                <td> 
                  <%if image<>"" and not(isnull(image)) then %>
                  <a href="../image/upload/member/<%=image%>" target="_new"><img src="../image/upload/member/<%=image%>" border="0" width="100"></a> 
				  <%else%>
				  ไม่มีรูป
                  <%end if%>
                </td>
              </tr>
              <tr align="left" valign="top"> 
                <td bgcolor="#FBB18E"><strong>วันที่บันทึกข้อมูล</strong></td>
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