<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
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
    <td colspan="2"> <!--#include file="../include/head.htm"--> </td>
  </tr>

  <tr align="left" valign="top"> 
    <td width="170"> <!--#include file="../include/smenu.htm"--> </td>
    <td width="580"><span class="big"><strong>สมาชิก<br>
      </strong></span> <br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
      <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center">&nbsp;ยินดีต้อนรับคุณ <b><%=session("username")%></b> เข้าสู่ระบบ</td>
        </tr>
      </table> </td>
  </tr>
  <tr align="left" valign="top"> 
    <td colspan="2"> <!--#include file="../include/copyright_th.htm"--> </td>
  </tr>
</table>
</body>
</html>
<% cn.Close
Set cn=nothing%>