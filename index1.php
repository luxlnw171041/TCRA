<?
@session_start();
$errors = '';

if(isset($_POST['submit']))
{
	if(empty($_SESSION['6_letters_code'] ) ||
	  strcmp($_SESSION['6_letters_code'], $_POST['6_letters_code']) != 0)
	{
		$errors .= "\n The captcha code does not match!";
	}
	
	if(empty($errors))
	{
		require_once('connection.php');
		$name=$_POST['name'];
		$content=$_POST['content'];
		$commentid=$_POST['commentid'];
		$images='/images/avatar-1.png';
		mysql_query("INSERT INTO comment(name, content, images, comsubid)VALUES('$name', '$content', '$images', '$commentid')");

        //<a href="#L384">A pinned-down menu</a>
	    //<meta http-equiv=refresh content=2;URL="#seccomment">
		echo"<script language='JavaScript'>";
		echo"alert('ส่งข้อมูลความคิดเห็นของคุณเรียบร้อยแล้ว');";
		//echo"window.location='loginnow.php';";					
		echo"window.location='#seccomment';";
		echo"</script>";
	}
}

?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>สมาคมรถเช่าไทย---TCRA</title>
<meta name="google-site-verification" content="UaQz7MGoWuzz1WgCu59K1LoFDEwl8AcHZ5v-19pQ0pg" />
<meta NAME="Subject" CONTENT="สมาคมรถเช่าไทย,รถเช่าไทย,รถเช่า,เช่ารถ,tcra,thai car rental,ธุรกิจรถเช่า,กฎหมายรถเช่า,ราคากลางรถเช่า">
<meta NAME="Description" CONTENT="สมาคมรถเช่าไทย รถเช่าไทย รถเช่า เช่ารถ ธุรกิจรถเช่า กฎหมายรถเช่า ราคากลางรถเช่า ข้อมูลรถเช่า  thai car rental ">
<meta NAME="Abstract" CONTENT=" สมาคมรถเช่าไทย,รถเช่าไทย,รถเช่า,เช่ารถ,tcra,thai car rental,ธุรกิจรถเช่า,กฎหมายรถเช่า,ราคากลางรถเช่า">
<meta NAME="Keywords" CONTENT="สมาคมรถเช่าไทย, รถเช่าไทย, รถเช่า, เช่ารถ, ธุรกิจรถเช่า, กฎหมายรถเช่า, ราคากลางรถเช่า, ไทยรถเช่า, รถยนต์เช่า, เช่ารถยนต์, รถเช่าถูก, รถเช่าคุณภาพ, มาตรฐานรถเช่า, tcra, thai car rental, car rent, carrent, thai car rental association">
<meta name="robots" content="index,follow" />

<link href="css/tcra-css.css" rel="stylesheet" type="text/css" />
<link href="css/text-css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
	text-align: left;
}
.style58 {
	color: #FF6600;
}
.box_font{
	border:0px solid #CCC;
	padding:0px;
	width:211px;
	margin-top:4px;
	height:auto;
	font-size:12px;
	font-weight:normal;
}

</style>
<link href="css/inside.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="js/lightbox.js"></script>



<style>
	.err
	{
		font-family : Verdana, Helvetica, sans-serif;
		font-size : 12px;
		color: red;
	}
	ul
	{
		padding:0;
		margin: 0 0 0 13px;
		padding: 0;
	}
	#commentcontainer
	{
		height:auto;
		width:450px;
		margin:0 auto;
	}
	#commentcontainer img
	{
		float:left;
		border:1px solid #eeeeee;
		padding:5px;
		margin:0 12px 12px 0;
	}
	.clearfix
	{
		clear:both;
	}
	p
	{
		margin:0;
		padding:2px;
	}
	#subcomm img
	{
		height:auto;
		max-width:40px;
		float:left;
		border:1px solid #eeeeee;
		padding:5px;
		margin:5px 5px 5px 5px;
	}
	#subcomm
	{
		float:right;
		height:auto;
		width:337px;
		background-color:#fbfbfb;
		border-bottom:1px solid white;
	}
	#maincomm
	{
		border-bottom:1px solid gray;
		padding-bottom:5px;
		margin-bottom:10px;
		background-color:#fbfbfb;
	}
	#name
	{
		font-weight: bold;
		color: #3B5998;
		text-transform:capitalize;
	}
	#comm a
	{
		text-decoration:none;
		color:#3b5998;
	}
	#comm a:hover
	{
		text-decoration:underline;
	}
