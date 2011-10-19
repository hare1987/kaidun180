<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<%
if Request("Action")=1 then
	if Trim(Request("title"))="" then
				Response.write "<script language='javascript'>alert('信息填写不完整：\n标题必须填写！');history.go(-1);</script>"
		Response.End()
	end if
	SQL="Select * from gg"
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	rs.AddNew
	rs("title")=Trim(Request("title"))
	rs("info")=Trim(Request("info"))
	rs("addtime")=now()
	
	rs.Update
	rs.Close
	Set rs=nothing
	Response.Write "<script language='javascript'>alert('公告添加成功!');document.location.href('G_Manage.asp');</script>"
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
  <table width="95%" border="0">
    <tr>
      <td height="25" colspan="2" bgcolor="#3385D1" class="bt2">　添加公告</td>
    </tr>
    <tr>
      <td width="42" align="right" valign="middle" bgcolor="#efefef" class="font1">标题：</td>
      <td width="661" bgcolor="#efefef"><input name="title" type="text" id="title" size="50" maxlength="50" /></td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">说明：</td>
      <td bgcolor="#efefef"><iframe id="eWebEditor1" src="../webedit/ewebeditor.asp?id=info&style=s_blue" frameborder="0" scrolling="no" width="100%" height="350"></iframe></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" bgcolor="#efefef">&nbsp;</td>
      <td height="25" bgcolor="#efefef"><input type="submit" name="Submit" value="提交" />
        <span style="visibility:hidden;">
        <textarea name="info" rows="1" id="info">
        </textarea>
      </span></td>
    </tr>
  </table>
</form>
</body>
</html>
<%
end if
%>