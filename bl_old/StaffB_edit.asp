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

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Staff Where ID_Staff="&request("id_Staff")&" and ID_Member="&session("id_member")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			name=rs("name")
			surname=rs("surname")
			sex=rs("sex")
			address=split(rs("address"),",")
			province=rs("province")
			zipcode=rs("zipcode")
			country=rs("country")
			idcard=rs("idcard")
			idss=rs("idss")
			idtax=rs("idtax")
			degree=rs("degree")
			telephone=rs("telephone")
			mobile=rs("mobile")
			demerit=rs("demerit")
			demeritdetail=rs("demeritdetail")
			datedemerit=rs("datedemerit")
			image=rs("image")
	end if
rs.Close
Set rs=nothing

dd1=datepart("d",datedemerit)
mm1=datepart("m",datedemerit)
yy1=datepart("yyyy",datedemerit)
if yy1<2500 then yy1=yy1+543
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>\ .:Thai Car Rental Association ( TCRA ) :. /</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link rel="stylesheet" type="text/css" href="../include/stylesheet.css">
</head>
<body topmargin="0" leftmargin="0" onLoad="MM_preloadImages('../../image/head/home02.gif','../../image/head/tcra02.gif','../../image/head/rentbuy02.gif','../../image/head/qualify02.gif','../../image/head/member02.gif')">
<table border="0" cellspacing="0" cellpadding="0" align="center" width="750">
  <tr align="left" valign="top"> 
    <td colspan="2"><!--#include file="../include/head.htm"--></td>
  </tr>

  <tr align="left" valign="top"> 
    <td width="170" rowspan="2">
		<!--#include file="../include/smenu.htm"-->
    </td>
    <td width="580"><span class="big"><strong><a href="loginnow.asp">สมาชิก</a> 
      &gt; แก้ไขข้อมูลพนักงานที่มีประวัติ</strong></span></td>
  </tr>
  <tr align="left" valign="top"> 
    <td height="316" align="center" valign="middle"> <br>
      <form name="form" action="StaffB_editnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
        <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>ชื่อ<br>
              (ต้องระบุ) </strong></td>
            <td><input type="text" name="name" style="width:300px;" value="<%=name%>" maxlength="200"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>นามสกุล<br>
              (ต้องระบุ) </strong></td>
            <td><input type="text" name="surname" style="width:300px;" value="<%=surname%>" maxlength="200"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>เลขที่บัตรประชาชน<br>
              (ต้องระบุ) </strong></td>
            <td><input type="text" name="idcard" style="width:300px;" value="<%=idcard%>" maxlength="200"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>เลขที่บัตรประกันสังคม</strong></td>
            <td><input type="text" name="idss" style="width:300px;" value="<%=idss%>" maxlength="200"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>เลขประจำตัวผู้เสียภาษี</strong></td>
            <td><input type="text" name="idtax" style="width:300px;" value="<%=idtax%>" maxlength="200"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
            <td> <input type="radio" name="sex" value="M" <%=checked("M",sex)%> checked>
              ชาย 
              <input type="radio" name="sex" value="F" <%=checked("F",sex)%>>
              หญิง </td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่</strong></td>
            <td><!--textarea name="address" style="width:300px;height:100px;"><%'=address%></textarea-->
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle">
                  <td width="15%">เลขที่</td>
                  <td width="85%"><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(0)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ซอย</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(1)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ถนน</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(2)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>แขวง</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(3)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>เขต</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(4)%>"></td>
                </tr>
              </table>
			</td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
            <td> <!--#include file="../include/province.asp"--> </td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
            <td><input type="text" name="zipcode" style="width:300px;" value="<%=zipcode%>" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>ประเทศ</strong></td>
            <td> <!--#include file="../include/country.asp"--> </td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>วุฒิการศึกษา</strong></td>
            <td> <select name="degree" style="width:300px;">
                <option value="ประถมศึกษา" <%=selected("ปรถมศึกษา",degree)%>>ประถมศึกษา</option>
                <option value="มัธยมศึกษาตอนต้น" <%=selected("มัธยมศึกษาตอนต้น",degree)%>>มัธยมศึกษาตอนต้น</option>
                <option value="มัธยมศึกษาตอนปลาย" <%=selected("มัธยมศึกษาตอนปลาย",degree)%>>มัธยมศึกษาตอนปลาย</option>
                <option value="ประกาศนียบัตรวิชาชีพ" <%=selected("ประกาศนียบัตรวิชาชีพ",degree)%>>ประกาศนียบัตรวิชาชีพ</option>
                <option value="อนุปริญญา" <%=selected("อนุปริญญา",degree)%>>อนุปริญญา</option>
                <option value="ปริญญาตรี" <%=selected("ปริญญาตรี",degree)%>>ปริญญาตรี</option>
                <option value="ปริญญาโท" <%=selected("ปริญญาโท",degree)%>>ปริญญาโท</option>
                <option value="อื่นๆ" <%=selected("อื่นๆ",degree)%>>อื่นๆ</option>
              </select> </td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์</strong></td>
            <td><input type="text" name="telephone" style="width:300px;" value="<%=telephone%>" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
            <td><input type="text" name="mobile" style="width:300px;" value="<%=mobile%>" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>ลักษณะการกระทำความ<br>
              (ต้องระบุ) </strong></td>
            <td>
