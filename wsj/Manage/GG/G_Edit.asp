<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<%
	SQL="Select * from gg where id="&Request("id")
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	if rs.eof and rs.bof then
	Response.Write "<script language='javascript'>alert('��������!');document.location.href('G_Manage.asp');</script>"
	Response.End()
	end if
if Request("Action")=1 then
	if Trim(Request("title"))=""  then
				Response.write "<script language='javascript'>alert('��Ϣ��д��������\n���������д��');history.go(-1);</script>"
		Response.End()
	end if
	SQL="Select * from gg where id="&Request("id")
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	rs("title")=Trim(Request("title"))
	rs("info")=Trim(Request("info"))
	
	rs.Update
	rs.Close
	Set rs=nothing
	Response.Write "<script language='javascript'>alert('�����޸ĳɹ�!');document.location.href('G_Manage.asp');</script>"
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
<form id="form1" name="form1" method="post" action="?Action=1&id=<%=Request("id")%>">
  <table width="100%" border="0">
    <tr>
      <td height="25" colspan="2" bgcolor="#3385D1" class="bt2">���޸Ĺ���</td>
    </tr>
    <tr>
      <td width="69" align="right" valign="middle" bgcolor="#efefef" class="font1">�ꡡ���⣺</td>
      <td width="672" bgcolor="#efefef"><input name="title" type="text" id="title" value="<%=rs("title")%>" size="50" maxlength="50" /></td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">˵����</td>
      <td bgcolor="#efefef"><iframe id="eWebEditor1" src="../webedit/ewebeditor.asp?id=info&style=s_blue" frameborder="0" scrolling="no" width="100%" height="350"></iframe></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" bgcolor="#efefef">&nbsp;</td>
      <td height="25" bgcolor="#efefef"><input type="submit" name="Submit" value="�ύ" />
        <span style="visibility:hidden;">
        <textarea name="info" rows="1" id="info"><%=rs("info")%>
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