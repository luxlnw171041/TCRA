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
    <td align="left" valign="top"><!--#include file="head.htm"--></td>
  </tr>
  <tr>
    <td align="center" valign="middle">
  <form name="form" action="loginnow.asp" method="post" onSubmit="return chkAction()">
  		<%if request("Error")<>"" then response.write "<br><font color=red>"&request("Error")&"</font>"%>
        <br>
        <br>
        <table width="30%" border="1" cellpadding="5" cellspacing="0" bordercolor="#CCCCCC">
        <tr align="left" valign="middle"> 
          <td bgcolor="#e5e5e5"><strong>ชื่อผู้ใช้ระบบ</strong></td>
          <td><input type="text" name="username" style="width:100;" maxlength="100"></td>
        </tr>
        <tr align="left" valign="middle"> 
          <td bgcolor="#e5e5e5"><strong>รหัสผ่าน</strong></td>
          <td><input type="password" name="password" style="width:100;" maxlength="100"></td>
        </tr>
      </table>
	  <div align="center"><br>
	  	<input type="submit" name="login" value="เข้าสู่ระบบ">
	  </div>
  </form>
	  </td>
  </tr>
</table>
</body>
</html>
<script language="JavaScript">
		function chkAction() {
				var a=document.form;
				if(!a.username.value) {
						alert("กรุณากรอก ชื่อผู้ใช้ระบบ");
						return false;
				}
				if(!a.password.value) {
						alert("กรุณากรอก รหัสผ่าน");
						return false;
				}
			return true;
		}
</script>