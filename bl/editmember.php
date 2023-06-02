<?
ob_start();
session_start();
if($_SESSION["user"]=="")
{
header('location:../index.php');
exit();
}
//============ Start Session และทำการเรียก Function ติดต่อฐานข้อมูล 
require_once('../connect/connect.php');
require_once('../connect/function.php');


					  //=========== กรณีมีการแก้ไขรายการสินค้า
                       if($_GET["Action"]=="Save")
	                   {
						//===========  บันทึกข้อมูลสินค้า
	                  $sql_up = "update member set member_id='$_POST[member_id]',member_user='$_POST[member_user]',member_pass='$_POST[member_pass]',member_co='$_POST[member_co]',member_addr='$_POST[member_addr]',member_tel='$_POST[member_tel]',member_status='$_POST[member_status]' where ID='$_GET[ID]'";
                      $dbquery_up = mysql_query($sql_up);
					  //echo $sql_up;
					//  exit();									
									echo"<script language='JavaScript'>";
									echo"alert('แก้ไขข้อมูลเรียบร้อยแล้ว');";
									echo"window.location='memberresult.php';";
									echo"</script>";					  
			 		  }
?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/template-blacklist.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>สมาคมรถเช่าไทย---TCRA Member System</title>
<!-- InstanceEndEditable -->
<meta NAME="Subject" CONTENT="สมาคมรถเช่าไทย,รถเช่าไทย,รถเช่า,เช่ารถ,tcra,thai car rental,ธุรกิจรถเช่า,กฎหมายรถเช่า,ราคากลางรถเช่า">
<meta NAME="Description" CONTENT="สมาคมรถเช่าไทย,รถเช่าไทย,รถเช่า,เช่ารถ,tcra,thai car rental,ธุรกิจรถเช่า,กฎหมายรถเช่า,ราคากลางรถเช่า">
<meta NAME="Abstract" CONTENT=" สมาคมรถเช่าไทย,รถเช่าไทย,รถเช่า,เช่ารถ,tcra,thai car rental,ธุรกิจรถเช่า,กฎหมายรถเช่า,ราคากลางรถเช่า">
<meta NAME="Keywords" CONTENT="สมาคมรถเช่าไทย,รถเช่าไทย,รถเช่า,เช่ารถ,ธุรกิจรถเช่า,กฎหมายรถเช่า,ราคากลางรถเช่า,ไทยรถเช่า,tcra,thai car rental,car rent,carrent,thai car rental association">
<link href="../css/blacklist.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body onload="MM_preloadImages('images/search2.jpg','images/account-info2.jpg','images/logout2.jpg')">
<div class="block1">
  <div class="block-h">
<div class="bigblock">
			<div class="headder">
            <div class="logo"><img src="images/logo.png" width="705" height="128" /></div>
            <div class="icon-menu"><a href="search.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('search','','images/search2.jpg',1)"><img src="images/search.jpg" name="search" width="66" height="45" border="0" id="search" /></a><a href="myaccount.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('info','','images/account-info2.jpg',1)"><img src="images/account-info.jpg" name="info" width="75" height="45" border="0" id="info" /></a><a href="logout.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logout','','images/logout2.jpg',1)"><img src="images/logout.jpg" name="logout" width="75" height="45" border="0" id="logout" /></a></div>
            <!-- InstanceBeginEditable name="subject" -->
            <div class="subject">เพิ่มข้อมูลลูกค้าที่มีประวัติ</div>
            <!-- InstanceEndEditable --></div>
    </div>
  </div>
  <div class="block-c">
	<div class="bigblock">
      <div class="contain"><!-- InstanceBeginEditable name="menu" -->
        <div class="menu"> <img src="../bl/images/mainmenu.jpg" width="239" height="55" />
          <div id="navside">
       <div class="sec-ymenu">
              <ul>
                <li><a href="custBadd.php">เพิ่มข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="custBview.php">ค้นหาข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
            </div>
            
	<!--    <div class="sec-bmenu">
              <ul>
                <li><a href="driverBadd.php">เพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="search.php">ค้นหาข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
            </div> -->
            
     		<div class="sec-ymenu">
              <ul>
                <li><a href="SupplierBadd.php">เพิ่มข้อมูล Supplier ที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="SupplierBview.php">ค้นหาข้อมูล Supplier ที่มีประวัติ</a></li>
              </ul>
            </div>
            
            <div class="sec-ymenu">
              <ul>
                <li><a href="StaffBadd.php">เพิ่มข้อมูลพนักงานที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="StaffBview.php">ค้นหาข้อมูลพนักงานที่มีประวัติ</a></li>
              </ul>
            </div>
            
            <div class="sec-bmenu">
              <ul>
                <li class="current"><a href="member.php">เพิ่มข้อมูลสมาชิกสมาคม</a></li>
              </ul>
              <ul>
                <li><a href="memberresult.php">แสดงข้อมูลสมาชิกสมาคมทั้งหมด</a></li>
              </ul>
             
            </div>
            
            
            <p><a href="../freeaspwebboard/" target="_blank"><img src="../images/webboard.gif" width="210" height="80" border="0" align="right" /></a></p>
          </div>
        </div>
      <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="content" -->
      
		  <?
			//===========  อ่านว่าคือสินค้าชนิดใด
			$result=select("member","where 1=1 and ID='".$_GET["ID"]."'");
			if(!$result)
			{
			header("location:member.php");
			}
        
          ?>
      
       	  <div class="content-data">
       	    <form name="frm<?=$i;?>" method="post" action="<?=$_SERVER['PHP_SELF'];?>?ID=<?=$_GET["ID"];?>&Action=Save" enctype="multipart/form-data" onSubmit="return chkAction()">
        <table width="98%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>เลขสมาชิก</strong></td>
            <td width="476"><input type="text" name="member_id" style="width:100px;" value="<?=$result["member_id"];?>" maxlength="100">
            <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>Username</strong></td>
            <td width="476"><input type="text" name="member_user" style="width:150px;" value="<?=$result["member_user"];?>" maxlength="100">
              <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>Password</strong></td>
            <td><input type="text" name="member_pass" style="width:150px;" value="<?=$result["member_pass"];?>" maxlength="100">
              <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
            <td><input type="text" name="member_co" style="width:350px;" value="<?=$result["member_co"];?>" maxlength="350">
              <span style="color:#F00;">* </span></td>
          </tr>
         
          
 			<input type="hidden" name="counter" />
      
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
              <td>
                <TEXTAREA NAME="member_addr" ROWS="3" COLS="60"><?=$result["member_addr"];?></TEXTAREA><span style="color:#F00;"> * </span>
                <br/>
              </td>
          </tr>
          
        <tr align="left" valign="top"> 
        <td bgcolor="#FBB18E"><strong>เบอร์โทรศัพท์</strong></td>
        <td><input type="text" name="member_tel" style="width:150px;" value="<?=$result["member_tel"];?>" maxlength="100">
              <span style="color:#F00;">* </span></td></tr>
              
		<tr align="left" valign="top"> 
        <td bgcolor="#FBB18E"><strong>สถานะ</strong></td>
        <td><input type="radio" name="member_status" value="Yes" <? if($result["member_status"]=="Yes"){?>checked<?}?>>
              เปิดใช้งาน 
              <input type="radio" name="member_status" value="No" <? if($result["member_status"]=="No"){?>checked<?}?>>
              ปิดใช้งาน <span style="color:#F00;">* </span></td></tr>
          
        </table>
	    <br>
        
        <div align="center"><br>
	  <input name="Submit" type="submit" class="button" value="บันทึก"> 
                <input name="Cancel" type="button" class="button" id="Cancel" value="ยกเลิก" onClick="window.location='memberresult.php';"></div>
      </form>
   	      </div>
   	    <!-- InstanceEndEditable --></div>
    </div>
  </div>