</style>	





<script>


//<!--
//function MM_swapImgRestore() { //v3.0
//  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
//}
//function MM_preloadImages() { //v3.0
//  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
//    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
//    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
//}
//
//function MM_findObj(n, d) { //v4.01
//  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
//    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
//  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
//  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
//  if(!x && d.getElementById) x=d.getElementById(n); return x;
//}
//
//function MM_swapImage() { //v3.0
//  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
//   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
//}
//-->

</script>
<SCRIPT LANGUAGE='JAVASCRIPT' TYPE='TEXT/JAVASCRIPT'>
 <!--
/*var win=null;
function NewWindow(mypage,myname,w,h,pos,infocus){
if(pos=="random"){myleft=(screen.width)?Math.floor(Math.random()*(screen.width-w)):100;mytop=(screen.height)?Math.floor(Math.random()*((screen.height-h)-75)):100;}
if(pos=="center"){myleft=(screen.width)?(screen.width-w)/2:100;mytop=(screen.height)?(screen.height-h)/2:100;}
else if((pos!='center' && pos!="random") || pos==null){myleft=10;mytop=30}
settings="width=" + w + ",height=" + h + ",top=" + mytop + ",left=" + myleft + ",scrollbars=yes,location=yes,directories=no,status=no,menubar=no,toolbar=no,resizable=yes";win=window.open(mypage,myname,settings);
win.focus();}*/


//NewWindow('http://www.japanrent.co.th/th/intro.html','japanrent','200','300','custom','front');
// -->

</script>

<script>
function popUp(URL)
{
popup = new Date();
id = popup.getTime();
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=150,height=300,left = 10,top = 150');");
}
</script>

<style type="text/css">
.เงิน {font-size: 18px}
.bigcontain .header .con-head .boxbody .index-contain .article p a span font {
	text-align: center;
}
.bigcontain .header .con-head .boxbody .index-contain .article p {
	text-align: justify;
}
.bigcontain .header .con-head .boxbody .index-contain .article p {
	text-align: justify;
	font-weight: normal;
}
.bigcontain .header .con-head .boxbody .index-contain .article p a span font {
	text-align: left;
}
.bigcontain .header .con-head .boxbody .index-contain .article p a span font {
	text-align: left;
}
div {
	text-align: left;
}
div {
	text-align: left;
}
.bigcontain .contain .con-right div table tr td table tr td table tr td font {
	color: #333;
}
.bigcontain .contain .con-right div table tr td table tr td table tr td font {
	text-align: justify;
	color: #09F;
}
td {
	text-align: justify;
}
span {
	text-align: center;
}
</style></head>
<body onload="MM_preloadImages('images/about-tcra2.jpg','images/mainpage2.jpg','images/member-tcra2.jpg','images/news2.jpg','images/contacts2.jpg');popUp('http://www.japanrent.co.th/th/intro.html')">

<div class="bigcontain">
<div class="header">
<div style="padding-top:20px; padding-left:302px; padding-bottom:5px;"><img src="images/logo-tcra.png" width="698" height="126" />
  <div align="center">
    <table width="95%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <th width="19%" scope="col">&nbsp;</th>
        <th width="81%" scope="col"><img src="images/DBD21.png" width="677" height="88" align="left" /></th>
      </tr>
  </table>
  </div>
</div>
<div class="con-member" style="margin-top:240px;">
  <img src="images/bg-member-up.png" width="231" height="78" />
  

	

<div style="float:right;"></div>   

<!--  หน้า Backlist Cutomer, suplier, employee  -->
<form id="form1" name="form1" method="post" action="./bl/login.php">
<div class="sub-member">

<div><img src="images/rec.png" width="8" height="21" /></div>
<div><img src="images/id.png" width="65" height="23" /></div>
<div style="padding-left:80px;">
  <p>
    <input name="username" type="text"
	id="username" size="12" maxlength="15" /></p>
  </div>
<div><img src="images/rec.png" width="8" height="21" /></div>
<div><img src="images/pwd.png" width="58" height="23" /></div>
<div style="padding-left:80px;">
  <p>
    <input name="password" type="password"
	id="password" size="12" maxlength="15" /></p>
</div>
<div style="margin-top:9px; padding-left:130px;">
  <input type="hidden" name="cookielength" value="-1" />
  <input name="submit" type="submit" class="style58" value="เข้าสู่ระบบ" />
    
