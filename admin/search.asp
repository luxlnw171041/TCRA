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
          <td class="big">���Ң�����</td>
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
						"<option value=ID,������Ҫԡ>������Ҫԡ</option>"&_
						"<option value=Company,���ͺ���ѷ>���ͺ���ѷ</option>"&_
						"<option value=Name,������Ңͧ����ѷ>������Ңͧ����ѷ</option>"&_
						"<option value=Sex,��>��</option>"&_
						"<option value=Address,�������>�������</option>"&_
						"<option value=Province,�ѧ��Ѵ>�ѧ��Ѵ</option>"&_
						"<option value=Zipcode,������ɳ���>������ɳ���</option>"&_
						"<option value=Country,�����>�����</option>"&_
						"<option value=Telephone,���Ѿ��>���Ѿ��</option>"&_
						"<option value=Fax,�����>�����</option>"&_
						"<option value=Mobile,���Ѿ����Ͷ��>���Ѿ����Ͷ��</option>"&_
						"<option value=StartDate,�ѹ���ѹ�֡������>�ѹ���ѹ�֡������</option>"&_
						"</select>"
				case "Customer"
						fwhere="<select name='fwhere'>"&_
						"<option value=Company,���ͺ���ѷ�١���>���ͺ���ѷ�١���</option>"&_
						"<option value=Name,�����١���>�����١���</option>"&_
						"<option value=Sex,��>��</option>"&_
						"<option value=Address,�������>�������</option>"&_
						"<option value=Province,�ѧ��Ѵ>�ѧ��Ѵ</option>"&_
						"<option value=Zipcode,������ɳ���>������ɳ���</option>"&_
						"<option value=Country,�����>�����</option>"&_
						"<option value=Telephone,���Ѿ��>���Ѿ��</option>"&_
						"<option value=Fax,�����>�����</option>"&_
						"<option value=Mobile,���Ѿ����Ͷ��>���Ѿ����Ͷ��</option>"&_
						"<option value=Demerit,�ѡɳС�á�зӼԴ>�ѡɳС�á�зӼԴ</option>"&_
						"<option value=StartDate,�ѹ���ѹ�֡������>�ѹ���ѹ�֡������</option>"&_
						"<option value=ID,������Ҫԡ ���ѹ�֡������>������Ҫԡ ���ѹ�֡������</option>"&_
						"</select>"
				case "Driver"
						fwhere="<select name='fwhere'>"&_
						"<option value=Name,����>����</option>"&_
						"<option value=Surname,���ʡ��>���ʡ��</option>"&_
						"<option value=Sex,��>��</option>"&_
						"<option value=Address,�������>�������</option>"&_
						"<option value=Province,�ѧ��Ѵ>�ѧ��Ѵ</option>"&_
						"<option value=Zipcode,������ɳ���>������ɳ���</option>"&_
						"<option value=Country,�����>�����</option>"&_
						"<option value=IDCard,�Ţ���ѵû�ЪҪ�>�Ţ���ѵû�ЪҪ�</option>"&_
						"<option value=IDSS,�Ţ���ѵû�Сѹ�ѧ��>�Ţ���ѵû�Сѹ�ѧ��</option>"&_
						"<option value=IDTAX,�Ţ��Шӵ�Ǽ����������>�Ţ��Шӵ�Ǽ����������</option>"&_
						"<option value=Degree,�زԡ���֡��>�زԡ���֡��</option>"&_
						"<option value=Telephone,���Ѿ��>���Ѿ��</option>"&_
						"<option value=Mobile,���Ѿ����Ͷ��>���Ѿ����Ͷ��</option>"&_
						"<option value=Demerit,�ѡɳС�á�зӼԴ>�ѡɳС�á�зӼԴ</option>"&_
						"<option value=StartDate,�ѹ���ѹ�֡������>�ѹ���ѹ�֡������</option>"&_
						"<option value=ID_Member,������Ҫԡ>������Ҫԡ ���ѹ�֡������</option>"&_
						"</select>"
			end select
	  %>
              <table width="80%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>������</strong></td>
                  <td> <select name="ftable" onChange="return goTo();">
                      <option value="Member" <%=selected("Member",ftable)%>>��������Ҫԡ</option>
                      <option value="Customer" <%=selected("Customer",ftable)%>>�������١��ҷ���ջ���ѵ�</option>
                      <option value="Driver" <%=selected("Driver",ftable)%>>�����ž�ѡ�ҹ�Ѻö����ջ���ѵ�</option>
                    </select> </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���Ҩҡ</strong></td>
                  <td> <%=fwhere%> </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�ӷ���ͧ��èФ���</strong></td>
                  <td><input type="text" name="keyword" style="width:150px;" maxlength="100"> 
                    <select name="op">
                      <option value="and">��ͧ�շء��</option>
                      <option value="or">�դ�㴤�˹��</option>
                    </select> </td>
                </tr>
              </table>
              <div align="center"><br>
                <input type="submit" name="search" value="���Ң�����">
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
					alert("��سҡ�͡ �ӷյ�ͧ��èФ���");
					return false;
			}
			return true;
		}
</script>