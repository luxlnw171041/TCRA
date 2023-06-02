<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&session("id_member")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			company=rs("company")
			name=rs("name")
			sex=rs("sex")
			if sex="F" then isex="หญิง" else isex="ชาย" end if
			address=rs("address")
			province=rs("province")
			zipcode=rs("zipcode")
			telephone=rs("telephone")
			fax=rs("fax")
			mobile=rs("mobile")
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
            <div class="subject">ข้อมูลส่วนตัว</div>
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
       	
	<table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
          <td><%=company%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>กรรมการผู้มีอำนาจ</strong></td>
          <td><%=name%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
          <td><%=isex%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
          <td><%=address%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
          <td><%=province%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
          <td><%=zipcode%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
          <td><%=telephone%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
          <td><%=fax%></td>
        </tr>
        <tr align="left" valign="top"> 
          <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
          <td><%=mobile%></td>
        </tr>
      </table>
	  <div align="center"><br>
	  <input type="button" name="edit" value="แก้ไขข้อมูล" onClick="location='myaccountEdit.asp'" style="width:100">
	  <input type="button" name="logout" value="ออกจากระบบ" onClick="location='logout.asp'"  style="width:100">
	  </div><br><br>
	  <div align="left" class="big"><b>ประวัติการเพิ่มข้อมูลลูกค้าที่มีประวัติ</b></div>
      <br>
      <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E">
          <td width="17%"><strong>ชื่อบริษัท</strong></td>
          <td width="36%"><strong>ชื่อ - นามสกุล</strong></td>
          <td width="24%"><strong>วันที่บันทึก</strong></td>
          <td width="23%"><strong>แก้ไข</strong></td>
        </tr>
        <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Customer,Company,Name,Telephone,StartDate from Customer Where ID_Member="&session("id_member")&" order by company"
				rs.open cn.Execute(sql)
						if not(rs.eof) then
								do until rs.eof
		%>
        <tr align="left" valign="top">
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Company")%></a></td>
          <td><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("Name")%></a></td>
          <td align="center"><a href="customerBdetail.asp?id_customer=<%=rs("id_customer")%>"><%=rs("StartDate")%></a></td>
          <td align="center"><input type="button" name="edit" value="แก้ไข" onClick="location='customerBedit.asp?id_customer=<%=rs("id_customer")%>'"></td>
        </tr>
        <%
										rs.movenext
								loop
						end if
				rs.Close
				Set rs=nothing
		%>
		</table>
      <br><br>
	  <div align="left" class="big"><b>ประวัติการเพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</b></div>
      <br>
      <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
        <tr align="center" valign="middle" bgcolor="#FBB18E"> 
          <td><strong>ชื่อ - นามสกุล</strong></td>
          <td><strong>เลขที่บัตรประชาชน</strong></td>
          <td><strong>วันที่บันทึก</strong></td>
          <td><strong>แก้ไข</strong></td>
        </tr>
        <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Driver,Name,Surname,idcard,StartDate from Driver Where ID_Member="&session("id_member")&" order by Name"
				rs.open cn.Execute(sql)
						if not(rs.eof) then
								do until rs.eof
		%>
        <tr align="left" valign="top"> 
          <td height="36"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("Name")%>&nbsp;&nbsp;<%=rs("Surname")%></a></td>
          <td><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("idcard")%></a></td>
          <td align="center"><a href="driverBdetail.asp?id_driver=<%=rs("id_driver")%>"><%=rs("StartDate")%></a></td>
          <td align="center"><input type="button" name="edit" value="แก้ไข" onClick="location='driverBedit.asp?id_driver=<%=rs("id_driver")%>'"></td>
        </tr>
        <%
										rs.movenext
								loop
						end if
				rs.Close
				Set rs=nothing
		%>
      </table>
   	      <br />
   	      <br />
          <div align="left" class="big"><b>ประวัติการเพิ่มข้อมูล Supplier ที่มีประวัติ</b></div>
          <br />
          <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
            <tr align="center" valign="middle" bgcolor="#FBB18E">
              <td width="17%"><strong>ชื่อบริษัท</strong></td>
              <td width="36%"><strong>ชื่อ - นามสกุล</strong></td>
              <td width="24%"><strong>วันที่บันทึก</strong></td>
              <td width="23%"><strong>แก้ไข</strong></td>
            </tr>
            <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_supplier,Company,Name,Telephone,StartDate from Supplier Where ID_Member="&session("id_member")&" order by company"
				rs.open cn.Execute(sql)
						if not(rs.eof) then
								do until rs.eof
		%>
            <tr align="left" valign="top">
              <td><a href="SupplierB_detail.asp?id_Supplier=<%=rs("id_Supplier")%>"><%=rs("Company")%></a></td>
              <td><a href="SupplierB_detail.asp?id_Supplier=<%=rs("id_Supplier")%>"><%=rs("Name")%></a></td>
              <td align="center"><a href="SupplierB_detail.asp?id_Supplier=<%=rs("id_Supplier")%>"><%=rs("StartDate")%></a></td>
              <td align="center"><input type="button" name="edit2" value="แก้ไข" onclick="location='SupplierB_edit.asp?id_Supplier=<%=rs("id_Supplier")%>'" /></td>
            </tr>
            <%
										rs.movenext
								loop
						end if
				rs.Close
				Set rs=nothing
		%>
          </table>
   	      <br />
   	      <br />
          <div align="left" class="big"><b>ประวัติการเพิ่มข้อมูลพนักงานที่มีประวัติ</b></div>
          <br />
          <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
            <tr align="center" valign="middle" bgcolor="#FBB18E">
              <td><strong>ชื่อ - นามสกุล</strong></td>
              <td><strong>เลขที่บัตรประชาชน</strong></td>
              <td><strong>วันที่บันทึก</strong></td>
              <td><strong>แก้ไข</strong></td>
            </tr>
            <%
				Set rs=Server.CreateObject("ADODB.Recordset")
				sql="select ID_Staff,Name,Surname,idcard,StartDate from Staff Where ID_Member="&session("id_member")&" order by Name"
				rs.open cn.Execute(sql)
						if not(rs.eof) then
								do until rs.eof
		%>
            <tr align="left" valign="top">
              <td height="36"><a href="StaffB_detail.asp?id_Staff=<%=rs("id_Staff")%>"><%=rs("Name")%>&nbsp;&nbsp;<%=rs("Surname")%></a></td>
              <td><a href="StaffB_detail.asp?id_Staff=<%=rs("id_Staff")%>"><%=rs("idcard")%></a></td>
              <td align="center"><a href="StaffB_detail.asp?id_Staff=<%=rs("id_Staff")%>"><%=rs("StartDate")%></a></td>
              <td align="center"><input type="button" name="edit3" value="แก้ไข" onclick="location='StaffB_edit.asp?id_Staff=<%=rs("id_Staff")%>'" /></td>
            </tr>
            <%
										rs.movenext
								loop
						end if
				rs.Close
				Set rs=nothing
		%>
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
<% cn.Close
Set cn=nothing%>