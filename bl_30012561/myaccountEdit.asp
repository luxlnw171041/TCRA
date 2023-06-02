<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<% Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Member Where ID_Member="&session("id_member")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			id=rs("ID")
			username=rs("username")
			password=rs("password")
			company=rs("company")
			name=rs("name")
			sex=rs("sex")
			address=rs("address")
			province=rs("province")
			zipcode=rs("zipcode")
			telephone=rs("telephone")
			fax=rs("fax")
			mobile=rs("mobile")
			image=rs("image")
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
          <form name="form" action="myaccountEditnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
	    <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>รหัสสมาชิก</strong></td>
            <td><label style="width:180px;"><%=ID%></label>
              (ไม่สามารถแก้ไขได้)</td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>ชื่อผู้ใช้ระบบ</strong></td>
            <td><label style="width:180px;"><%=username%></label>
              (ไม่สามารถแก้ไขได้)</td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>รหัสผ่าน</strong></td>
            <td> 
              <%
						cpassword=len(password)
						for i = 1 to cpassword
								ipassword=ipassword&"x"
						next
				%>
              <label style="width:180px;"><%=ipassword%></label>
              (ไม่สามารถแก้ไขได้) </td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>ชื่อบริษัท</strong></td>
            <td><input type="hidden" name="company" style="width:300px;" value="<%=company%>" maxlength="200">
			<label style="width:180px;"><%=company%></label> (ไม่สามารถแก้ไขได้)</td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>กรรมการผู้มีอำนาจ</strong></td>
            <td><input type="text" name="name" style="width:300px;" value="<%=name%>" maxlength="200"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
            <td> <input type="radio" name="sex" value="M" <%=checked(sex,"M")%>>
              ชาย 
              <input type="radio" name="sex" value="F" <%=checked(sex,"F")%>>
              หญิง </td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
            <td><textarea name="address" cols="45" rows="5" style="width:300px;height:100px;"><%=address%></textarea></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
            <td>
              <!--#include file="../include/province.asp"-->
            </td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
            <td><input type="text" name="zipcode" style="width:100px;" value="<%=zipcode%>" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
            <td><input type="text" name="telephone" style="width:200px;" value="<%=telephone%>" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
            <td><input type="text" name="fax" style="width:200px;" value="<%=fax%>" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
            <td><input type="text" name="mobile" style="width:200px;" value="<%=mobile%>" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top">
            <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
            <td>
			<%if image<>"" and not(isnull(image)) then %>
			<input type="radio" name="cImage" value="0" checked> มีรูปภาพแล้ว รูปปัจจุบันคือ <a href="../image/upload/member/<%=image%>" target="_new"><%=image%></a>
			<%else%>
			<input type="radio" name="cImage" value="0" checked> ไม่มีรูปภาพ
			<%end if%>
			<br><input type="radio" name="cImage" value="1"> รูปภาพใหม่ <input type="file" name="image" style="width:220px;">
			</td>
          </tr>
        </table>
	  <div align="center"><br>
	  <input type="submit" name="edit" value="บันทึกข้อมูล">
        </div>
    </form>
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
Set cn=nothing

Function checked(a,b)
		if a<>"" and not(isnull(a)) and b<>"" and not(isnull(b)) then
				if cSTR(a)=cSTR(b) then
						checked=" checked "
				end if
		end if
End Function

Function selected(a,b)
		if a<>"" and not(isnull(a)) and b<>"" and not(isnull(b)) then
				if cSTR(a)=cSTR(b) then
						selected=" selected "
				end if
		end if
End Function
%>
<script language="JavaScript">
		function chkAction() {
				var a=document.form;
				if(!a.company.value) {
						alert("กรุณากรอก ชื่อบริษัท");
						return false;
				}
				if(!a.name.value) {
						alert("กรุณากรอก กรรมการผู้มีอำนาจ");
						return false;
				}
				if(!a.address.value) {
						alert("กรุณากรอก ที่อยู่");
						return false;
				}
				if(!a.zipcode.value) {
						alert("กรุณากรอก รหัสไปรษณีย์");
						return false;
				}
				if(!a.telephone.value) {
						alert("กรุณากรอก โทรศัพท์");
						return false;
				}
				if(!a.fax.value) {
						alert("กรุณากรอก โทรสาร");
						return false;
				}
				if(!a.mobile.value) {
						alert("กรุณากรอก โทรศัพท์มือถือ");
						return false;
				}
			return true;
		}
</script>