</div>

</div>


</form>
</div>

<div class="con-head">
	<div class="boxtop" style="background-image:url(images/boxtop.png); background-repeat:no-repeat;">
    	<div class="menu">
        <a href="index.php" target="_parent" onmouseover="MM_swapImage('mainpage','','images/mainpage2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="images/mainpage2.jpg" name="mainpage" width="79" height="60" border="0" id="mainpage" /></a>
        <img src="images/slash.jpg" width="22" height="60" />
        <a href="abouttcra.php" target="_parent" onmouseover="MM_swapImage('aboutus','','images/about-tcra2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="images/about-tcra.jpg" name="aboutus" width="133" height="60" border="0" id="aboutus" /></a>
         <img src="images/slash.jpg" width="22" height="60" />
        <a href="membertcra.php" target="_parent" onmouseover="MM_swapImage('member','','images/member-tcra2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="images/member-tcra.jpg" name="member" width="118" height="60" border="0" id="member" /></a>
         <img src="images/slash.jpg" width="22" height="60" />
	    	<a href="registermember.php" target="_parent" onmouseover="MM_swapImage('register','','images/register-member2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="images/register-member.jpg" name="register" width="116" height="60" border="0" id="news2" /></a> 
	    	 <img src="images/slash.jpg" width="22" height="60" />        
        <a href="contacts.php" target="_parent" onmouseover="MM_swapImage('contacts','','images/contacts2.jpg',1)" onmouseout="MM_swapImgRestore()"><img src="images/contacts.jpg" name="contacts" width="85" height="60" border="0" id="contacts" /></a>
        </div>
	</div>

    <div class="boxbody" style="background-image:url(images/boxbody.gif); background-repeat:no-repeat;">
  	  <div class="index-contain">
      		<div class="article">
      		  <a href="updatenewsf99-113.php" target="_blank"><span style="font-weight:bolder; font-size:14px;"><font color="#ed4e05">สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 1/2566 </font></span></a>
      		  
 <br/>&nbsp;&nbsp;&nbsp;วันพุธที่ 15 กุมภาพันธ์ 2566 เวลา 15.00-17.00 น. สมาคมรถเช่าไทย จัดการประชุมสามัญครั้งที่ 1/2566 ณ ห้อง Ballroom 2    โรงแรม S31 Sukhumvit Hotel Bangkok  โดย ดร.นที  วรรธนะโกวินท์  นายกสมาคม คุณวสันต์ ติรยาอุดมสุข อุปนายกสมาคม ... 
 <br/><br/>&nbsp;&nbsp;&nbsp;
<a href="updatenewsf99-113.php" target="_new">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<< อ่านต่อ >></a></div>
  <div class="pic-slide" style="padding-top:8px; font-size:20px; font-weight:bolder;">
        ข่าวสารสมาคม<img src="flash/slide-news99-113.gif" width="416" height="251" /></div>      
  	    <br style="clear:both;" />
  	  </div>
    </div>  
    <div class="boxbottom" style="background-image:url(images/boxbottom.gif); background-repeat:no-repeat;"></div>
</div>
<br style="clear:both" />
</div>

<div class="contain">
<div class="con-left">



<!--  หน้า Backlist Chauffeur พนักงานขับรถ  -->
<form id="form2" name="form2" method="post" action="./bl/loginbl.php">
    <div class="memberloginbl" style="background-image:url(images/bg-memberbl.png); background-repeat:no-repeat;">
	<br />
    <div>&nbsp;</div>

      <div style="margin-top:20px; padding-left:19px;">
        <p>Username :
          <input name="txtUser" type="text"
        id="txtUser" size="10" maxlength="15" /></p>
	  </div>
      
    <div style="padding-left:23px;">
        <p>Password :
        <input name="txtPass" type="password"
        id="txtPass" size="10" maxlength="15" /></p>
      </div>
    <center>
    <div style="margin-top:1px; padding-left:140px;">
      <input type="hidden" name="cookielength" value="-1" />
      <input name="submit" type="submit" class="style58" value="เข้าสู่ระบบ" />
        
    </div>
    </center>
	<br>
	<br>
    </div>

</form>


