<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<%
id=Request.QueryString("id")
if id="" or not isnumeric(id) then
	Response.Write ("<script>alert('�����Ƿ���');history.back();</script>")
	Response.End()
end if

SQL="Select * from MU where id=4"
Set rs=server.createobject("adodb.recordset")
rs.open SQL,conn,1,3
if rs.eof then
	Response.Write ("<script>alert('û���ҵ�ָ������Ϣ��');history.back();</script>")
	Response.End()
else
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../Images/font.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body {
	margin-left: 3px;
	margin-top: 3px;
}
-->
</style>
</head>
<%

if Request("Action")=1 then
	if rs("info")="��" then
		rs("info")="��"
	else
		rs("info")="��"
	end if
	
	rs.Update
	rs.Close
	Set rs=nothing
	Response.Write "<script language='javascript'>alert('�ɹ��޸���ָ����Ϣ!');document.location.href('ok.asp?id=4');</script>"
	Response.End()
end if
%>
<body>
<form id="form1" name="form1" method="post" action="?Action=1&id=<%=id%>">
  <table width="100%" border="0" bordercolor="#3385D1">
    <tr>
      <td height="25" bgcolor="#3385D1" class="font2 STYLE1"> ��<%=rs("name")%></td>
    </tr>
    <tr>
      <td>��ǰ״̬��<%=rs("info")%></td>
    </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#fefefe">
        <div align="center">
          <input type="submit" name="Submit" value=" ����״̬">
        </div></td>
    </tr>
  </table>
</form>
<%
end if
rs.Close
Set rs=nothing
%>
</body>
</html>