<div class="block-bottom">
<div class="bigblock" style=" background-image:url(images/bg-bottom.jpg);">
<div class="contain" style="padding-top:26px;">
<span class="bottom-logo">
<img src="images/logo2.png" width="47" height="47" /></span>
<span class="bottom-text">2585/8 (ตรงข้ามตลาดคลองเตย) ถ.พระรามที่ 4 แขวงคลองเตย เขตคลองเตย กรุงเทพฯ 10110<br />
โทร. 0-2204-1454 , 0-2258-7777 ต่อ 247 โทรสาร.0-2204-1455<br />
Email : thaitcra@gmail.com --- TCRA &copy; 2011 All rights Reserved.<br /></span>
</div></div>
</div>
</div>
</div>
<br style="clear:both;" />
</div>

</body>
<!-- InstanceEnd --></html>

<? 
Function selected($a,$b) {
	if (($a<>"") and (not(isnull($a))) and ($b<>"") and (not(isnull($b)))) { 
			if (cSTR($a)==cSTR($b)) {
					$selected=" selected ";
			}
	}
}
?>
<script language="JavaScript">
		function chkAction() {
				var a=document.form;
				var counter = 0;
				
				if(!a.name.value) {
						alert("กรุณาป้อน ชื่อ");
						return false;
				}
				if(!a.surname.value) {
						alert("กรุณาป้อน นามสกุล");
						return false;
				}
				if(!a.idcard.value) {
						alert("กรุณาป้อน เลขบัตรประชาชน");
						return false;
				}
				
				if(!a.demerit.value) {
						alert("กรุณาป้อน ลักษณะการกระทำความผิด ");
						return false;
				}
				
				if(a.idcard.value.length!=13) {
						alert("กรุณาป้อน เลขบัตรประชาชน ให้ถูกต้อง");
						return false;
				}
/*				for(var j=0;j<a.address.length;j++) {
					if(!a.address[j].value) {
							alert("กรุณากรอก ที่อยู่");
							return false;
					}
				}*/
/*					if(!a.zipcode.value) {
						alert("กรุณากรอก รหัสไปรษณีย์");
						return false;
				}*/
/*				if(!a.idss.value) {
						alert("กรุณากรอก เลขที่บัตรประกันสังคม");
						return false;
				}
				if(!a.idtax.value) {
						alert("กรุณากรอก เลขประจำตัวผู้เสียภาษี");
						return false;
				}
				if(!a.telephone.value) {
						alert("กรุณากรอก โทรศัพท์");
						return false;
				}
				if(!a.mobile.value) {
						alert("กรุณากรอก โทรศัพท์มือถือ");
						return false;
				}*/
				
		/*		for(var i = 0; i < a.demerit.length; i++) {
					if(a.demerit[i].checked) counter++;
					if(a.demerit[i].checked && a.demerit[i].value=="20.อื่นๆ") {
						if(!a.demeritdetail.value) {
							alert("กรุณาระบุ รายละเอียดการกระทำความผิด");
							return false;
						}
					}
				}
				if(counter < 1) {
					alert("กรุณาเลือก ลักษณะการกระทำความผิดอย่างน้อย 1 ข้อ");
					return false;
				}else{
					a.counter.value=counter;
				}
				for(var k=0;k<a.datedemerit.value.length;k++) {
						if(!a.datedemerit[k].options[a.datedemerit[k].selectedIndex].value) {
							alert("กรุณากรอก วัน/เดือน/ปี ที่กระทำความผิด");
							return false;
						}
				}
				if(!a.datedemerit.value) {
					alert("กรุณากรอก วัน/เดือน/ปี ที่กระทำผิด");
					return false;
				}   */
			return true;
		}
</script>