<!--  หน้า รถเหลือใช้  -->
<!-- <form id="form3" name="form3" method="post" action="./acar/login.php"> -->
<!--     <div class="memberlogin" style="background-image:url(images/bg-membera.png); background-repeat:no-repeat;"> -->
<!--  -->
<!--     <div>&nbsp;</div> -->
<!--  -->
<!--       <div style="margin-top:20px; padding-left:19px;"> -->
<!--         <p>Username : -->
<!--           <input name="txtUsername" type="text" -->
<!--         id="txtUsername" size="10" maxlength="15" /></p> -->
<!-- 	  </div> -->
<!--        -->
<!-- 	  <div style="padding-left:23px;"> -->
<!--         <p>Password : -->
<!--         <input name="txtPassword" type="password" -->
<!--         id="txtPassword" size="10" maxlength="15" /></p> -->
<!-- 	  </div> -->
<!--     <center> -->
<!--     <div style="margin-top:1px; padding-left:140px;"> -->
<!--       <input type="hidden" name="cookielength" value="-1" /> -->
<!--       <input name="submit" type="submit" class="style58" value="เข้าสู่ระบบ" /> -->
<!--     </div> -->
<!--     </center> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!--     </div> -->
<!--      -->
<!--  -->
<!-- </form> -->


<!--<form id="form1" name="form1" method="post" action="../bl/login-b.asp">
	 	<div class="webboard">
        <div id="login-webboard">
       <input type="image" src="images/loginboard.jpg" alt="submit button" />
        
        </div>
        <div id="form-webboard">
        <span><img src="images/username.jpg" width="70" height="14" /></span>
   
    <input name="username" type="text"
	id="username" size="15" maxlength="15" />

        <span><img src="images/pwd.jpg" width="70" height="16" /></span>
            <input name="password" type="password"
	id="password" size="15" maxlength="15" />
        </div>
        </div>
</form>-->

<!--	 <//------------start banner flash japanrent-----------//> <object id="FlashID2" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="215" height="97">
	    <param name="movie" value="flash/banner_japanrent.swf" />
	    <param name="quality" value="high" />
	    <param name="wmode" value="opaque" />
	    <param name="swfversion" value="6.0.65.0" />
	    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
	    <!--<param name="expressinstall" value="Scripts/expressInstall.swf" />-->
	    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
	    <!--[if !IE]>-->
	  <!--  <object type="application/x-shockwave-flash" data="flash/banner_japanrent.swf" width="215" height="97">-->
	      <!--<![endif]-->
	   <!--   <param name="quality" value="high" />
	      <param name="wmode" value="opaque" />
	      <param name="swfversion" value="6.0.65.0" />
	      <param name="expressinstall" value="Scripts/expressInstall.swf" />-->
	      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
	     <!-- <div>
	        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
	        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
	        </div>-->
	      <!--[if !IE]>-->
	      <!--</object>-->
	    <!--<![endif]-->
	   <!-- </object>-->
       
       
      
<!--       <p><img src="images/img_news/q003.gif" width="218" height="230" border="0" /></p> -->
<!--       <p><video width="218" height="216" poster="images/img_news/0.jpg" class="img-article img-responsive" controls=""> -->
<!--           <source src="images/img_news/FBInsFilmTH.mp4" type="video/mp4"> -->
<!--          </video></p> -->


<p>

<iframe src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/ThaiCarRentalAssociation&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="218" height="500" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe></p>

     
<!-- <div id="fb-root"></div> -->
<!-- <script>(function(d, s, id) { -->
<!--   var js, fjs = d.getElementsByTagName(s)[0]; -->
<!--   if (d.getElementById(id)) return; -->
<!--   js = d.createElement(s); js.id = id; -->
<!--   js.src = "//connect.facebook.net/th_TH/all.js#xfbml=1"; -->
<!--   fjs.parentNode.insertBefore(js, fjs); -->
<!-- }(document, 'script', 'facebook-jssdk'));</script> -->
<!--    -->
<!-- <div class="fb-like-box" data-href="http://www.facebook.com/tcra.thailand" data-width="210" data-height="550" data-show-faces="true" data-border-color="00ffff" data-stream="true" data-header="false"></div> -->


