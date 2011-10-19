<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<%
if Request("Action")=1 then

	SQL="Select * from Link"
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	rs.AddNew
	rs("name")=Trim(Request("name"))
	rs("logo")=Trim(Request("img"))
	rs("url")=Trim(Request("url"))
	rs("info")=Trim(Request("info"))
	
	rs.Update
	rs.Close
	Set rs=nothing
	Response.Write "<script language='javascript'>alert('添加成功!');document.location.href('Lnk_Manage.asp');</script>"
	Response.End()
else
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../Images/font.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="?Action=1">
  <table width="100%" border="0">
    <tr>
      <td height="25" colspan="2" bgcolor="#3385D1" class="bt2">　添加友情链接</td>
    </tr>
    <tr>
      <td width="79" align="right" valign="middle" bgcolor="#efefef" class="font1">站点名称：</td>
      <td width="678" bgcolor="#efefef"><input name="name" type="text" id="name" size="10" maxlength="10" /></td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">Logo地址：</td>
      <td bgcolor="#efefef"><input name="img" type="text" id="img" size="50" maxlength="100" />
        （可以指定，或上传）</td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">上传Logo：</td>
      <td bgcolor="#efefef"><iframe name='i1' src='../upload/upload_pic.asp'; frameborder=0 width="350" scrolling=no height="50"> </iframe></td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">站点网址：</td>
      <td bgcolor="#efefef"><input name="url" type="text" id="url" size="50" maxlength="100" /></td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">说明：</td>
      <td bgcolor="#efefef"><textarea name="info" cols="41" rows="3" id="info"></textarea></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" bgcolor="#efefef">&nbsp;</td>
      <td height="25" bgcolor="#efefef"><input type="submit" name="Submit" value="提交" /></td>
    </tr>
  </table>
</form>
</body>
</html>
<%
end if
%>