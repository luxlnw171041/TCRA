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
<title>��Ҥ�ö�����---TCRA Black list system</title>
<!-- InstanceEndEditable -->
<meta NAME="Subject" CONTENT="��Ҥ�ö�����,ö�����,ö���,���ö,tcra,thai car rental,��áԨö���,������ö���,�Ҥҡ�ҧö���">
<meta NAME="Description" CONTENT="��Ҥ�ö�����,ö�����,ö���,���ö,tcra,thai car rental,��áԨö���,������ö���,�Ҥҡ�ҧö���">
<meta NAME="Abstract" CONTENT=" ��Ҥ�ö�����,ö�����,ö���,���ö,tcra,thai car rental,��áԨö���,������ö���,�Ҥҡ�ҧö���">
<meta NAME="Keywords" CONTENT="��Ҥ�ö�����,ö�����,ö���,���ö,��áԨö���,������ö���,�Ҥҡ�ҧö���,��ö���,tcra,thai car rental,car rent,carrent,thai car rental association">
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
            <div class="subject">���������� Supplier ����ջ���ѵ�</div>
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
                <li><a href="customerBadd.asp">�����������١��ҷ���ջ���ѵ�</a></li>
              </ul>
              <ul>
                <li><a href="customerBview.asp">�٢������١��ҷ���ջ���ѵ�</a></li>
              </ul>
            </div>
            <div class="sec-bmenu">
              <ul>
                <li><a href="driverBadd.asp">���������ž�ѡ�ҹ�Ѻö����ջ���ѵ�</a></li>
              </ul>
              <ul>
                <li><a href="driverBview.asp">�٢����ž�ѡ�ҹ�Ѻö����ջ���ѵ�</a></li>
              </ul>
            </div>
            <div class="sec-ymenu">
              <ul>
                <li class="current"><a href="SupplierB_add.asp">���������� Supplier ����ջ���ѵ�</a></li>
              </ul>
              <ul>
                <li><a href="SupplierB_view.asp">�٢����� Supplier ����ջ���ѵ�</a></li>
              </ul>
            </div>
            <div class="sec-bmenu">
              <ul>
                <li><a href="StaffB_add.asp">���������ž�ѡ�ҹ����ջ���ѵ�</a></li>
              </ul>
              <ul>
                <li><a href="StaffB_view.asp">�٢����ž�ѡ�ҹ����ջ���ѵ�</a></li>
              </ul>
            </div>
            <p><a href="../freeaspwebboard/" target="_blank"><img src="../images/webboard.gif" width="210" height="80" border="0" align="right" /></a></p>
          </div>
        </div>
      <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="content" -->
       	  <div class="content-data">
       	    <form name="form" action="SupplierB_addnow.asp" enctype="multipart/form-data" method="post" onSubmit="return chkAction()">
        <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>���ͺ���ѷ</strong></td>
            <td width="418"><input type="text" name="company" style="width:300px;" value="" maxlength="200">
              <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>����</strong></td>
            <td><input type="text" name="name" style="width:300px;" value="" maxlength="200"></td>
          </tr>
		            <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>���ʡ��</strong></td>
            <td><input type="text" name="surname" style="width:300px;" value="" maxlength="200"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>��</strong></td>
            <td> <input type="radio" name="sex" value="M" checked>
              ��� 
              <input type="radio" name="sex" value="F" >
              ˭ԧ 
              <input type="radio" name="sex" value="C" >
