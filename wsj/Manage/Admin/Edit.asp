<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<!-- #include file="../Include/MD5.asp" -->
<%
	SQL="Select * from A_d_m_i_n where id="&Request("id")
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	if rs.eof and rs.bof then
	Response.Write "<script language='javascript'>alert('参数错误!');document.location.href('Manage.asp');</script>"
	Response.End()
	end if
if Request("Action")=1 then
	
	SQL="Select * from A_d_m_i_n where id="&Request("id")
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	'rs("name")=Trim(Request("name"))
	if Request("pass")<>"" then rs("pass")=MD5(Trim(Request("pass")))
	rs("flag")=Request("flag")
	
	rs.Update
	rs.Close
	Set rs=nothing
	Response.Write "<script language='javascript'>alert('修改成功!');document.location.href('Manage.asp');</script>"
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
  <table width="600" border="0">
    <tr>
      <td height="25" colspan="2" bgcolor="#3385D1" class="bt2">　修改管理员</td>
    </tr>
    <tr>
      <td width="70" align="right" valign="middle" bgcolor="#efefef" class="font1">登陆名：</td>
      <td width="520" bgcolor="#efefef"><%=rs("name")%></td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">新密码：</td>
      <td bgcolor="#efefef"><input name="pass" type="text" id="pass" size="20" maxlength="20" /> 
        若不修改密码，请留空 </td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" bgcolor="#efefef">权&nbsp;&nbsp;限：</td>
      <td height="25" bgcolor="#efefef"><select name="flag" id="flag">
          <option value="<%=rs("flag")%>" selected><%=rs("flag")%></option>
		  <option value="系统管理员">系统管理员</option>
        </select>
      </td>
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