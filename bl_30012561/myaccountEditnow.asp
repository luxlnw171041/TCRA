<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/upload.inc"-->
<!--#include file="../include/connection.asp"-->
<%
FormSize = Request.TotalBytes
FormData = Request.BinaryRead(FormSize)
bnCRLF = chrB( 13 ) & chrB( 10 )
Divider = LEFTB( FormData, INSTRB( FormData, bnCRLF ) - 1 )

company=ReadString(formdata,Divider,1)
name=ReadString(formdata,Divider,2)
sex=ReadString(formdata,Divider,3)
address=ReadString(formdata,Divider,4)
province=ReadString(formdata,Divider,5)
zipcode=ReadString(formdata,Divider,6)
telephone=ReadString(formdata,Divider,7)
fax=ReadString(formdata,Divider,8)
mobile=ReadString(formdata,Divider,9)
cimage=ReadString(formdata,Divider,10)
pixfile1=ReadFileName(formdata,Divider,11)

Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&session("id_member")
rs.open sql,cn,1,3
	if not(rs.eof) then
'			rs("company")=company
			rs("name")=name
			rs("sex")=sex
			rs("address")=address
			rs("province")=province
			rs("zipcode")=zipcode
			rs("country")=country
			rs("telephone")=telephone
			rs("fax")=fax
			rs("mobile")=mobile
			rs("startdate")=now()
			rs.update
			id_member=rs("id_member")
			if pixfile1 <> "" then
					if instrRev(pixfile1,"/")<>0 then
					   slash=instrRev(pixfile1,"/")
					else
					   slash=instrRev(pixfile1,"\")
					end if
					dot=instrRev(pixfile1,".")
					length=(cint(dot)-(cint(slash)+1))
					file=mid(pixfile1,(cint(slash)+1))
					file2=mid(pixfile1,(cint(slash)+1),length)
			
					'Upload Attach File to server
					if pixfile1<>"" and cimage<>0 then
						if rs("image")<>"" then
							Set fso=CreateObject("Scripting.FileSystemObject")
							iPath=Server.MapPath("../image/upload/member/"&rs("image"))
								if fso.FileExists(iPath) then
									fso.DeleteFile iPath
								end if
							Set fso=nothing
						end if
						 image=id_member&"-"&file2
						 ext = SaveToFile(formdata,divider,12,"../image/upload/member/"&image)
						 rs("image")=image&ext
						 rs.update
					end if 
			end if
	end if
rs.Close
Set rs=nothing
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/template-blacklist.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=tis-620" />
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

<body onLoad="MM_preloadImages('../bl/images/search2.jpg','../bl/images/account-info2.jpg','../bl/images/logout2.jpg')">
<div class="block1">
  <div class="block-h">
<div class="bigblock">
			<div class="headder">
            <div class="logo"><img src="../bl/images/logo.png" width="705" height="128" /></div>
            <div class="icon-menu"><a href="search.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('search','','../bl/images/search2.jpg',1)"><img src="../bl/images/search.jpg" name="search" width="66" height="45" border="0" id="search" /></a><a href="myaccount.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('info','','../bl/images/account-info2.jpg',1)"><img src="../bl/images/account-info.jpg" name="info" width="75" height="45" border="0" id="info" /></a><a href="logout.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('logout','','../bl/images/logout2.jpg',1)"><img src="../bl/images/logout.jpg" name="logout" width="75" height="45" border="0" id="logout" /></a></div>
            <!-- InstanceBeginEditable name="subject" -->
            <div class="subject">แก้ไขข้อมูลส่วนตัว</div>
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
                <li><a href="customerBadd.asp">เพิ่มข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="customerBview.asp">ดูข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
            </div>
            <div class="sec-bmenu">
              <ul>
                <li><a href="driverBadd.asp">เพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="driverBview.asp">ดูข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
            </div>
            <div class="sec-ymenu">
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
            </div>
            <p><a href="../freeaspwebboard/" target="_blank"><img src="../images/webboard.gif" width="210" height="80" border="0" align="right" /></a></p>
          </div>
        </div>
      <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="content" -->
       	  <div class="content-data">
       	    <div class="welcome">
       	      <div style="background-image:url(images/bg-name.jpg); width:429px; height:77px;">
              
       	        <div id="add-complete"><span style="color:#000;"> 
                <span style="font-weight:bold; color:#39F; font-size:18px; line-height:35px;">การแก้ไขข้อมูลเสร็จสมบูรณ์แล้ว</span>กลับไปหน้าข้อมูลส่วนตัว<span id="clickhere"><a href="myaccount.asp">คลิกที่นี่</a></span> &nbsp;</span></div>
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
   	    <!-- InstanceEndEditable --></div>
    </div>
  </div>
<div class="block-bottom">
<div class="bigblock" style=" background-image:url(../bl/images/bg-bottom.jpg);">
<div class="contain" style="padding-top:26px;">
<span class="bottom-logo">
<img src="../bl/images/logo2.png" width="47" height="47" /></span>
<span class="bottom-text">2585/8 (ตรงข้ามตลาดคลองเตย) ถ.พระรามที่ 4 แขวงคลองเตย เขตคลองเตย กรุงเทพฯ 10110<br />
โทร. 0-2204-1454 , 0-2258-7777 ต่อ 247 โทรสาร.0-2204-1455<br />
Email : manager@tcra.or.th --- TCRA &copy; 2011 All rights Reserved.<br /></span>
</div></div>
</div>
</div>
</div>
<br style="clear:both;" />
</div>

</body>
<!-- InstanceEnd --></html>
<% cn.Close
Set cn=nothing %>