����ѷ</td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>�������</strong></td>
            <td>
              <!--textarea name="address" style="width:300px;height:100px;"></textarea-->
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle">
                  <td width="15%">�Ţ���</td>
                  <td width="85%"><input type="text" name="address" style="width:250px;" maxlength="100">
                    <span style="color:#F00;">* </span></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>���</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>���</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100">
                    <span style="color:#F00;"> * </span></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>�ǧ</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td>ࢵ</td>
                  <td><input type="text" name="address" style="width:250px;" maxlength="100">
                    <span style="color:#F00;">* </span></td>
                </tr>
              </table> </td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>�ѧ��Ѵ</strong></td>
            <td> <!--#include file="../include/province.asp"--> <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>������ɳ���</strong></td>
            <td><input type="text" name="zipcode" style="width:300px;" value="" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>���Ѿ��</strong></td>
            <td><input type="text" name="telephone" style="width:300px;" value="" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>�����</strong></td>
            <td><input type="text" name="fax" style="width:300px;" value="" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="207" bgcolor="#FBB18E"><strong>���Ѿ����Ͷ��</strong></td>
            <td><input type="text" name="mobile" style="width:300px;" value="" maxlength="20"></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>�ѡɳС�÷Ӹ�áԨ������١��ͧ</strong></td>
            <td><textarea name="demerit" cols="45" rows="5"></textarea>
              <span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top">
            <td bgcolor="#FBB18E"><strong>�ѹ/��͹/�� ���Ӹ�áԨ���١��ͧ</strong></td>
            <td><!--input name="datedemerit" type="text" value="" maxlength="200" style="width:300px;"-->
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
					<option value="<%=i-543%>"><%=i%></option>
				<%next%>
			</select>
			<span style="color:#F00;">* </span></td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>�ٻ�Ҿ</strong></td>
            <td> <input type="file" name="image" style="width:300px;"> </td>
          </tr>
          <tr align="left" valign="top"> 
            <td bgcolor="#FBB18E"><strong>���ѹ�֡<br />
            </strong>
              <table width="95%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td width="13%"><label>
                    <input name="ShowName" type="checkbox" id="ShowName" value="ShowName" checked="checked" />
                  </label></td>
                  <td width="87%">����ʴ������ż��ѹ�֡��˹�����</td>
                </tr>
              </table></td>
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
	    <br>
        <table width="90%" border="0" cellspacing="0" cellpadding="1">
            <tr align="left" valign="top">
              <td width="13%"><strong>�����˵�</strong></td>
              <td width="4%" align="center">1.</td>
              <td width="83%">�����Ŵѧ����Ƕ���繤����Ѻ�ͧ��Ҫԡ�����Ҥ���ҹ�� 
                ��úѹ�֡������������Ҥ��Ң����ŷء���� ���ա�úѹ�֡��������´������������</td>
            </tr>
            <tr align="left" valign="top">
              <td>&nbsp;</td>
              <td align="center">2.</td>
              <td>��Ҫԡ����駤�õ�Ǩ�ͺ����稨�ԧ��ҧ����������´�١��ͧ 
                ���ͧ�ҡ��ª��� �ж١���������������Ѻ��Ҫԡ��蹢ͧ��Ҥ� 
                �ؤ�Ŵѧ������Ҩ���Ѻ����������� �ҡ����稨�ԧ�ѧ����Ǥ�Ҵ����͹ 
                �����Ҫԡ����駨е�ͧ�繼���Ѻ�Դ�ͺ������������Ŵѧ�����</td>
            </tr>
            <tr align="left" valign="top">
              <td>&nbsp;</td>
              <td align="center">3.</td>
              <td>��Ҥ�� ��ʧǹ�Է���㹤����Ѻ�Դ�ͺ㹷ء�ó� ��Ң����Ŵѧ����ǼԴ��Ҵ</td>
            </tr>
            <tr align="left" valign="top">
              <td>&nbsp;</td>
              <td align="center">4.</td>
              <td>��Ҥ�� ���繵�ǡ�ҧ�����������šѺ��Ҫԡ��ҷ����������� 
                ��� ����ª���٧�ش</td>
            </tr>
          </table>
        <div align="center">
          
          <br>
	  <input type="submit" name="edit" value="���������������">
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
<span class="bottom-text">2585/8 (�ç������Ҵ��ͧ��) �.��������� 4 �ǧ��ͧ�� ࢵ��ͧ�� ��ا෾� 10110<br />
��. 0-2204-1454 , 0-2258-7777 ��� 247 �����.0-2204-1455<br />
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
				if(!a.company.value) {
						alert("��سҡ�͡ ���ͺ���ѷ");
						return false;
				}
/*				if(!a.name.value) {
						alert("��سҡ�͡ �����١���");
						return false;
				} */
				for(var j=0;j<a.address.length;j++) {
					if(!a.address[j].value) {
							alert("��سҡ�͡ �������");
							return false;
					}
				}
/*				if(!a.zipcode.value) {
						alert("��سҡ�͡ ������ɳ���");
						return false;
				}
				if(!a.telephone.value) {
						alert("��سҡ�͡ ���Ѿ��");
						return false;
				}*/
/*				if(!a.fax.value) {
						alert("��سҡ�͡ �����");
						return false;
				}
				if(!a.mobile.value) {
						alert("��سҡ�͡ ���Ѿ����Ͷ��");
						return false;
				}*/
						if(!a.demerit.value) {
							alert("��س��к� �ѡɳС�÷Ӹ�áԨ������١��ͧ");
							return false;
						}


/*
				if(counter < 1) {
					alert("��س����͡�ѡɳС�á�зӤ������ҧ���� 1���");
					return false;
				}else{
					a.counter.value=counter;
				}
*/
				for(var k=0;k<a.datedemerit.length;k++) {
						if(!a.datedemerit[k].options[a.datedemerit[k].selectedIndex].value) {
							alert("��سҡ�͡ �ѹ/��͹/�� ���Ӹ�áԨ���١��ͧ");
							return false;
						}
				}
			return true;
		}
</script>