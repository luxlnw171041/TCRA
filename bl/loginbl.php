<?
ob_start();
session_start();
?>
<html>
<head>
<title>..:: ระบบจัดการฐานข้อมูล ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body bgcolor="#FFFFFF">
<?

?>
<br>
<br>
<br>
<table cellspacing=1 cellpadding=4 width="47%" bgcolor=#333333 border=0 align="center">
  <tbody> 
  <tr> 
    <td bgcolor="#FFFFFF"> 
      <div align="center"><b><font face="MS Sans Serif" size="-2" color="#FF0000">Error 
        !!! Correct User Or Password</font></b> </div>
    </td>
  </tr>
  <tr bgcolor="#FFFFFF"> 
    <td> 
      <div align="center"><br>
        <font face="MS Sans Serif" size="-2"> 
        <?
//=========== ตรวจสอบการ login
require('../connect/connect.php');
// Check ถ้าเป็น Admin

$sql = "select * from member where member_user='$_POST[txtUser]' and member_pass='$_POST[txtPass]'";

$dbquery = mysql_query($sql);	   
$result= mysql_fetch_array($dbquery);
if($result) 
{
			//=========== บันทึกข้อมุลการ login ลง Session
			$_SESSION["id"]=$result["id"];
			$_SESSION["member_id"]=$result["member_id"];
			$_SESSION["user"]=$_POST[txtUser];
			//$_SESSION["pass"]=$_POST[txtPass];
			$_SESSION["member_co"]=$result["member_co"];
			$_SESSION["status"]="Online";
			$_SESSION["userlogin"]=true;
		
			session_write_close();
			header('location:loginnowbl.php');
}
else
{
			
				echo"<br><br><center>user หรือ password ไม่ถูกต้อง <br><br><br> | <a href='javascript:history.back()'>กลับไปแก้ไข</a> |<br><br>";

}
?>
        <br>
        <br>
        </font></div>
    </td>
  </tr>
  </tbody> 
</table>
</body>
</html>

