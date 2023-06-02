<!--#include file="checklogin.asp"-->
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link rel="stylesheet" type="text/css" href="../include/stylesheet.css">
</head>

<body topmargin="0" leftmargin="0">
<table width="auto" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td colspan="2" align="left" valign="top">
      <!--#include file="head.htm"-->
    </td>
  </tr>
  <tr> 
    <td width="140" align="left" valign="top"><!--#include file="menu.htm"--></td>
    <td width="611" align="left" valign="top"> <table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">เพิ่มข้อมูลลูกค้าที่มีประวัติ</td>
        </tr>
        <tr>
          <td>
		  
<form name="form" action="customerBaddnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
              <table width="100%" border="1" align="center" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ชื่อบริษัทลูกค้า<br>
                    (ต้องระบุ) </strong></td>
                  <td><input type="text" name="company" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ชื่อลูกค้า<br>
                    (ต้องระบุ) </strong></td>
                  <td><input type="text" name="name" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>เพศ</strong></td>
                  <td> <input type="radio" name="sex" value="M" checked>
                    ชาย 
                    <input type="radio" name="sex" value="F">
                    หญิง </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ที่อยู่<br>
                    (ต้องระบุ) </strong></td>
                  <td><!--textarea name="address" style="width:300px;height:100px;"></textarea-->
				  	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle">
                  <td width="15%">เลขที่</td>
                  <td width="85%"><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ซอย</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ถนน</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>แขวง</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>เขต</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
              </table>
				  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>จังหวัด</strong></td>
                  <td> 
                    <!--#include file="../include/province.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>รหัสไปรษณีย์</strong></td>
                  <td><input type="text" name="zipcode" style="width:300px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ประเทศ</strong></td>
                  <td> 
                    <!--#include file="../include/country.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์<br>
                    (ต้องระบุ) </strong></td>
                  <td><input type="text" name="telephone" style="width:300px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรสาร</strong></td>
                  <td><input type="text" name="fax" style="width:300px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>โทรศัพท์มือถือ</strong></td>
                  <td><input type="text" name="mobile" style="width:300px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>ลักษณะการกระทำความ<br>
                    (ต้องระบุ) </strong></td>
                  <td>
<input type="hidden" name="counter"> 
                    <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="ค่าเช่า"></td>
                  <td>ค่าเช่า</td>
                </tr>
		<div style="position:absolute;visibility:hidden;">
		<input type="checkbox" name="demerit" value="ทำความเสียหายให้รถยนต์หรือไม่บำรุงดูแล">ทำความเสียหายให้รถยนต์หรือไม่บำรุงดูแล
		<input type="checkbox" name="demerit" value="ยักยอกหรือฉ้อโกงรถยนต์">ยักยอกหรือฉ้อโกงรถยนต์
		<input type="checkbox" name="demerit" value="ชักชวนพนักงานขับรถไปทำงานด้วย">ชักชวนพนักงานขับรถไปทำงานด้วย
		<input type="checkbox" name="demerit" value="อื่นๆ">อื่นๆ (โปรดระบุ) 
        <input name="demeritdetail" type="text" value="" maxlength="200" style="width:190px;">
		</div>
                <!--tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="ทำความเสียหายให้รถยนต์หรือไม่บำรุงดูแล"></td>
                  <td>ทำความเสียหายให้รถยนต์หรือไม่บำรุงดูแล</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="ยักยอกหรือฉ้อโกงรถยนต์"></td>
                  <td>ยักยอกหรือฉ้อโกงรถยนต์</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="ชักชวนพนักงานขับรถไปทำงานด้วย"></td>
                  <td>ชักชวนพนักงานขับรถไปทำงานด้วย</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="อื่นๆ"></td>
                  <td>อื่นๆ (โปรดระบุ) 
                    <input name="demeritdetail" type="text" value="" maxlength="200" style="width:190px;"></td>
                </tr-->
                    </table></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>วัน/เดือน/ปี ที่กระทำความ<br>
                    (ต้องระบุ) </strong></td>
                  <td><!--input name="datedemerit" type="text" value="" maxlength="200" style="width:300px;"-->
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
					<option value="<%=i%>"><%=i%></option>
				<%next%>
			</select>
				  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>รูปภาพ</strong></td>
                  <td> <input type="file" name="image" style="width:300px;"> </td>
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
                        <td><strong>วัน/เดือน/ปีที่บันทึก</strong></td>
                        <td><%=now()%></td>
                      </tr>
                    </table></td>
                </tr>
              </table>
              <div align="center"><br>
	  <input type="submit" name="edit" value="จบการเพิ่มข้อมูล">
        </div>
      </form>		  
		  
		  </td>
        </tr>
      </table> </td>
  </tr>
</table>
</body>
</html>
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
				if(!a.company.value) {
						alert("กรุณากรอก ชื่อบริษัทลูกค้า");
						return false;
				}
				if(!a.name.value) {
						alert("กรุณากรอก ชื่อลูกค้า");
						return false;
				}
				for(var j=0;j<a.address.length;j++) {
					if(!a.address[j].value) {
							alert("กรุณากรอก ที่อยู่");
							return false;
					}
				}
/*				if(!a.address.value) {
						alert("กรุณากรอก ที่อยู่");
						return false;
				}*/
/*				if(!a.zipcode.value) {
						alert("กรุณากรอก รหัสไปรษณีย์");
						return false;
				}*/
				if(!a.telephone.value) {
						alert("กรุณากรอก โทรศัพท์");
						return false;
				}
/*				if(!a.fax.value) {
						alert("กรุณากรอก โทรสาร");
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