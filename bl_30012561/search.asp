<!--#include file="../include/checklogin.asp"-->
<!--#include file="../include/connection.asp"-->
<%Set cn=Server.CreateObject("ADODB.Connection")
cn.open Connect%>

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
            <div class="subject">���Ң�����</div>
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
                <li><a href="customerBadd.asp">�����������١��ҷ���ջ���ѵ�</a></li>
              </ul>
              <ul>
                <li><a href="customerBview.asp">�٢������١��ҷ���ջ���ѵ�</a></li>
              </ul>
            </div>-->
            <div class="sec-bmenu">
              <ul>
                <li><a href="driverBadd.asp">���������ž�ѡ�ҹ�Ѻö����ջ���ѵ�</a></li>
              </ul>
              <ul>
                <li class="current"><a href="search.asp">���Ң����ž�ѡ�ҹ�Ѻö����ջ���ѵ�</a></li>
              </ul>
            </div>
 <!--           <div class="sec-ymenu">
              <ul>
                <li><a href="SupplierB_add.asp">���������� Supplier ����ջ���ѵ�</a></li>
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
            </div>-->
            <p><a href="../freeaspwebboard/" target="_blank"><img src="../images/webboard.gif" width="210" height="80" border="0" align="right" /></a></p>
          </div>
        </div>
      <!-- InstanceEndEditable --><!-- InstanceBeginEditable name="content" -->
       	  <div class="content-data">
       	    <form name="form" action="result.asp" method="post" onSubmit="return chkAction()"><br>
	  <%
	  		ftable=request("ftable")
			if ftable="" then ftable="Customer"
			
						fwhere="<select name='fwhere'>"&_
						"<option value=Name,����>����</option>"&_
						"<option value=Surname,���ʡ��>���ʡ��</option>"&_
						"<option value=IDCard,�Ţ���ѵû�ЪҪ�>�Ţ���ѵû�ЪҪ�</option>"&_
			

	  %>
        <table width="90%" border="1" cellpadding="5" cellspacing="0" bordercolor="#FF9933">
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>������</strong></td>
            <td>
				<select name="ftable" onChange="return goTo();">
				<!--option value="Member" <%'=selected("Member",ftable)%>>��������Ҫԡ</option-->
				<!--<option value="Customer" <%=selected("Customer",ftable)%>>�������١��ҷ���ջ���ѵ�</option>-->
				<option value="Driver" <%=selected("Driver",ftable)%>>�����ž�ѡ�ҹ�Ѻö����ջ���ѵ�</option>
				</select>
			</td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>���Ҩҡ</strong></td>
            <td>
				<%=fwhere%>
			</td>
          </tr>
          <tr align="left" valign="top"> 
            <td width="130" bgcolor="#FBB18E"><strong>�ӷ���ͧ��èФ���</strong></td>
            <td><input type="text" name="keyword" style="width:150px;" maxlength="100">
			<select name="op">
				<option value="and">��ͧ�շء��</option>
				<option value="or">�դ�㴤�˹��</option>
			</select>
			</td>
          </tr>
        </table>
	  <div align="center"><br>
	  <input type="submit" name="search" value="���Ң�����">
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
		function goTo() {
			var a=document.form;
				va=a.ftable.options[a.ftable.selectedIndex].value;
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