<table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="hidden" name="counter"><input type="checkbox" name="demerit" value="เกี่ยวกับรถยนต์" <%=checked1("เกี่ยวกับรถยนต์",demerit)%>></td>
                  <td>เกี่ยวกับรถยนต์ 
                    </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="เกี่ยวกับลูกค้า" <%=checked1("เกี่ยวกับลูกค้า",demerit)%>></td>
                  <td>เกี่ยวกับลูกค้า</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="กฏข้อบังคับบริษัท" <%=checked1("กฏข้อบังคับบริษัท",demerit)%>></td>
                  <td>กฏข้อบังคับบริษัท</td>
                </tr>
              </table>
              
            </td>
          </tr>

<tr align="left" valign="top"> 
<td bgcolor="#FBB18E"><strong>รายละเอียดการกระทำความผิด</strong></td><td>
<TEXTAREA NAME="demeritdetail" ROWS="5" COLS="40"><%=demeritdetail%></TEXTAREA>
</td></tr>

          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>วัน/เดือน/ปี ที่กระทำความ<br>
              Time off Demerit<br>
              (ต้องระบุ) </strong></td>
            <td>
				<select name="datedemerit">
				<option value="">วัน</option>
				<%for i=1 to 31%>
					<option value="<%=right("0"&i,2)%>" <%=selected(right("0"&i,2),right("0"&dd1,2))%>><%=right("0"&i,2)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">เดือน</option>
				<%for i=1 to 12%>
					<option value="<%=right("0"&i,2)%>" <%=selected(right("0"&i,2),right("0"&mm1,2))%>><%=monthname(i)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">ปี</option>
			<%yy=datepart("yyyy",date())
			if yy<2500 then yy=yy+543%>
				<%for i=(yy-10) to yy%>
					<option value="<%=i%>"<%=selected(i,yy1)%>><%=i%></option>
				<%next%>
			</select>
			</td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
            <td> 
              <%if image<>"" and not(isnull(image)) then %>
              <input type="radio" name="cImage" value="0" checked>
              มีรูปภาพแล้ว รูปปัจจุบันคือ <a href="../image/upload/Staff/<%=image%>" target="_new"><%=image%></a> 
              <%else%>
              <input type="radio" name="cImage" value="0" checked>
              ไม่มีรูปภาพ 
              <%end if%>
              <br> <input type="radio" name="cImage" value="1">
              รูปภาพใหม่ 
              <input type="file" name="image" style="width:220px;"> </td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>ข้อมูลผู้บันทึก</strong></td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr align="left" valign="top"> 
                  <td width="100"><strong>รหัสสมาชิก</strong></td>
                  <td><%=iID%></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="100"><strong>ชื่อผู้ใช้ระบบ</strong></td>
                  <td><%=iUsername%></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="100"><strong>ชื่อบริษัท</strong></td>
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
        <table width="80%" border="0" cellspacing="0" cellpadding="1">
          <tr align="left" valign="top"> 
            <td width="13%"><strong>หมายเหตุ</strong></td>
            <td width="4%" align="center">1.</td>
            <td width="83%">ข้อมูลดังกล่าวถือเป็นความลับของสมาชิก และ สมาคมเท่านั้น 
              การบันทึกข้อมูล หรือ เข้าค้นหาข้อมูลทุกครั้ง จะมีการบันทึกรายละเอียดผู้เข้าใช้เสมอ</td>
          </tr>
          <tr align="left" valign="top"> 
            <td>&nbsp;</td>
            <td align="center">2.</td>
            <td>สมาชิกผู้แจ้งควรตรวจสอบข้อเท็จจริงข้างต้น ให้ละเอียดถูกต้อง เนื่องจากรายชื่อ 
              จะถูกประมวลเพื่อส่งให้กับสมาชิกอื่น ของสมาคม บุคคลดังกล่าวอาจได้รับความเสียหาย 
              หากข้อเท็จจริงดังกล่าวคลาดเคลื่อน และ สมาชิกผู้แจ้งจะต้องเป็นผู้รับผิดชอบการเพิ่มข้อมูลดังกล่าว</td>
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
              และ ประโยชน์สูงสุด</td>
          </tr>
        </table>
        <div align="center"><br>
	  <input type="hidden" name="id_driver" value="<%=request("id_driver")%>">
	  <input type="submit" name="edit" value="บันทึกข้อมูล">
        </div>
      </form>
    </td>
  </tr>
  <tr align="left" valign="top"> 
    <td colspan="2"><!--#include file="../include/copyright_th.htm"--></td>
  </tr>
