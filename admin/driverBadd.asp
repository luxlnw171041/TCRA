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
    <td width="612" align="left" valign="top"><table width="90%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="big">���������Ť��Ѻ����ջ���ѵ�</td>
        </tr>
        <tr>
          <td align="center"><form name="form" action="driverBaddnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
              <table width="100%" border="1" align="center" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>����<br>
                    (��ͧ�к�) </strong></td>
                  <td><input type="text" name="name" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���ʡ��<br>
                    (��ͧ�к�) </strong></td>
                  <td><input type="text" name="surname" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�Ţ���ѵû�ЪҪ�<br>
                    (��ͧ�к�) </strong></td>
                  <td><input type="text" name="idcard" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�Ţ���ѵû�Сѹ�ѧ��</strong></td>
                  <td><input type="text" name="idss" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�Ţ��Шӵ�Ǽ����������</strong></td>
                  <td><input type="text" name="idtax" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>��</strong></td>
                  <td> <input type="radio" name="sex" value="M" checked>
                    ��� 
                    <input type="radio" name="sex" value="F">
                    ˭ԧ </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�������</strong></td>
                  <td><!--textarea name="address" style="width:300px;height:100px;"></textarea-->
				  	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle">
                  <td width="15%">�Ţ���</td>
                  <td width="85%"><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>���</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>���</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>�ǧ</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ࢵ</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
              </table>
				  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�ѧ��Ѵ</strong></td>
                  <td> 
                    <!--#include file="../include/province.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>������ɳ���</strong></td>
                  <td><input type="text" name="zipcode" style="width:300px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
                  <td> 
                    <!--#include file="../include/country.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�زԡ���֡��</strong></td>
                  <td> <select name="degree" style="width:300px;">
                      <option value="��ж��֡��">��ж��֡��</option>
                      <option value="�Ѹ���֡�ҵ͹��">�Ѹ���֡�ҵ͹��</option>
                      <option value="�Ѹ���֡�ҵ͹����">�Ѹ���֡�ҵ͹����</option>
                      <option value="��С�ȹ�ºѵ��ԪҪվ">��С�ȹ�ºѵ��ԪҪվ</option>
                      <option value="͹ػ�ԭ��">͹ػ�ԭ��</option>
                      <option value="��ԭ�ҵ��">��ԭ�ҵ��</option>
                      <option value="��ԭ���">��ԭ���</option>
                      <option value="����" selected>����</option>
                    </select> </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���Ѿ��</strong></td>
                  <td><input type="text" name="telephone" style="width:300px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���Ѿ����Ͷ��</strong></td>
                  <td><input type="text" name="mobile" style="width:300px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�ѡɳС�á�зӤ���<br>
                    (��ͧ�к�) </strong></td>
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
                      <tr align="left" valign="top"> 
                        <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="����ǡѺö¹��"></td>
                        <td>����ǡѺö¹�� 
                          <input type="hidden" name="counter"></td>
                      </tr>
                      <tr align="left" valign="top"> 
                        <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="����ǡѺ�١���"></td>
                        <td>����ǡѺ�١���</td>
                      </tr>
                      <tr align="left" valign="top"> 
                        <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="����ͺѧ�Ѻ����ѷ"></td>
                        <td>����ͺѧ�Ѻ����ѷ</td>
                      </tr>
                    </table></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�ѹ/��͹/�� ����зӤ���<br>
                    (��ͧ�к�) </strong></td>
                  <td><!--input type="text" name="datedemerit" value="" maxlength="200" style="width:300px;"-->
				  	<select name="datedemerit">
				<option value="">�ѹ</option>
				<%for i=1 to 31%>
					<option value="<%=right("0"&i,2)%>"><%=right("0"&i,2)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">��͹</option>
				<%for i=1 to 12%>
					<option value="<%=right("0"&i,2)%>"><%=monthname(i)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">��</option>
			<%yy=datepart("yyyy",date())
			if yy<2500 then yy=yy+543%>
				<%for i=(yy-10) to yy%>
					<option value="<%=i%>"><%=i%></option>
				<%next%>
			</select>
				  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�ٻ�Ҿ</strong></td>
                  <td> <input type="file" name="image" style="width:300px;"> </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�����ż��ѹ�֡</strong></td>
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="2">
                      <tr align="left" valign="top"> 
                        <td width="100"><strong>������Ҫԡ</strong></td>
                        <td><%=iID%></td>
                      </tr>
                      <tr align="left" valign="top"> 
                        <td width="100"><strong>���ͼ�����к�</strong></td>
                        <td><%=iUsername%></td>
                      </tr>
                      <tr align="left" valign="top"> 
                        <td width="100"><strong>���ͺ���ѷ</strong></td>
                        <td><%=iCompany%></td>
                      </tr>
                      <tr align="left" valign="top"> 
                        <td><strong>�ѹ/��͹/�� ���ѹ�֡</strong></td>
                        <td><%=now()%></td>
                      </tr>
                    </table></td>
                </tr>
              </table>
              <div align="center"><br>
                <input type="submit" name="edit" value="���������������">
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
		function chkAction() {
				var a=document.form;
				var counter = 0;
				if(!a.name.value) {
						alert("��سҡ�͡ ����");
						return false;
				}
				if(!a.surname.value) {
						alert("��سҡ�͡ ���ʡ��");
						return false;
				}
/*				if(!a.address.value) {
						alert("��سҡ�͡ �������");
						return false;
				}
				if(!a.zipcode.value) {
						alert("��سҡ�͡ ������ɳ���");
						return false;
				}*/
				if(!a.idcard.value) {
						alert("��سҡ�͡ �Ţ���ѵû�ЪҪ�");
						return false;
				}
/*				if(!a.idss.value) {
						alert("��سҡ�͡ �Ţ���ѵû�Сѹ�ѧ��");
						return false;
				}
				if(!a.idtax.value) {
						alert("��سҡ�͡ �Ţ��Шӵ�Ǽ����������");
						return false;
				}
				if(!a.telephone.value) {
						alert("��سҡ�͡ ���Ѿ��");
						return false;
				}
				if(!a.mobile.value) {
						alert("��سҡ�͡ ���Ѿ����Ͷ��");
						return false;
				}*/
				for(var i = 0; i < a.demerit.length; i++) {
					if(a.demerit[i].checked) counter++;
					if(a.demerit[i].checked && a.demerit[i].value=="����") {
						if(!a.demeritdetail.value) {
							alert("��س��к� �ѡɳС�á÷Ӥ���");
							return false;
						}
					}
				}
				if(counter < 1) {
					alert("��س����͡�ѡɳС�á�зӤ������ҧ���� 1 ���");
					return false;
				}else{
					a.counter.value=counter;
				}
				for(var k=0;k<a.datedemerit.length;k++) {
						if(!a.datedemerit[k].options[a.datedemerit[k].selectedIndex].value) {
							alert("��سҡ�͡ �ѹ/��͹/�� ����зӤ���");
							return false;
						}
				}
/*				if(!a.datedemerit.value) {
					alert("��سҡ�͡ �ѹ/��͹/�� ����зӼԴ");
					return false;
				}*/
			return true;
		}
</script>