<?php

	//*** Connect MySQL ***//

	//*** mysql_connect("localhost","root","root");

	require_once('connection.php');

	mysql_select_db("counter");

	//*** Select วันที่ในตาราง Counter ว่าปัจจุบันเก็บของวันที่เท่าไหร่  ***//
	//*** ถ้าเป็นของเมื่อวานให้ทำการ Update Counter ไปยังตาราง daily และลบข้อมูล เพื่อเก็บของวันปัจจุบัน ***//
	$strSQL = " SELECT DATE FROM counter LIMIT 0,1";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	if($objResult["DATE"] != date("Y-m-d"))
	{
		//*** บันทึกข้อมูลของเมื่อวานไปยังตาราง daily ***//
		$strSQL = " INSERT INTO daily (DATE,NUM) SELECT '".date('Y-m-d',strtotime("-1 day"))."',COUNT(*) AS intYesterday FROM  counter WHERE 1 AND DATE = '".date('Y-m-d',strtotime("-1 day"))."'";
		mysql_query($strSQL);

		//*** ลบข้อมูลของเมื่อวานในตาราง counter ***//
		$strSQL = " DELETE FROM counter WHERE DATE != '".date("Y-m-d")."' ";
		mysql_query($strSQL);
	}

	//*** Insert Counter ปัจจุบัน ***//
	$strSQL = " INSERT INTO counter (DATE,IP) VALUES ('".date("Y-m-d")."','".$_SERVER["REMOTE_ADDR"]."') ";
	mysql_query($strSQL);

	//******************** Get Counter ************************//

	// Today //
	$strSQL = " SELECT COUNT(DATE) AS CounterToday FROM counter WHERE DATE = '".date("Y-m-d")."' ";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	$strToday = $objResult["CounterToday"];

	// Yesterday //
	$strSQL = " SELECT NUM FROM daily WHERE DATE = '".date('Y-m-d',strtotime("-1 day"))."' ";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	$strYesterday = $objResult["NUM"];

	// This Month //
	$strSQL = " SELECT SUM(NUM) AS CountMonth FROM daily WHERE DATE_FORMAT(DATE,'%Y-%m')  = '".date('Y-m')."' ";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	$strThisMonth = $objResult["CountMonth"];

	// Last Month //
	$strSQL = " SELECT SUM(NUM) AS CountMonth FROM daily WHERE DATE_FORMAT(DATE,'%Y-%m')  = '".date('Y-m',strtotime("-1 month"))."' ";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	$strLastMonth = $objResult["CountMonth"];

	// This Year //
	$strSQL = " SELECT SUM(NUM) AS CountYear FROM daily WHERE DATE_FORMAT(DATE,'%Y')  = '".date('Y')."' ";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	$strThisYear = $objResult["CountYear"];

	// Last Year //
	$strSQL = " SELECT SUM(NUM) AS CountYear FROM daily WHERE DATE_FORMAT(DATE,'%Y')  = '".date('Y',strtotime("-1 year"))."' ";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	$strLastYear = $objResult["CountYear"];

	//*** Close MySQL ***//
	
?>

<table width="100%" border="0" cellpadding="0" cellspacing="1"">
  <tr>
    <td colspan="2"><b><div align="center">Statistics</div></b></td>
  </tr>
  <tr>
    <td width="98">Today</td>
    <td width="75"><div align="center"><?php echo number_format($strToday,0);?></div></td>
  </tr>
  <tr>
    <td>Yesterday</td>
    <td><div align="center"><?php echo number_format($strYesterday,0);?></div></td>
  </tr>
  <tr>
    <td>This Month </td>
    <td><div align="center"><?php echo number_format($strThisMonth,0);?></div></td>
  </tr>
  <tr>
    <td>Last Month </td>
    <td><div align="center"><?php echo number_format($strLastMonth,0);?></div></td>
  </tr>
  <tr>
    <td>This Year </td>
    <td><div align="center"><?php echo number_format($strThisYear,0);?></div></td>
  </tr>
  <tr>
    <td>Last Year </td>
    <td><div align="center"><?php echo number_format($strLastYear,0);?></div></td>
  </tr>

    <tr>
    <td>Counter-Start </td>
    <td><div align="center">9/3/2564 14:27 </div></td>
  </tr>
</table>



</div></div>
  
<div class="con-center">

<img src="images/tcra_news.gif" width="340" height="36" />


</br>


	<table width="550" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="yellow" >
		  <tr>
				<td bgcolor="#FFFFFF"><center>
				  <img src="images/img_news/new02.gif" width="557" height="431" border="0"/>
				</center></td>
		  </tr>
	</table>

	<table width="550" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="green" >
		<tr>
        <td bgcolor="#ffffff"><div class="news">
		<iframe width="557" height="313" src="https://www.youtube.com/embed/PPchnq4OBQ8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div></td>
      </tr>
	</table>

	  <tr>
        <td bgcolor="#FFFFFF">&nbsp;</td>
      </tr>

