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
		
	$stridno="";	
	if($_POST["txtidno"]){
		$stridno=" d_idno='".$_POST["txtidno"]."'";
	  }else {
			$stridno="";
			}
	$strname="";	
	if($_POST["txtd_name"]){
		$strname=" d_name='".$_POST["txtd_name"]."'";
	  }else {
			$strname="";
			}
			
	$strsname="";		
	if($_POST["txtd_sname"]){
		$strsname=" d_surname='".$_POST["txtd_sname"]."' ";
	  }else {
			$strsname="";
		    }
		
	$strsql = "";	
		
		//echo "".$stridno. " / " . $strname . " / " .  $strsname . "===="  ;
		
		
		
	if($stridno=="" && $strname=="" && $strsname=="") {
		//$strsql = "select * from drivers where $stridno";
		echo"<script language='JavaScript'>";
		echo"alert('กรุณาป้อนข้อมูลที่ต้องการค้นหา');";
		echo"window.location='search.php';";
		echo"</script>";	
	}else {
	
	if($stridno=="" && $strname=="" && $strsname!=="") {
		echo"<script language='JavaScript'>";
		echo"alert('กรุณาป้อนข้อมูล เลขที่บัตรประชาชน');";
		echo"window.location='search.php';";
		echo"</script>";
	}
	if($stridno=="" && $strname!=="" && $strsname=="") {
		echo"<script language='JavaScript'>";
		echo"alert('กรุณาป้อนข้อมูล เลขที่บัตรประชาชน');";
		echo"window.location='search.php';";
		echo"</script>";
	}
	if($stridno=="" and $strname!=="" and $strsname!=="") {
		$strsql = "select * from drivers where $strname AND $strsname";
	}
	if($stridno!=="" and $strname=="" and $strsname=="") {
		$strsql = "select * from drivers where $stridno ";
	}
	if($stridno!=="" and $strname=="" and $strsname!=="") {
		$strsql = "select * from drivers where $stridno AND $strsname";
	}
	if($stridno!=="" and $strname!=="" and $strsname=="") {
		$strsql = "select * from drivers where $stridno AND $strname";
	}
	if($stridno!=="" and $strname!=="" and $strsname!==""){
		$strsql = "SELECT * FROM drivers WHERE $stridno AND $strname AND $strsname";
	}
			
	
	
	//echo "".$strsql ;
	
	$dbquery = mysql_query($strsql);	   
	$result= mysql_fetch_array($dbquery);

	}

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
            <div class="icon-menu"><a href="search.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('search','','images/search2.jpg',1)"><img src="images/search.jpg" name="search" width="66" height="45" border="0" id="search" /></a><a href="myaccount.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('info','','images/account-info2.jpg',1)"><img src="images/account-info.jpg" name="info" width="75" height="45" border="0" id="info" /></a><a href="logout.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logout','','images/logout2.jpg',1)"><img src="images/logout.jpg" name="logout" width="75" height="45" border="0" id="logout" /></a></div>
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
<!--            <div class="sec-ymenu">
              <ul>
                <li><a href="customerBadd.php">เพิ่มข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="customerBview.php">ดูข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
            </div>-->
            <div class="sec-bmenu">
              <ul>
                <li><a href="driverBadd.php">เพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li class="current"><a href="search.php">ค้นหาข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
            </div>
  <!--          <div class="sec-ymenu">
              <ul>
                <li><a href="SupplierB_add.asp">เพิ่มข้อมูล Supplier ที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="SupplierB_view.asp">ดูข้อมูล Supplier ที่มีประวัติ</a></li>
              </ul>
            </div>
            <div class="sec-bmenu">
              <ul>
                <li><a href="StaffB_add.asp">เพิ่มข้อมูลพนักงานที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="StaffB_view.asp">ดูข้อมูลพนักงานที่มีประวัติ</a></li>
              </ul>
            </div>-->
            <p><a href="../freeaspwebboard/" target="_blank"><img src="../images/webboard.gif" width="210" height="80" border="0" align="right" /></a></p>
          </div>
        </div>
      <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="content" -->
       	  <div class="content-data">
  
	  <?
		
	
	//if($result) 
	//{
	
		
      ?>
      <div><center><img src="../picture/<?php echo $result["d_pic"];?>"></center></div>
      <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>ชื่อ-นามสกุล</strong></td>
          <td><strong>เลขที่บัตรประชาชน</strong></td>
          <td><strong>ความผิด</strong></td>
          <td><strong>วันที่กระทำความผิด</strong></td>
        </tr>
        <tr align="left" valign="top"> 
          <td><?=$result["d_name"];?>&nbsp;&nbsp;&nbsp;<?=$result["d_surname"];?></td>
          <td align="center"><?=$result["d_idno"];?></td>
          <td align="left">
          
            <?
            //$result["d_dispr"];
			
            $demerit_tmp=$result["d_dispr"];
			
			If(strlen($demerit_tmp)>1) {
			
			$demerit= explode(',',$demerit_tmp);
								
			?>
					<? for($j=0;$j < count($demerit);$j++) {?>
					&#8226; <?=$demerit[$j];?>&nbsp;&nbsp; 
					<? if($demerit[$j]=="20.อื่นๆ") {?> 
                    <br />
					&nbsp;&nbsp;<?=$result["demeritdetail"]; }?>
					<br /> 
					<? } ?>
			<?
			}
			
			?>			

                    
		  </td>
          <td align="center"><?=$result["d_date"];?></td>
        </tr>
        
        <?

	//}
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

