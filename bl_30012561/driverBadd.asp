<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<%Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select ID,Username,Company from Member Where ID_Member="&session("id_member")
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
            <div class="subject">เพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</div>
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
                <li><a href="customerBadd.asp">เพิ่มข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="customerBview.asp">ดูข้อมูลลูกค้าที่มีประวัติ</a></li>
              </ul>
            </div>-->
            <div class="sec-bmenu">
              <ul>
                <li class="current"><a href="driverBadd.asp">เพิ่มข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
              <ul>
                <li><a href="search.asp">ค้นหาข้อมูลพนักงานขับรถที่มีประวัติ</a></li>
              </ul>
            </div>
<!--            <div class="sec-ymenu">
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
       	    <form name="form" action="driverBaddnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
        <table width="98%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>ชื่อ</strong></td>
            <td width="476"><input type="text" name="name" style="width:300px;" value="" maxlength="200">
              <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>นามสกุล</strong></td>
            <td><input type="text" name="surname" style="width:300px;" value="" maxlength="200">
              <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>เลขที่บัตรประชาชน</strong></td>
            <td><input type="text" name="idcard" style="width:300px;" value="" maxlength="200">
              <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>เพศ</strong></td>
            <td> <input type="radio" name="sex" value="M" checked>
              ชาย 
              <input type="radio" name="sex" value="F">
              หญิง <span style="color:#F00;">* </span></td>
          </tr>
          
 <input type="hidden" name="counter" />
 
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>รูปถ่ายพนักงานขับรถ</strong></td>
            <td> <input type="file" name="image" style="width:300px;"> </td>
          </tr>
          
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>ลักษณะการกระทำความผิด</strong></td>
            <td>
              <strong><span style="color:#F00;">
                * เลือกการกระทำผิดได้ไม่จำกัดจำนวน ตามความเป็นจริง</span></strong>
                <br /><br />
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr align="left" valign="top"> 
                  <td width="20" align="center" valign="middle">&nbsp;</td>
                  <td width="141"><div align="left"><strong>หมวดทุจริต/ผิดกฏหมาย</strong></div></td>
                  <td width="20">&nbsp;</td>
                  <td width="99"><div align="left"><strong>หมวดวินัย</strong></div></td>
                  <td width="20">&nbsp;</td>
                  <td width="162"><div align="left"><strong>หมวดบริการ</strong></div></td>
                  </tr>
                <tr align="left" valign="top"> 
                  <td width="20" align="center" valign="middle"><input name="demerit" type="checkbox" id="demerit" value="1.ลักลอบนำรถยนต์ไปใช้ส่วนตัว"></td>
                  <td>1.ลักลอบนำรถยนต์</td>
                  <td><input name="demerit" type="checkbox" id="demerit" value="6.ยืมเงินลูกค้า" /></td>
                  <td>6.ยืมเงินลูกค้า</td>
                  <td width="20"><input name="demerit" type="checkbox" id="demerit" value="12.ขับรถอันตราย" /></td>
                  <td width="162">12.ขับรถอันตราย</td>
                  </tr>
                <tr align="left" valign="top">
                  <td align="center" valign="middle">&nbsp;</td>
                  <td>&nbsp;&nbsp;ไปใช้ส่วนตัว</td>
                  <td><input name="demerit" type="checkbox" id="demerit" value="7.ทิ้งงาน" /></td>
                  <td>7.ทิ้งงาน</td>
                  <td width="20"><input name="demerit" type="checkbox" id="demerit" value="13.มาสาย" /></td>
                  <td width="162">13.มาสาย</td>
                </tr>
                <tr align="left" valign="top">
                  <td align="center" valign="middle"><input name="demerit" type="checkbox" id="demerit" value="2.ทุจริตโอที/บิลน้ำมัน" /></td>
                  <td>2.ทุจริตโอที/บิลน้ำมัน</td>
                  <td><input name="demerit" type="checkbox" id="demerit" value="8.ทะเลาะวิวาท" /></td>
                  <td>8.ทะเลาะวิวาท</td>
                  <td width="20"><input name="demerit" type="checkbox" id="demerit" value="14.ไม่รู้เส้นทาง" /></td>
                  <td width="162">14.ไม่รู้เส้นทาง</td>
                </tr>
                <tr align="left" valign="top">
                  <td align="center" valign="middle"><input name="demerit" type="checkbox" id="demerit" value="3.เสพสารเสพติด" /></td>
                  <td>3.เสพสารเสพติด</td>
                  <td><input name="demerit" type="checkbox" id="demerit" value="9.โกหกบ่อยครั้ง" /></td>
                  <td>9.โกหกบ่อยครั้ง</td>
                  <td width="20"><input name="demerit" type="checkbox" id="demerit" value="15.สตาร์ทรถรอลูกค้า" /></td>
                  <td width="162">15.สตาร์ทรถรอลูกค้า</td>
                </tr>
                <tr align="left" valign="top">
                  <td align="center" valign="middle"><input name="demerit" type="checkbox" id="demerit" value="4.เมาสุรา" /></td>
                  <td>4.เมาสุรา</td>
                  <td><input name="demerit" type="checkbox" id="demerit" value="10.ไม่เก็บความลับ" /></td>
                  <td> 10.ไม่เก็บความลับ</td>
                  <td width="20"><input name="demerit" type="checkbox" id="demerit" value="16.ทัศนะคติ/การบริการไม่ดีกับลูกค้า/นายจ้าง" /></td>
                  <td width="162">16.ทัศนะคติ/การบริการไม่ดี</td>
                </tr>
                 <tr align="left" valign="top">
                  <td align="center" valign="middle"><input name="demerit" type="checkbox" id="demerit" value="5.เล่นการพนัน" /></td>
                  <td>5.เล่นการพนัน</td>
                  <td><input name="demerit2" type="checkbox" id="demerit2" value="11.ปิดมือถือ ติดต่อไม่ได้" /></td>
                  <td>11.ปิดมือถือ </td>
                  <td width="20">&nbsp;</td>
                  <td width="162">&nbsp;&nbsp;&nbsp;&nbsp;กับลูกค้า/นายจ้าง</td>
                </tr>
                <tr align="left" valign="top">
                  <td align="center" valign="middle">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;ติดต่อไม่ได้</td>
                  <td width="20"><input name="demerit" type="checkbox" id="demerit" value="17.ขัดคำสั่ง ลูกค้า/นายจ้าง" /></td>
                  <td width="162">17.ขัดคำสั่ง ลูกค้า/นายจ้าง</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td>&nbsp;</td>
				  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td width="20"><input name="demerit" type="checkbox" id="demerit" value="18.แต่งกาย/คำพูด ไม่สุภาพ" /></td>
                  <td width="162">18.แต่งกาย/คำพูด ไม่สุภาพ</td>
                  </tr>

                </table></td>
          </tr>