<!--   <tr> -->
<!--         <td bgcolor="#FFFFFF"><center> -->
<!--           <img src="images/img_news/new01.gif" width="562" height="483" border="0"/> -->
<!--         </center></td> -->
<!--   </tr> -->
      
      </br>


<img src="images/event-1.png" width="301" height="36" />
  
      
  <div>
    <table width="562" border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr></tr>
      
      <tr>
        <td bgcolor="#ffffcc"><div class="sub-concenter"></div></td>
      </tr>
      <tr>
        <td bgcolor="#ffffff"><div class="news">
<!--           <video width="562" height="316" poster="images/img_news/ssTPBS.jpg" class="img-article img-responsive" controls=""> -->
<!--             <source src="images/img_news/ThaiPBScutFinal.mp4" type="video/mp4"> -->
<!-- 		</video> -->
        <iframe width="560" height="315" src="https://www.youtube.com/embed/cUNo32uk41U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

        </div></td>
      </tr>

      <tr>
        <td bgcolor="#ffffcc">&nbsp;
		
		<br />




      </tr>
    </table>
  </div>

   </br>
 
  <p><img src="images/event.gif" width="186" height="36" />
  </p>

  <div class="sub-concenter">
    <table width="562" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><center>
        </center></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div class="sub-concenter"></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><div class="events-news">


          <div class="subevent">
            <div style="padding-left:22px; color:#FFF; font-size:12px; width:150px;"><span style="font-size: 16px">27 กรกฎาคม 2565</span></div>
            <div class="pic"><img src="images/news/picnews99a-111.jpg" alt="" width="69" height="57" /></div>
            <div class="textevent">
              <a href="updatenewsf99-111.php" target="_blank" style="color:#006fd7;"><span style="color: #6eb337">สมาคมรถเช่าไทย <br/>มอบเงินแก่สภากาชาดไทย 
<br/>ประจำปี 2565 <br/>
</span></a>
            </div>
            <br style="clear:both;" />
            <div style="padding-left:200px;"><a href="updatenewsf99-111.php" target="_blank"><img src="images/readmore.png" alt="" width="42" height="12" border="0" /></a></div>
          </div>

          <div class="subevent">
            <div style="padding-left:22px; color:#FFF; font-size:12px; width:150px;"><span style="font-size: 16px">23 พฤศจิกายน 2565</span></div>
            <div class="pic"><img src="images/news/picnews99a-112.jpg" alt="" width="69" height="57" /></div>
            <div class="textevent">
              <a href="updatenewsf99-112.php" target="_blank" style="color:#006fd7;"><span style="color: #6eb337">สมาคมรถเช่าไทยจัดประชุม <br/>ครั้งที่ 4/2565<br/>ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19 <br/>
</span></a>
            </div>
			<br style="clear:both;" />
            <div style="padding-left:200px;"><a href="updatenewsf99-112.php" target="_blank"><img src="images/readmore.png" alt="" width="42" height="12" border="0" /></a></div>
          </div>
          <br style="clear:both;" />
        </div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
    </table>
</div>  
           
<div class="newstable">

	 <div style="padding-top:10px; padding-bottom:0px;"><img src="images/news.gif" width="148" height="21" border="0" /></div>


		   <div class="sub-newsr" style="background:url(images/bg-news1.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-110.php" target="_blank"> สมาคมรถเช่าไทย ได้รับรางวัลสมาคมการค้าดีเด่น ประจำปี 2565</a>
				 </li>
               </ul>
	       </div>

		   <div class="sub-newsr" style="background:url(images/bg-news2.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-109.php" target="_blank"> สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 3/2565 ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19</a>
				 </li>
               </ul>
	       </div>


		   <div class="sub-newsr" style="background:url(images/bg-news1.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-108.php" target="_blank"> สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 2/2565 ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19</a>
				 </li>
               </ul>
	       </div>

            <div class="sub-newsr" style="background:url(images/bg-news2.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-107.php" target="_blank">สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 1/2565 ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19</a>
                 </li>
               </ul>
	        </div>

            <div class="sub-newsr" style="background:url(images/bg-news1.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-106.php" target="_blank">สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 4/2564 ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19</a>
                 </li>
               </ul>
	        </div>

            <div class="sub-newsr" style="background:url(images/bg-news2.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-105.php" target="_blank">สมาคมรถเช่าไทย ได้รับรางวัลสมาคมการค้าดีเด่น ประจำปี 2564</a>
                 </li>
               </ul>
	        </div>

            <div class="sub-newsr" style="background:url(images/bg-news1.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-104.php" target="_blank">สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 3/2564 ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19</a>
                 </li>
               </ul>
	        </div>

            <div class="sub-newsr" style="background:url(images/bg-news2.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-103.php" target="_blank">สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 2/2564 ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19</a>
                 </li>
               </ul>
	        </div>

            <div class="sub-newsr" style="background:url(images/bg-news1.gif) repeat  ;">
               <ul id="news">
                 <li><a href="updatenewsf99-102.php" target="_blank">สมาคมรถเช่าไทยจัดประชุม ครั้งที่ 1/2564 ผ่านระบบ Video Conference Zoom Meetings ตามมาตรการป้องกันไวรัส Covid-19</a>
                 </li>
               </ul>
	        </div>


  		
    </div>
