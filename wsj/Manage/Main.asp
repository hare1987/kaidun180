<!-- #include file="Include/Chk.asp" -->
<!-- #include file="Include/Login_Conn.asp" -->
<%
	set rs=server.createobject("adodb.recordset")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="Images/font.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE3 {font-size: 12px; color: #FF0000;}
-->
</style>
</head>

<body>
<div align="center">
  <table width="100%" border="0" cellspacing="2" cellpadding="2">
    <tr>
      <td height="30" colspan="2" class="input1"><div align="center">�������Ϣ��</div></td>
    </tr>
    
    <tr>
      <td height="30" colspan="2" align="center" valign="middle" bgcolor="#efefef">��������Ϣ</td>
    </tr>
    <tr>
      <td height="30" colspan="2" align="center" valign="middle" bgcolor="#efefef"><%=Session("flag")%>
        ��<%=Session("Admin")%>�����ã������� <%=year(date())&" �� "&month(date())&" �� "&day(date()) & " �� "& weekdayname(weekday(date()))%> </td>
    </tr>
    <tr>
      <td width="166" height="30" align="right" valign="middle" bgcolor="#efefef">������IP��</td>
      <td width="795" height="30" align="left" valign="middle" bgcolor="#efefef"><%=Request.ServerVariables("LOCAL_ADDR")%></td>
    </tr>
    <tr>
      <td height="30" align="right" valign="middle" bgcolor="#efefef">IIS�汾��<br /></td>
      <td height="30" align="left" valign="middle" bgcolor="#efefef"><%=Request.ServerVariables("SERVER_SOFTWARE")%></td>
    </tr>
    <tr>
      <td height="30" align="right" valign="middle" bgcolor="#efefef">����������ϵͳ��</td>
      <td height="30" align="left" valign="middle" bgcolor="#efefef"><%=Request.ServerVariables("OS")%></td>
    </tr>
    <tr>
      <td height="30" align="right" valign="middle" bgcolor="#efefef">��վռ�ÿռ䣺</td>
      <td height="30" align="left" valign="middle" bgcolor="#efefef"><%
set fso = server.CreateObject("Scripting.FileSystemObject")
Path = server.MapPath("./")
set Dir = fso.GetFolder(Path)
Response.Write (int((Dir.Size/1048576)*1000)/1000 & " MB")
%>      </td>
    </tr>
    <tr>
      <td height="30" colspan="2" align="center" valign="middle" bgcolor="#efefef" class="input1">��Ȩ���С�&copy;��</td>
    </tr>
  </table>
</div>
</body>
</html>
<%
Set rs=Nothing
%>