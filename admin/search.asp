<!--#include file="checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<%Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect%>
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
    <td width="612" align="left" valign="top"><table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">ค้นหาข้อมูล</td>
        </tr>
        <tr>
          <td align="center"><form name="form" action="result.asp" method="post" onSubmit="return chkAction()">
              <br>
              <%
	  		ftable=request("ftable")
			if ftable="" then ftable="Member"
			
			select case ftable
				case "Member"
						fwhere="<select name='fwhere'>"&_
						"<option value=ID,รหัสสมาชิก>รหัสสมาชิก</option>"&_
						"<option value=Company,ชื่อบริษัท>ชื่อบริษัท</option>"&_
						"<option value=Name,ชื่อเจ้าของบริษัท>ชื่อเจ้าของบริษัท</option>"&_
						"<option value=Sex,เพศ>เพศ</option>"&_
						"<option value=Address,ที่อยู่>ที่อยู่</option>"&_
						"<option value=Province,จังหวัด>จังหวัด</option>"&_
						"<option value=Zipcode,รหัสไปรษณีย์>รหัสไปรษณีย์</option>"&_
						"<option value=Country,ประเทศ>ประเทศ</option>"&_
						"<option value=Telephone,โทรศัพท์>โทรศัพท์</option>"&_
						"<option value=Fax,โทรสาร>โทรสาร</option>"&_
						"<option value=Mobile,โทรศัพท์มือถือ>โทรศัพท์มือถือ</option>"&_
						"<option value=StartDate,วันที่บันทึกข้อมูล>วันที่บันทึกข้อมูล</option>"&_
						"</select>"
				case "Customer"
						fwhere="<select name='fwhere'>"&_
						"<option value=Company,ชื่อบริษัทลูกค้า>ชื่อบริษัทลูกค้า</option>"&_
						"<option value=Name,ชื่อลูกค้า>ชื่อลูกค้า</option>"&_
						"<option value=Sex,เพศ>เพศ</option>"&_
						"<option value=Address,ที่อยู่>ที่อยู่</option>"&_
						"<option value=Province,จังหวัด>จังหวัด</option>"&_
						"<option value=Zipcode,รหัสไปรษณีย์>รหัสไปรษณีย์</option>"&_
						"<option value=Country,ประเทศ>ประเทศ</option>"&_
						"<option value=Telephone,โทรศัพท์>โทรศัพท์</option>"&_
						"<option value=Fax,โทรสาร>โทรสาร</option>"&_
						"<option value=Mobile,โทรศัพท์มือถือ>โทรศัพท์มือถือ</option>"&_
						"<option value=Demerit,ลักษณะการกระทำผิด>ลักษณะการกระทำผิด</option>"&_
						"<option value=StartDate,วันที่บันทึกข้อมูล>วันที่บันทึกข้อมูล</option>"&_
						"<option value=ID,รหัสสมาชิก ผู้บันทึกข้อมูล>รหัสสมาชิก ผู้บันทึกข้อมูล</option>"&_
						"</select>"
				case "Driver"
						fwhere="<select name='fwhere'>"&_
						"<option value=Name,ชื่อ>ชื่อ</option>"&_
						"<option value=Surname,นามสกุล>นามสกุล</option>"&_
						"<option value=Sex,เพศ>เพศ</option>"&_
						"<option value=Address,ที่อยู่>ที่อยู่</option>"&_
						"<option value=Province,จังหวัด>จังหวัด</option>"&_
						"<option value=Zipcode,รหัสไปรษณีย์>รหัสไปรษณีย์</option>"&_
						"<option value=Country,ประเทศ>ประเทศ</option>"&_
						"<option value=IDCard,เลขที่บัตรประชาชน>เลขที่บัตรประชาชน</option>"&_
						"<option value=IDSS,เลขที่บัตรประกันสังคม>เลขที่บัตรประกันสังคม</option>"&_
						"<option value=IDTAX,เลขประจำตัวผู้เสียภาษี>เลขประจำตัวผู้เสียภาษี</option>"&_
						"<option value=Degree,วุฒิการศึกษา>วุฒิการศึกษา</option>"&_
						"<option value=Telephone,โทรศัพท์>โทรศัพท์</option>"&_
						"<option value=Mobile,โทรศัพท์มือถือ>โทรศัพท์มือถือ</option>"&_
						"<option value=Demerit,ลักษณะการกระทำผิด>ลักษณะการกระทำผิด</option>"&_
						"<option value=StartDate,วันที่บันทึกข้อมูล>วันที่บันทึกข้อมูล</option>"&_
						"<option value=ID_Member,รหัสสมาชิก>รหัสสมาชิก ผู้บันทึกข้อมูล</option>"&_
						"</select>"
			end select
	  %>
              <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ประเภท</strong></td>
                  <td> <select name="ftable" onChange="return goTo();">
                      <option value="Member" <%=selected("Member",ftable)%>>ข้อมูลสมาชิก</option>
                      <option value="Customer" <%=selected("Customer",ftable)%>>ข้อมูลลูกค้าที่มีประวัติ</option>
                      <option value="Driver" <%=selected("Driver",ftable)%>>ข้อมูลพนักงานขับรถที่มีประวัติ</option>
                    </select> </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>ค้นหาจาก</strong></td>
                  <td> <%=fwhere%> </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>คำที่ต้องการจะค้นหา</strong></td>
                  <td><input type="text" name="keyword" style="width:150px;" maxlength="100"> 
                    <select name="op">
                      <option value="and">ต้องมีทุกคำ</option>
                      <option value="or">มีคำใดคำหนึ่ง</option>
                    </select> </td>
                </tr>
              </table>
              <div align="center"><br>
                <input type="submit" name="search" value="ค้นหาข้อมูล">
              </div>
            </form></td>
        </tr>
      </table></td>
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
		function goTo() {
			var a=document.form;
				va=a.ftable.value;
				url="?ftable="+va
				window.location.reload(url);
		}
		
		function chkAction() {
			var a=document.form;
			if(!a.keyword.value) {
					alert("กรุณากรอก คำทีต้องการจะค้นหา");
					return false;
			}
			return true;
		}
</script>