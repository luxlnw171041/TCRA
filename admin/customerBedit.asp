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

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from Customer Where ID_Customer="&request("id_customer")&" and ID_Member="&session("id_member")
rs.open cn.Execute(sql)
	if not(rs.eof) then
			company=rs("company")
			name=rs("name")
			sex=rs("sex")
			address=split(rs("address"),",")
			province=rs("province")
			zipcode=rs("zipcode")
			country=rs("country")
			telephone=rs("telephone")
			fax=rs("fax")
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
          <td class="big">��䢢������١��ҷ���ջ���ѵ�</td>
        </tr>
        <tr>
          <td align="center"><form name="form" action="customerBeditnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���ͺ���ѷ�١���<br>
                    (��ͧ�к�) </strong></td>
                  <td><input type="text" name="company" style="width:300px;" value="<%=company%>" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�����١���<br>
                    (��ͧ�к�) </strong></td>
                  <td><input type="text" name="name" style="width:300px;" value="<%=name%>" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>��</strong></td>
                  <td> <input type="radio" name="sex" value="M" <%=checked("M",sex)%> checked>
                    ��� 
                    <input type="radio" name="sex" value="F" <%=checked("F",sex)%>>
                    ˭ԧ </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�������<br>
                    (��ͧ�к�) </strong></td>
                  <td><!--textarea name="address" style="width:300px;height:100px;"><%'=address%></textarea-->
				  	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle">
                  <td width="15%">�Ţ���</td>
                  <td width="85%"><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(0)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>���</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(1)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>���</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(2)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>�ǧ</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(3)%>"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ࢵ</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100" value="<%=address(4)%>"></td>
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
                  <td><input type="text" name="zipcode" style="width:300px;" value="<%=zipcode%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
                  <td> 
                    <!--#include file="../include/country.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���Ѿ��<br>
                    (��ͧ�к�) </strong></td>
                  <td><input type="text" name="telephone" style="width:300px;" value="<%=telephone%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
                  <td><input type="text" name="fax" style="width:300px;" value="<%=fax%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���Ѿ����Ͷ��</strong></td>
                  <td><input type="text" name="mobile" style="width:300px;" value="<%=mobile%>" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�ѡɳС�á�зӤ���<br>
                    (��ͧ�к�) </strong></td>
                  <td>
<input type="hidden" name="counter"> 
                    <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="������" <%=checked1("������",demerit)%>></td>
                  <td>������</td>
                </tr>
		<div style="position:absolute;visibility:hidden;">
		<input type="checkbox" name="demerit" value="�Ӥ�������������ö¹�����������ا����">�Ӥ�������������ö¹�����������ا����
		<input type="checkbox" name="demerit" value="�ѡ�͡���ͩ��⡧ö¹��">�ѡ�͡���ͩ��⡧ö¹��
		<input type="checkbox" name="demerit" value="�ѡ�ǹ��ѡ�ҹ�Ѻö价ӧҹ����">�ѡ�ǹ��ѡ�ҹ�Ѻö价ӧҹ����
		<input type="checkbox" name="demerit" value="����">���� (�ô�к�) 
        <input name="demeritdetail" type="text" value="" maxlength="200" style="width:190px;">
		</div>
                <!--tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="�Ӥ�������������ö¹�����������ا����" <%'=checked1("�Ӥ�������������ö¹�����������ا����",demerit)%>></td>
                  <td>�Ӥ�������������ö¹�����������ا����</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="�ѡ�͡���ͩ��⡧ö¹��" <%'=checked1("�ѡ�͡���ͩ��⡧ö¹��",demerit)%>></td>
                  <td>�ѡ�͡���ͩ��⡧ö¹��</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="�ѡ�ǹ��ѡ�ҹ�Ѻö价ӧҹ����" <%'=checked1("�ѡ�ǹ��ѡ�ҹ�Ѻö价ӧҹ����",demerit)%>></td>
                  <td>�ѡ�ǹ��ѡ�ҹ�Ѻö价ӧҹ����</td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="10" align="center" valign="middle"><input type="checkbox" name="demerit" value="����" <%'=checked1("����",demerit)%>></td>
                  <td>���� (�ô�к�) 
                    <input name="demeritdetail" type="text" value="<%'=demeritdetail%>" maxlength="200" style="width:190px;"></td>
                </tr-->
                    </table></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�ѹ/��͹/�� ����зӤ���<br>
                    (��ͧ�к�) </strong></td>
                  <td><!--input type="text" name="datedemerit" value="<%'=datedemerit%>" maxlength="200" style="width:300px;"-->
				  	<select name="datedemerit">
				<option value="">�ѹ</option>
				<%for i=1 to 31%>
					<option value="<%=right("0"&i,2)%>" <%=selected(right("0"&i,2),right("0"&dd1,2))%>><%=right("0"&i,2)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">��͹</option>
				<%for i=1 to 12%>
					<option value="<%=right("0"&i,2)%>" <%=selected(right("0"&i,2),right("0"&mm1,2))%>><%=monthname(i)%></option>
				<%next%>
			</select>
			<select name="datedemerit">
				<option value="">��</option>
			<%yy=datepart("yyyy",date())
			if yy<2500 then yy=yy+543%>
				<%for i=(yy-10) to yy%>
					<option value="<%=i%>"<%=selected(i,yy1)%>><%=i%></option>
				<%next%>
			</select>
				  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�ٻ�Ҿ</strong></td>
                  <td> 
                    <%if image<>"" and not(isnull(image)) then %>
                    <input type="radio" name="cImage" value="0" checked>
                    ���ٻ�Ҿ���� �ٻ�Ѩ�غѹ��� <a href="../image/upload/customer/<%=image%>" target="_new"><%=image%></a> 
                    <%else%>
                    <input type="radio" name="cImage" value="0" checked>
                    ������ٻ�Ҿ 
                    <%end if%>
                    <br> <input type="radio" name="cImage" value="1">
                    �ٻ�Ҿ���� 
                    <input type="file" name="image" style="width:220px;"> </td>
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
                        <td><strong>�ѹ/��͹/�շ��ѹ�֡</strong></td>
                        <td><%=now()%></td>
                      </tr>
                    </table></td>
                </tr>
              </table>
	  <div align="center"><br>
	  <input type="hidden" name="id_customer" value="<%=request("id_customer")%>">
	  <input type="submit" name="edit" value="�ѹ�֡������">
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
				if(!a.company.value) {
						alert("��سҡ�͡ ���ͺ���ѷ�١���");
						return false;
				}
				if(!a.name.value) {
						alert("��سҡ�͡ �����١���");
						return false;
				}
				for(var j=0;j<a.address.length;j++) {
					if(!a.address[j].value) {
							alert("��سҡ�͡ �������");
							return false;
					}
				}
/*				if(!a.address.value) {
						alert("��سҡ�͡ �������");
						return false;
				}*/
/*				if(!a.zipcode.value) {
						alert("��سҡ�͡ ������ɳ���");
						return false;
				}*/
				if(!a.telephone.value) {
						alert("��سҡ�͡ ���Ѿ��");
						return false;
				}
/*				if(!a.fax.value) {
						alert("��سҡ�͡ �����");
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