<!--#include file="checklogin.asp"-->
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
          <td class="big">������������Ҫԡ</td>
        </tr>
        <tr>
          <td align="center"><form name="form" action="memberaddnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
              <table width="100%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>������Ҫԡ</strong></td>
                  <td><input type="text" name="id" style="width:150px;" value="" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>���ͼ�����к�</strong></td>
                  <td><input type="text" name="username" style="width:150px;" value="" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>���ʼ�ҹ</strong></td>
                  <td><input type="password" name="password" style="width:150px;" value="" maxlength="100"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���ͺ���ѷ</strong></td>
                  <td><input type="text" name="company" style="width:300px;" value="" maxlength="200"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>������Ңͧ����ѷ</strong></td>
                  <td><input type="text" name="name" style="width:300px;" value="" maxlength="200"></td>
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
                  <td><textarea name="address" style="width:300px;height:100px;"></textarea></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�ѧ��Ѵ</strong></td>
                  <td> 
                    <!--#include file="../include/province.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>������ɳ���</strong></td>
                  <td><input type="text" name="zipcode" style="width:100px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
                  <td> 
                    <!--#include file="../include/country.asp"-->
                  </td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���Ѿ��</strong></td>
                  <td><input type="text" name="telephone" style="width:200px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>�����</strong></td>
                  <td><input type="text" name="fax" style="width:200px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td width="130" bgcolor="#FBB18E"><strong>���Ѿ����Ͷ��</strong></td>
                  <td><input type="text" name="mobile" style="width:200px;" value="" maxlength="20"></td>
                </tr>
                <tr align="left" valign="top"> 
                  <td bgcolor="#FBB18E"><strong>�ٻ�Ҿ</strong></td>
                  <td> 
                    <input type="file" name="image" style="width:300px;"> </td>
                </tr>
              </table>
              <div align="center"><br>
                <input type="submit" name="edit" value="������������Ҫԡ">
              </div>
            </form></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
<%
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
				if(!a.id.value) {
						alert("��سҡ�͡ ������Ҫԡ");
						return false;
				}
				if(!a.username.value) {
						alert("��سҡ�͡ ���ͼ�����к�");
						return false;
				}
				if(!a.password.value) {
						alert("��سҡ�͡ ���ʼ�ҹ");
						return false;
				}
				if(!a.company.value) {
						alert("��سҡ�͡ ���ͺ���ѷ");
						return false;
				}
				if(!a.name.value) {
						alert("��سҡ�͡ ������Ңͧ����ѷ");
						return false;
				}
				if(!a.address.value) {
						alert("��سҡ�͡ �������");
						return false;
				}
				if(!a.zipcode.value) {
						alert("��سҡ�͡ ������ɳ���");
						return false;
				}
				if(!a.telephone.value) {
						alert("��سҡ�͡ ���Ѿ��");
						return false;
				}
				if(!a.fax.value) {
						alert("��سҡ�͡ �����");
						return false;
				}
				if(!a.mobile.value) {
						alert("��سҡ�͡ ���Ѿ����Ͷ��");
						return false;
				}
			return true;
		}
</script>