<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect

id_member=request("id_member")

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&id_member
rs.open cn.Execute(sql)
	if not(rs.eof) then
			id_member=rs("ID_Member")
			id=rs("ID")
			username=rs("username")
			password=rs("password")
			company=rs("company")
			name=rs("name")
			sex=rs("sex")
			address=rs("address")
			province=rs("province")
			zipcode=rs("zipcode")
			country=rs("country")
			telephone=rs("telephone")
			fax=rs("fax")
			mobile=rs("mobile")
			image=rs("image")
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
          <td class="big">ข้อมูลส่วนตัว</td>
        </tr>
        <tr>
          <td align="center"><form name="form" action="myaccountEditnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>รหัสสมาชิก</strong></td>
                  <td><input type="text" name="id" style="width:150px;" value="<%=ID%>" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>ชื่อผู้ใช้ระบบ</strong></td>
                  <td><input type="text" name="username" style="width:150px;" value="<%=username%>" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>รหัสผ่าน</strong></td>
                  <td><input type="password" name="password" style="width:150px;" value="<%=username%>" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
                  <td><input type="text" name="company" style="width:300px;" value="<%=company%>" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ชื่อเจ้าของบริษัท</strong></td>
                  <td><input type="text" name="name" style="width:300px;" value="<%=name%>" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
                  <td> <input type="radio" name="sex" value="M" <%=checked(sex,"M")%>>
                    ชาย 
                    <input type="radio" name="sex" value="F" <%=checked(sex,"F")%>>
                    หญิง </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
                  <td><textarea name="address" style="width:300px;height:100px;"><%=address%></textarea></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
                  <td> 
                    <!--#include file="../include/province.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
                  <td><input type="text" name="zipcode" style="width:100px;" value="<%=zipcode%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ประเทศ</strong></td>
                  <td> 
                    <!--#include file="../include/country.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
                  <td><input type="text" name="telephone" style="width:200px;" value="<%=telephone%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
                  <td><input type="text" name="fax" style="width:200px;" value="<%=fax%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
                  <td><input type="text" name="mobile" style="width:200px;" value="<%=mobile%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
                  <td> 
                    <%if image<>"" and not(isnull(image)) then %>
                    <input type="radio" name="cImage" value="0" checked>
                    มีรูปภาพแล้ว รูปปัจจุบันคือ <a href="../image/upload/member/<%=image%>" target="_new"><%=image%></a> 
                    <%else%>
                    <input type="radio" name="cImage" value="0" checked>
                    ไม่มีรูปภาพ 
                    <%end if%>
                    <br>
                    <input type="radio" name="cImage" value="1">
                    รูปภาพใหม่ 
                    <input type="file" name="image" style="width:220px;"> </td>
                </tr>
              </table>
              <div align="center"><br>
			  <input type="hidden" name="id_member" value="<%=id_member%>">
                <input type="submit" name="edit" value="บันทึกข้อมูล">
              </div>
            </form></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing

Function checked(a,b)
		if a<>"" and not(isnull(a)) and b<>"" and not(isnull(b)) then
				if cSTR(a)=cSTR(b) then
						checked=" checked "
				end if
		end if
End Function

Function selected(a,b)
		if a<>"" and not(isnull(a)) and b<>"" and not(isnull(b)) then
				if cSTR(a)=cSTR(b) then
						selected=" selected "
				end if
		end if
End Function
%>
<script language="JavaScript">
		function chkAction() {
				var a=document.form;
				if(!a.id.value) {
						alert("กรุณากรอก รหัสสมาชิก");
						return false;
				}
				if(!a.username.value) {
						alert("กรุณากรอก ชื่อผู้ใช้ระบบ");
						return false;
				}
				if(!a.password.value) {
						alert("กรุณากรอก รหัสผ่าน");
						return false;
				}
				if(!a.company.value) {
						alert("กรุณากรอก ชื่อบริษัท");
						return false;
				}
				if(!a.name.value) {
						alert("กรุณากรอก ชื่อเจ้าของบริษัท");
						return false;
				}
				if(!a.address.value) {
						alert("กรุณากรอก ที่อยู่");
						return false;
				}
				if(!a.zipcode.value) {
						alert("กรุณากรอก รหัสไปรษณีย์");
						return false;
				}
				if(!a.telephone.value) {
						alert("กรุณากรอก โทรศัพท์");
						return false;
				}
				if(!a.fax.value) {
						alert("กรุณากรอก โทรสาร");
						return false;
				}
				if(!a.mobile.value) {
						alert("กรุณากรอก โทรศัพท์มือถือ");
						return false;
				}
			return true;
		}
</script>