<tr align="left" valign="top"> 
<td bgcolor="#FBB18E"><strong>รายละเอียดการกระทำความผิด</strong></td>
<td><input name="demerit" type="checkbox" id="demerit" value="19.อื่นๆ" />19.อื่นๆ <br />
<TEXTAREA NAME="demeritdetail" ROWS="5" COLS="65"></TEXTAREA></td></tr>

          <tr align="left" valign="top">
            <td bgcolor="#FBB18E"><strong>วัน/เดือน/ปี ที่กระทำความผิด</strong></td>
            <td><!--input type="text" name="datedemerit" value="" maxlength="200" style="width:300px;"-->
				<select name="datedemerit">
				<option value="">วัน</option>
				<%for i=1 to 31%>
					<option value="<%=right("0"&i,2)%>"><%=right("0"&i,2)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">เดือน</option>
				<%for i=1 to 12%>
					<option value="<%=right("0"&i,2)%>"><%=monthname(i)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">ปี</option>
			<%yy=datepart("yyyy",date())
			if yy<2500 then yy=yy+543%>
				<%for i=(yy-10) to yy%>
					<option value="<%=i-543%>"><%=i%></option>
				<%next%>
			</select>
			<span style="color:#F00;">* (ประมาณ)</span></td>
          </tr>

          <tr align="left" valign="top"> 
            <td bgcolor="#CCCCCC"><strong>ข้อมูลผู้บันทึก
                    <span style="color:#F00;">* </span><br />
            </strong>
              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td colspan="2">ข้อมูลของผู้บันทึกจะไม่แสดงบนหน้าเว็บ</td>
                </tr>
                 <tr>
                  <td width="13%"><label>
                    <input name="ShowName" type="checkbox" id="ShowName" value="ShowName" checked="checked" / hidden="true">
                  </label></td>
                  <td width="87%">&nbsp;</td>
                </tr>
              </table></td>
            <td bgcolor="#CCCCCC"><table width="100%" border="0" cellspacing="0" cellpadding="2" >
                          
                <tr align="left" valign="top"> 
                  <td width="142"><strong>รหัสสมาชิก</strong></td>
                  <td width="291"><%=iID%></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="142"><strong>ชื่อผู้ใช้ระบบ</strong></td>
                  <td><%=iUsername%></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="142"><strong>ชื่อบริษัท</strong></td>
                  <td><%=iCompany%></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td><strong>วัน/เดือน/ปี ที่บันทึก</strong></td>
                  <td><%=now()%></td>
                </tr>
              </table></td>
          </tr>
        </table>
	    <br>
        <table width="90%" border="0" cellspacing="0" cellpadding="1">
          <tr align="left" valign="top"> 
            <td width="13%"><strong>หมายเหตุ</strong></td>
            <td width="4%" align="center">1.</td>
            <td width="83%">ข้อมูลดังกล่าวถือเป็นความลับของสมาชิกและสมาคมเท่านั้น สมาคมขอสงวนสิทธฺ์ห้ามนำข้อมูลไปเผยแพร่โดยไม่ได้รับอนุญาตจากทางสมาคม และทางสมาคมมีสิทธิ์ในการเรียกร้องค่าเสียหายกับผู้ละเมิด
              การบันทึกข้อมูลหรือเข้าค้นหาข้อมูลทุกครั้ง จะมีการบันทึกรายละเอียดผู้เข้าใช้เสมอ</td>
          </tr>
          <tr align="left" valign="top"> 
            <td>&nbsp;</td>
            <td align="center">2.</td>
            <td>สมาชิกผู้แจ้งควรตรวจสอบข้อเท็จจริงข้างต้นให้ละเอียดถูกต้อง เนื่องจากรายชื่อ 
              จะถูกประมวลเพื่อส่งให้กับสมาชิกอื่นของสมาคม บุคคลดังกล่าวอาจได้รับความเสียหาย 
              หากข้อเท็จจริงดังกล่าวคลาดเคลื่อน และสมาชิกผู้แจ้งจะต้องเป็นผู้รับผิดชอบการเพิ่มข้อมูลดังกล่าว</td>
          </tr>
          <tr align="left" valign="top"> 
            <td>&nbsp;</td>
            <td align="center">3.</td>
            <td>สมาคมฯ ขอสงวนสิทธิ์ในความรับผิดชอบในทุกกรณี ถ้าข้อมูลดังกล่าวผิดพลาด</td>
          </tr>
          <tr align="left" valign="top"> 
            <td>&nbsp;</td>
            <td align="center">4.</td>
            <td>สมาคมฯ จะเป็นตัวกลางที่จะให้ข้อมูลกับสมาชิกเท่าที่จะเห็นสมควร 
              และประโยชน์สูงสุด</td>
          </tr>
        </table>
        <div align="center"><br>
	  <input type="submit" name="edit" value="กดคลิ้กเพื่อจบการเพิ่มข้อมูล">
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
<%cn.Close
Set cn=nothing

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
				var counter = 0;
				if(!a.name.value) {
						alert("กรุณากรอก ชื่อ");
						return false;
				}
				if(!a.surname.value) {
						alert("กรุณากรอก นามสกุล");
						return false;
				}
								if(!a.idcard.value) {
						alert("กรุณากรอก เลขที่บัตรประชาชน");
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
				for(var i = 0; i < a.demerit.length; i++) {
					if(a.demerit[i].checked) counter++;
					if(a.demerit[i].checked && a.demerit[i].value=="19.อื่นๆ") {
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
				for(var k=0;k<a.datedemerit.length;k++) {
						if(!a.datedemerit[k].options[a.datedemerit[k].selectedIndex].value) {
							alert("กรุณากรอก วัน/เดือน/ปี ที่กระทำความผิด");
							return false;
						}
				}
/*				if(!a.datedemerit.value) {
					alert("กรุณากรอก วัน/เดือน/ปี ที่กระทำผิด");
					return false;
				}*/
			return true;
		}
</script>