<!--     <div class="s-member"><img src="images/samun.gif" width="562" height="28" /> -->
<!--     <div class="s-member"><img src="images/logo-member-small/jpr.gif" width="93" height="35" /> -->
<!-- <img src="images/logo-member-small/pil.gif" width="73" height="35" /><img src="images/logo-member-small/budget.gif" width="74" height="35" /><img src="images/logo-member-small/nation.gif" width="81" height="35" /> -->
<!-- <img src="images/logo-member-small/krungthai.gif" width="78" height="35" /><img src="images/logo-member-small/bizcar.gif" width="87" height="35 -->
<!-- " /><img src="images/logo-member-small/qc.gif" width="77" height="35" /><img src="images/logo-member-small/bkk.gif" width="93" height="35" /><img src="images/logo-member-small/master.gif" width="74" height="35" /><img src="images/logo-member-small/thaiprestige.gif" width="81" height="35" /><img src="images/logo-member-small/vig.gif" width="74" height="35" /><img src="images/logo-member-small/thairenta.gif" width="78" height="35" /><img src="images/logo-member-small/falcon.gif" width="74" height="35" /><img src="images/logo-member-small/kcarrental.gif" width="74" height="35" /><img src="images/logo-member-small/sms.png" width="72" height="35" /><img src="images/logo-member-small/haup.png" width="60" height="39" /><img src="images/logo-member-small/evme.png" width="86" height="39" />&nbsp;<img src="images/logo-member-small/ncs.gif" width="125" height="39" /><img src="images/logo-member-small/vm01.png" width="97" height="37" /></div> -->
<!--     </div> -->
<!--      -->
<!--     <div class="s-member"><img src="images/region-ordinary.gif" width="562" height="28" /> -->
<!--     <div class="s-member"><img src="images/logo-member-small/ncs.gif" width="113" height="39" /></div> -->
<!--     </div> -->
<!--      -->
<!--     <div class="s-member"><img src="images/m_aec.gif" width="562" height="28" /> -->
<!--     <div class="s-member"><img src="images/logo-member-small/vm01.png" width="97" height="37" /></div> -->
<!--     </div> -->
<!--      -->
<!--       <div class="s-member"><img src="images/vsamun.gif" width="562" height="28" /> -->
<!--     <div class="s-member"><img src="images/logo-member-small/act1.gif" width="86" height="35" /><img src="images/logo-member-small/bangkokIns.gif" width="86" height="36" /><img src="images/logo-member-small/onelink.gif" width="70" height="36" /><img src="images/logo-member-small/nissan.gif" width="60" height="39" /><img src="images/logo-member-small/kleasing.gif" width="94" height="36" /><img src="images/logo-member-small/autolavie.gif" width="86" height="39" /><img src="images/logo-member-small/vkool.gif" width="68" height="39" /><img src="images/logo-member-small/ttb.gif" width="74" height="35" /><img src="images/logo-member-small/union_auction.jpg" width="58" height="39" /><img src="images/logo-member-small/phunchai.jpg" width="93" height="39" /><img src="images/logo-member-small/Glasstech.jpg" width="69" height="39" /><img src="images/logo-member-small/tata.gif" width="80" height="39" /><img src="images/logo-member-small/toyota motor2.png" width="86" height="39" /><img src="images/logo-member-small/mg.png" width="60" height="39" /><img src="images/logo-member-small/foton.png" width="86" height="39" /><img src="images/logo-member-small/mitsubishi.png" width="60" height="39" /> -->
<!-- 	<img src="images/logo-member-small/cartrack.png" width="60" height="39" /><img src="images/logo-member-small/carsome.png" width="86" height="39" /> -->
<!-- 	</div> -->
<!--      -->
<!--          -->
<!--     <div class="s-member"><img src="images/member_t1.png" width="562" height="28" /> -->
<!--     <div class="s-member"><img src="images/logo-member-small/tada.png" width="86" height="37" /></div> -->
<!--     </div> -->
<!--      -->
<!--        -->
        
    
    </div>
