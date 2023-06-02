<!--#include file="checklogin.asp"-->
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
          <td class="big">เพิ่มข้อมูลสมาชิก</td>
        </tr>
        <tr>
          <td align="center"><form name="form" action="memberaddnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>รหัสสมาชิก</strong></td>
                  <td><input type="text" name="id" style="width:150px;" value="" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>ชื่อผู้ใช้ระบบ</strong></td>
                  <td><input type="text" name="username" style="width:150px;" value="" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>รหัสผ่าน</strong></td>
                  <td><input type="password" name="password" style="width:150px;" value="" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
                  <td><input type="text" name="company" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ชื่อเจ้าของบริษัท</strong></td>
                  <td><input type="text" name="name" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
                  <td> <input type="radio" name="sex" value="M" checked>
                    ชาย 
                    <input type="radio" name="sex" value="F">
                    หญิง </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
                  <td><textarea name="address" style="width:300px;height:100px;"></textarea></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
                  <td> 
                    <!--#include file="../include/province.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
                  <td><input type="text" name="zipcode" style="width:100px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ประเทศ</strong></td>
                  <td> 
                    <!--#include file="../include/country.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
                  <td><input type="text" name="telephone" style="width:200px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
                  <td><input type="text" name="fax" style="width:200px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
                  <td><input type="text" name="mobile" style="width:200px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
                  <td> 
                    <input type="file" name="image" style="width:300px;"> </td>
                </tr>
              </table>
              <div align="center"><br>
                <input type="submit" name="edit" value="เพิ่มข้อมูลสมาชิก">
              </div>
            </form></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<%
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