<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ٶ�ͯ����ѧУ��ӭ��!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>��ҳ���ͼƬ����</h1>
			
		</div>
		<div class="right_body">
	    <form name="form1" method="post" action="upfile.asp" enctype="multipart/form-data" >
  <div align="center">    </div>
  <table width="71%" height="23" border="1" align="center" cellpadding="0" cellspacing="0" bordercolorlight="#000000" bordercolordark="#CCCCCC">
    <tr> 
      <td bgcolor="#CCCCCC" align="left" valign="middle" height="18" width="559"><p class="style1"> <span class="style2">��ҳ���ͼƬ����˵����</span>��ע�⣺ͼƬһ���ϴ����ǵ�ԭ��ͼƬ���޷��ָ����ϴ�����ϸ����<br>
          <br>
          <span class="style4">���ͼƬ�İ�˳�������Ϊ:fla1.jpg--fla6.jpg���ܼ�6��ͼƬ ���ߴ�Ϊ��581px �� 303px <br>
          <br>
���磺�����������ͼƬ������ϴ���ͼƬ����Ϊ��fla3.jpg����������<br>
<br>
ͬʱ������������ͼƬ��������������趨��Ҫ�ϴ��ĸ���Ϊ��Ҫ����ͼƬ��������һ�����ϴ�</span></p>
      </td>
    </tr>
  </table>
  <input type="hidden" name="act" value="upload">
  <table width="71%" border="1" align="center" cellpadding="5" cellspacing="0" bordercolorlight="#000000" bordercolordark="#CCCCCC" bgcolor="#FFFFFF">
    <tr bgcolor="#CCCCCC"> 
      <td height="22" align="left" valign="middle" bgcolor="#CCCCCC">&nbsp;ͼƬ�ļ��ϴ�</td>
    </tr>
    <tr align="left" valign="middle" bgcolor="#eeeeee"> 
      <td bgcolor="#eeeeee" height="92"> 
        <script language="javascript">
	  function setid()
	  {
	  str='<br>';
	  if(!window.form1.upcount.value)
	   window.form1.upcount.value=1;
 	  for(i=1;i<=window.form1.upcount.value;i++)
	     str+='�ļ�'+i+':<input type="file" name="file'+i+'" style="width:400" class="tx1"><br><br>';
	  window.upid.innerHTML=str+'<br>';
	  }
	  </script>
        <li> ��Ҫ�ϴ��ĸ��� 
          <input type="text" name="upcount" class="tx" value="1">
          <input type="button" name="Button" class="bt" onclick="setid();" value="�� �趨 ��">
        </li>
        
<br>
        <br>
        <li>�ϴ���: 
          <input type="text" name="filepath" class="tx" style="width:350" value="../images/">
        </li>
      </td>
    </tr>
    <tr align="center" valign="middle"> 
      <td align="left" id="upid" height="50"> �ļ�1: 
        <input type="file" name="file1" style="width:400" class="tx1" value="">
      </td>
    </tr>
    <tr align="center" valign="middle" bgcolor="#eeeeee"> 
      <td bgcolor="#eeeeee" height="24"> 
        <input type="submit" name="Submit" value="�� �ύ ��" class="bt">
        <input type="reset" name="Submit2" value="�� ��ִ ��" class="bt">
      </td>
    </tr>
  </table>
</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