</table>
</body>
</html>
<%cn.Close
Set cn=nothing

Function checked(a,b)
	if a<>"" and not(isnull(a)) and b<>"" and not(isnull(b)) then
			if cSTR(a)=cSTR(b) then
					checked=" checked "
			end if
	end if
End Function

Function checked1(a,b)
	if a<>"" and not(isnull(a)) and b<>"" and not(isnull(b)) then
			if instr(b,a)>0 then
					checked1=" checked "
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
				var counter = 0;
				if(!a.name.value) {
						alert("กรุณากรอก ชื่อ");
						return false;
				}
				if(!a.surname.value) {
						alert("กรุณากรอก นามสกุล");
						return false;
				}
/*				if(!a.address.value) {
						alert("กรุณากรอก ที่อยู่");
						return false;
				}
				if(!a.zipcode.value) {
						alert("กรุณากรอก รหัสไปรษณีย์");
						return false;
				}*/
				if(!a.idcard.value) {
						alert("กรุณากรอก เลขที่บัตรประชาชน");
						return false;
				}
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
					if(a.demerit[i].checked && a.demerit[i].value=="อื่นๆ") {
						if(!a.demeritdetail.value) {
							alert("กรุณาระบุ ลักษณะการกรทำความ");
							return false;
						}
					}
				}
				if(counter < 1) {
					alert("กรุณาเลือกลักษณะการกระทำความอย่างน้อย 1 ข้อ");
					return false;
				}else{
					a.counter.value=counter;
				}
				for(var k=0;k<a.datedemerit.length;k++) {
						if(!a.datedemerit[k].options[a.datedemerit[k].selectedIndex].value) {
							alert("กรุณากรอก วัน/เดือน/ปี ที่กระทำความ");
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