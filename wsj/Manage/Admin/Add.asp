<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<!-- #include file="../Include/MD5.asp" -->
<%
if Request("Action")=1 then
	if Trim(Request("name"))="" or Trim(Request("pass"))="" then
				Response.write "<script language='javascript'>alert('��Ϣ��д��������');history.go(-1);</script>"
		Response.End()
	end if
	SQL="Select * from A_d_m_i_n where name='"&Trim(Request("name"))&"'"
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	if not rs.eof then
		Response.Write "<script language='javascript'>alert('�Ѵ���ͬ������Ա,����������!');history.back();</script>"
		Response.End()
	end if
	rs.AddNew
	rs("name")=Trim(Request("name"))
	rs("pass")=MD5(Trim(Request("pass")))
	rs("flag")=Request("flag")

	rs.Update
	rs.Close
	Set rs=nothing
	Response.Write "<script language='javascript'>alert('��ӳɹ�!');document.location.href('Manage.asp');</script>"
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
  <table width="600" border="0">
    <tr>
      <td height="25" colspan="2" bgcolor="#3385D1" class="bt2">����ӹ���Ա</td>
    </tr>
    <tr>
      <td width="70" align="right" valign="middle" bgcolor="#efefef" class="font1">��½����</td>
      <td width="520" bgcolor="#efefef"><input name="name" type="text" id="name" size="20" maxlength="20" /></td>
    </tr>
    <tr>
      <td align="right" valign="middle" bgcolor="#efefef" class="font1">�ܡ��룺</td>
      <td bgcolor="#efefef"><input name="pass" type="text" id="pass" size="20" maxlength="20" /></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" bgcolor="#efefef">Ȩ&nbsp;&nbsp;�ޣ�</td>
      <td height="25" bgcolor="#efefef"><select name="flag" id="flag">
        <option value="ϵͳ����Ա" selected>ϵͳ����Ա</option>
      </select>
      </td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" bgcolor="#efefef">&nbsp;</td>
      <td height="25" bgcolor="#efefef"><input type="submit" name="Submit" value="�ύ" />
      &nbsp;
      <input type="button" name="Submit2" value="����" onClick="history.back()"></td>
    </tr>
  </table>
</form>
</body>
</html>
<%
end if
%>