</div>


<div class="con-right">
  <div style="margin-top:8px;"><img src="images/act.gif" width="214" height="91" border="0" usemap="#act" />
    <map name="act" id="act">
      <area shape="rect" coords="9,4,211,90" href="https://cockpit.co.th/" target="_blank" />
    </map>
    
  </div> 
  </div>

<div class="con-right">
<div style="margin-top:8px;">

</div></div>
<div class="con-right">
<div style="margin-top:8px;">

</div></div>
<div class="con-right">
<div style="margin-top:8px;">

</div></div>

  <div style="margin-top:8px;"></div>
  <div class="box-rally"></div>
  
  <div class="con-right">
  <div style="margin-top:8px;">
    <a href="http://www.japanrent.co.th" target="_blank"><img src="images/japanrent.gif" width="215" height="98" border="0" /></a>
    <img src="images/qcleasing.gif" width="220" height="97" border="0" usemap="#bizcar" />
		<map name="qcleasing" id="qcleasing">
			<area shape="rect" coords="6,5,214,91" href="http://www.qcleasing.com" target="_blank" />
		</map>
	<img src="images/falcon.gif" width="214" height="91" border="0" usemap="#vig" />
        <map name="vig" id="vig">
          <area shape="rect" coords="8,7,207,83" href="https://falconinter.co.th" target="_blank" />
        </map>
    <img src="images/kcarrent.gif" width="214" height="89" border="0" usemap="#bkk" />
		<map name="bkk" id="bkk">
		  <area shape="rect" coords="6,3,208,85" href="http://www.kcarrental.co.th" target="_blank" />
		</map>
  </div> 
  </div>
  

  </div>
  <br style="clear:both;" />
</div>

<div class="contain" style="background:#1a4c7f; height:88px;">
<div class="address">
<div id="footer" style="margin-bottom:5px; font-family:Tahoma, Geneva, sans-serif; font-size:13px; color:#F93;"><a href="index.php" target="_parent">MAIN PAGE</a> |   <a href="abouttcra.php" target="_parent">ABOUT TCRA</a> |  <a href="membertcra.php" target="_parent">MEMBERS</a> |   <a href="updatenews.php" target="_parent">NEWS</a> |   <a href="emagazine.php" target="_parent">E-MAGAZINE</a> |   <a href="contacts.php" target="_parent">CONTACTS </a></div>
<div style="font-family:Tahoma, Geneva, sans-serif; font-size:13px; color:#fff;"> 2585/8 (ตรงข้ามตลาดคลองเตย) ถ.พระรามที่ 4 แขวงคลองเตย เขตคลองเตย กรุงเทพฯ 10110<br />
โทร. 0-2204-1454 , 0-2258-7777 ต่อ 247 โทรสาร.0-2204-1455<br />
<span id="mail"><a href="mailto:thaitcra@gmail.com">Email : thaitcra@gmail.com</a></span> --- TCRA  ©  2011 All rights Reserved.</div>
</div>
<div class="countertcra">
              <a href="http://www.histats.com" target="_blank" title="web log free" >
              <script  type="text/javascript" language="javascript">
var s_sid = 912413;var st_dominio = 4;
var cimg = 491;var cwi =112;var che =61;
        </script>
      </a>
      <script  type="text/javascript" language="javascript" src="http://s10.histats.com/js9.js"></script>
              <noscript>
                <a href="http://www.histats.com" target="_blank"> <img  src="http://s4.histats.com/stats/0.gif?912413&1" alt="web log free" border="0"></a>
              </noscript>
              <!-- Histats.com  END  -->

</div>
</div>
</div>

<script type="text/javascript">
swfobject.registerObject("FlashID3");
swfobject.registerObject("FlashID2");
</script>




</body>
</html>



