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
//require_once('../connect/function.php');

//===========  อ่านข้อมูล
		
	
		$strsql = "SELECT * FROM customer ORDER BY id";
	
			
	
	
	echo "".$strsql ;
	
	$dbquery = mysql_query($strsql);	   
//	$result= mysql_fetch_array($dbquery);

	

?>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/template-blacklist.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>สมาคมรถเช่าไทย---TCRA Black list system</title>
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
            <div class="subject">แสดงผลการค้นหา</div>
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
                <li><a href="member.php">เพิ่มข้อมูลสมาชิกสมาคม</a></li>
              </ul>
              <ul>
                <li class="current"><a href="memberresult.php">แสดงข้อมูลสมาชิกสมาคมทั้งหมด</a></li>
              </ul>
             
            </div>
            
            
            <p><a href="../freeaspwebboard/" target="_blank"><img src="../images/webboard.gif" width="210" height="80" border="0" align="right" /></a></p>
          </div>
        </div>
      <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="content" -->
       	  <div class="content-data">
  
	  <?
		
	
	//if($result) 
	//{
	
		
      ?>
      <br />
       <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>ลำดับที่</strong></td>
          <td><strong>เช่าในนาม</strong></td>
          <td><strong>ชื่อบริษัท</strong></td>
          <td><strong>ชื่อ-นามสกุล</strong></td>
          <td><strong>เลขที่บัตรประชาชน</strong></td>
          <td><strong>ลักษณะความผิด</strong></td>
          <td><strong>รายละเอียดความผิด</strong></td>
          <td><strong>วันที่กระทำความผิด</strong></td>
          <td><strong>ผู้บันทึกข้อมูล</strong></td>
          <td><strong>วันที่บันทึก</strong></td>
        </tr>
        
        <?  $i=0;
			while($result= mysql_fetch_array($dbquery))
			{
			$i++; ?>
            
        <tr align="left" valign="top"> 
          <td align="center"><?=$i;?></td>
          <td><?=$result["rentname"];?></td>
          <td><?=$result["compname"];?></td>
          <td><?=$result["c_name"];?>&nbsp;&nbsp;&nbsp;<?=$result["c_surname"];?></td>
          <td align="center"><?=$result["c_idno"];?></td>
          <td align="center"><?=$result["demerit"];?></td>
          <td align="center"><?=$result["demeritdetail"];?></td>
          <td align="center"><?=$result["c_date"];?></td>
          <td align="center"><?=$result["member_co"];?></td>
          <td align="center"><?=$result["member_keyin"];?></td>
        </tr>
        
        <?

			}
			
		?>

      	</table>
	  

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

