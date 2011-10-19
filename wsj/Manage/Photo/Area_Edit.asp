<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<%
dim aid
aid=Request.QueryString("aid")
if aid="" then
	Response.Write "<script language='javascript'>alert('参数错误 !');document.location.href('area_Manage.asp');</script>"
	Response.End()
end if

SQL="Select * from area where aid="&Request.QueryString("aid")
set rs=server.createobject("Adodb.Recordset")
rs.open SQL,conn,1,3
areaname=Trim(rs("areaname"))

if Request.QueryString("Action")="edit" then
	dim areaname
	areaname=Trim(Request.Form("areaname"))
	if areaname="" then
		Response.Write "<script language='javascript'>alert('分类名称不能为空!');history.go(-1);</script>"
		Response.End()
	end if
	rs("areaname")=areaname
	rs.Update
	areaname=Trim(rs("areaname"))
	Response.Write "<script language='javascript'>alert('分类修改成功 !');document.location.href('area_Manage.asp');</script>"
	Response.End()
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="images/admin_STYLE.css" rel="stylesheet" type="text/css" />
<link href="../Images/default.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="?Action=edit&aid=<%=aid%>">
  <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
    <tr>
      <td height="24" colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="82" height="24" align="center" valign="middle" background="Images/t_1.gif" class="AddGoods"><a href="#">添加分类</a></td>
            <td width="1" align="center" valign="middle"></td>
            <td width="88" height="24" align="center" valign="bottom" class="AddGoods"><table width="88" height="22" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle" background="Images/t_2.gif"><a href="area_Manage.asp" class="AddGoods">管理分类</a></td>
                </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td height="5" colspan="2" background="Images/topnav.gif"></td>
    </tr>
    <tr>
      <td height="5" colspan="2"></td>
    </tr>
    <tr>
      <td width="18%" height="25" align="right" valign="middle" bgcolor="#efefef">分类名称：</td>
      <td width="82%" height="25" align="left" valign="middle">&nbsp;
      <input name="areaname" type="text" id="areaname" value="<%=areaname%>" size="15" maxlength="15" />
      * 分类名称不能超过15个字 </td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" bgcolor="#efefef">&nbsp;</td>
      <td height="25" align="left" valign="middle">&nbsp;
      <input type="submit" name="Submit" value="修 改" />
      <span class="C_Title">带
      * 的项目为必填内容</span> </td>
    </tr>
  </table>
</form>
<%
rs.Close
Set rs=Nothing
%>
</body>
</html>

