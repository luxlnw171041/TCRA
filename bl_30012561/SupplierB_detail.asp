<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<%Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Supplier Where ID_Supplier="&request("id_Supplier")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			company=rs("company")
			name=rs("name")
			surname=rs("surname")
			sex=rs("sex")
			if sex="F" then sex="หญิง" else if sex="M" then sex="ชาย" else sex="บริษัท" end if
			address=split(rs("address"),",")
			province=rs("province")
			zipcode=rs("zipcode")
			telephone=rs("telephone")
			fax=rs("fax")
			mobile=rs("mobile")
			demerit1=rs("demerit")
			demerit=split(rs("demerit"),",")
			demeritdetail=rs("demeritdetail")
			datedemerit=rs("datedemerit")
			image=rs("image")
			startdate=rs("startdate")
			ID_Member=rs("ID_Member")
			ShowName=rs("ShowName")
	end if
rs.Close
Set rs=nothing

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&ID_Member
rs.open cn.Execute(sql)
	if not(rs.eof) then
			iID=rs("ID")
			iUsername=rs("Username")
			iCompany=rs("Company")
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

<body onload="MM_preloadImages('../bl/images/search2.jpg','../bl/images/account-info2.jpg','../bl/images/logout2.jpg')">
<div class="block1">
  <div class="block-h">
<div class="bigblock">
			<div class="headder">
            <div class="logo"><img src="../bl/images/logo.png" width="705" height="128" /></div>
            <div class="icon-menu"><a href="search.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('search','','../bl/images/search2.jpg',1)"><img src="../bl/images/search.jpg" name="search" width="66" height="45" border="0" id="search" /></a><a href="myaccount.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('info','','../bl/images/account-info2.jpg',1)"><img src="../bl/images/account-info.jpg" name="info" width="75" height="45" border="0" id="info" /></a><a href="logout.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logout','','../bl/images/logout2.jpg',1)"><img src="../bl/images/logout.jpg" name="logout" width="75" height="45" border="0" id="logout" /></a></div>
            <!-- InstanceBeginEditable name="subject" -->
            <div class="subject">ดูข้อมูล Supplier ที่มีประวัติ</div>
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
                <li class="current"><a href="SupplierB_view.asp">ดูข้อมูล Supplier ที่มีประวัติ</a></li>
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
       	    <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
          <td width="452"><%=company%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>ชื่อ - นามสกุล</strong></td>
          <td><%=name%> - <%=surname%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>เพศ</strong></td>
          <td><%=sex%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
          <td>
		  	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr align="left" valign="top">
                      <td width="15%">เลขที่</td>
                      <td width="85%"><%=address(0)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>ซอย</td>
                      <td><%=address(1)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>ถนน</td>
                      <td><%=address(2)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>แขวง</td>
                      <td><%=address(3)%></td>
                    </tr>
                    <tr align="left" valign="top">
                      <td>เขต</td>
                      <td><%=address(4)%></td>
                    </tr>
                  </table>		  </td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
          <td> <%=province%> </td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
          <td><%=zipcode%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
          <td><%=telephone%> &nbsp;</td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
          <td><%=fax%> &nbsp;</td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="200" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
          <td><%=mobile%> &nbsp;</td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>ลักษณะการทำธุรกิจที่ไม่ถูกต้อง</strong></td>
          <td>
		  <%=demerit1%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>วัน/เดือน/ปี ที่ทำธุรกิจไม่ถูกต้อง</strong></td>
          <td><%=datedemerit%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
          <td> 
            <%if image<>"" and not(isnull(image)) then %>
            <a href="../image/upload/Supplier/<%=image%>" target="_new"><img src="../image/upload/Supplier/<%=image%>" border="0" width="100"></a> 
            <%else%>
            ไม่มีรูป 
            <%end if%>          </td>
        </tr>
        <tr align="left" valign="top">
          <td bgcolor="#FBB18E"><strong>ผู้บันทึก</strong></td>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
       	          <tr>
       	            <td width="30%"><strong>รหัสสมาชิก</strong></td>
					
       	            <td width="70%"><%if ShowName=true then response.Write"ไม่แสดง" else response.Write (iID) end if%></td>
   	              </tr>
       	          <tr>
       	            <td width="30%"><strong>ชื่อผู้ใช้ระบบ</strong></td>
       	            <td><%if ShowName=true then response.Write"ไม่แสดง" else response.Write (iUsername) end if%></td>
   	              </tr>
       	          <tr>
       	            <td width="30%"><strong>ชื่อบริษัท</strong></td>
       	            <td><%if ShowName=true then response.Write"ไม่แสดง" else response.Write (iCompany) end if%></td>
   	              </tr>
   	            </table></td>
        </tr>
        <tr align="left" valign="top"> 
          <td bgcolor="#FBB18E"><strong>วัน/เดือน/ปี ที่บันทึก</strong></td>
          <td> <table width="100%" border="0" cellspacing="0" cellpadding="2">
              <tr> 
                <td width="75%"><%=startdate%> </td>
              </tr>
            </table></td>
        </tr>
      </table>
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
<%cn.Close
Set cn=nothing%>