<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="images/admin_STYLE.css" rel="stylesheet" type="text/css" />
<link href="../Images/default.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
    <tr>
      <td height="24" colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="88" height="24" align="center" valign="bottom" class="AddGoods"><table width="88" height="22" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle" background="Images/t_2.gif"><a href="#" class="AddGoods">管理分类</a></td>
                </tr>
              </table>
              <a href="#"></a></td>
            <td width="1" align="center" valign="middle"></td>
            <td width="82" height="24" align="center" valign="middle" background="Images/t_1.gif" class="AddGoods"><a href="area_Add.asp">添加分类</a></td>
            <td>&nbsp;</td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td height="5" colspan="3" background="Images/topnav.gif"></td>
    </tr>
    <tr>
      <td height="5" colspan="3"></td>
    </tr>
    <tr>
      <td width="21%" height="25" align="center" valign="middle" bgcolor="#efefef">系统编号</td>
      <td width="33%" align="center" valign="middle" bgcolor="#efefef">分类名称</td>
      <td width="46%" height="25" align="center" valign="middle" bgcolor="#efefef">相关操作</td>
    </tr>
<%
SQL="Select * from area where pid=0 order by aid"
set rs=server.createobject("Adodb.Recordset")
set rs2=server.createobject("Adodb.Recordset")
rs.open SQL,conn,1,1
do while not rs.eof
%>
    <tr bgcolor="#efefef">
      <td height="25" align="center" valign="middle"><%=Trim(rs("aid"))%></td>
      <td align="center" valign="middle"><%=Trim(rs("areaname"))%>&nbsp;	  </td>
      <td height="25" align="center" valign="middle"><a href="area_Edit.asp?aid=<%=Trim(rs("aid"))%>">修改</a> | <a href="area_Del.asp?aid=<%=Trim(rs("aid"))%>"  ONCLICK="javascript:return confirm('提示：您真的要删除该主分类吗？\n\n删除后所有所属该分类的次级分类都将被删除\n所属该分类的图片需要重新指定！')">删除</a></td>
    </tr>
<%
rs.MoveNext
loop
rs.Close
Set rs=Nothing
%>
    
    <tr>
      <td height="25" align="center" valign="middle">&nbsp;</td>
      <td align="center" valign="middle">&nbsp;</td>
      <td height="25" align="center" valign="middle">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>

