<!-- #include file="Inc/Conn.asp" -->
<%
function showstring(fString)
	if not isnull(fString) then
		fString = replace(fString, ">", "&gt;")
		fString = replace(fString, "<", "&lt;")
		fString = replace(fString, chr(13), "")
		fString = replace(fString, chr(10), "<br />")
		fString = replace(fString, chr(34), "&quot;")
		fString = replace(fString, chr(39), "&#39;")
		fString = replace(fString, "script", "&#115cript")
		showstring = fString
	end if
end function

id=Request.QueryString("id")
if id="" or not isnumeric(id) then
	Response.Write ("<script>alert('参数非法！');history.back();</script>")
	Response.End()
end if

SQL="Select * from Photo where ok=1 and id="&id
Set rs=server.createobject("adodb.recordset")
rs.open SQL,conn,1,3
if rs.eof then
	Response.Write ("<script>alert('没有找到指定的信息！');history.back();</script>")
	Response.End()
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>奇妙万圣夜</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #000000;
}
body,td,th {
	font-size: 12px;
}
.STYLE40 {color: #FF0000}
.style41 {color: #FFFFFF}
.style42 {
	color: #FF6600;
	font-weight: bold;
}
-->
</style></head>

<body>
<div align="center">
  <table width="1003" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="381" background="images/top.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="66" background="images/center.jpg"><img src="images/menu.jpg" width="1003" height="96" border="0" usemap="#Map2"></td>
    </tr>
    <tr>
      <td height="14"><img src="images/topline.jpg" width="1003" height="100"></td>
    </tr>
    <tr>
      <td height="229" valign="top" background="images/leftline.jpg"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><div align="right"><span class="style42"><a href="sc.asp"><font color="#FF6600">我要报名&gt;&gt;&gt;</font></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            </div>
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="30" colspan="4" align="center" valign="middle"><strong><font color="#FFFFFF"><%=rs("name")%></font></strong></td>
            </tr>
            <tr>
              <td colspan="4" align="center" valign="middle"><table width="50" height="50" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="22" background="images/tlb.gif">&nbsp;</td>
                    <td><img src="Manage/UpLoad/upLoadImages/<%=rs("url")%>" border="0" /></td>
                    <td width="21" background="images/trb.gif">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
            <tr >
              <td align="right" valign="middle">&nbsp;</td>
              <td align="left" valign="middle">&nbsp;</td>
              <td align="left" valign="middle">&nbsp;</td>
              <td height="25" align="left" valign="middle">&nbsp;</td>
            </tr>
            <tr>
              <td width="204" align="right" valign="middle"><span class="style41">宝宝姓名：</span></td>
              <td width="330" align="left" valign="middle">&nbsp;&nbsp;<font color="#FFFFFF"><%=rs("name")%></font></td>
              <td width="84" align="left" valign="middle"><span class="style41">宝宝性别：</span></td>
              <td width="277" height="25" align="left" valign="middle">&nbsp;&nbsp;<font color="#FFFFFF"><%=rs("user")%></font></td>
            </tr>
            <tr >
              <td align="right" valign="middle"><span class="style41">宝宝年龄：</span></td>
              <td align="left" valign="middle">&nbsp;&nbsp;<font color="#FFFFFF"><%=rs("school")%></font></td>
              <td align="left" valign="middle"><span class="style41">出生日期：</span></td>
              <td height="25" align="left" valign="middle">&nbsp;&nbsp;<font color="#FFFFFF"><%=rs("tea")%></font></td>
            </tr>
            <tr >
              <td height="25" align="right" valign="middle"><span class="style41">个人简介：</span></td>
              <td colspan="3" align="left">&nbsp;&nbsp;<font color="#FFFFFF"><%=rs("info")%></font></td>
            </tr>
            <tr >
              <td align="right" valign="middle"><span class="style41">得 票 数：</span></td>
              <td align="left" valign="middle">&nbsp;&nbsp;<font color="#FFFFFF"><%=rs("hit")%></font></td>
              <td align="left" valign="middle">&nbsp;</td>
              <td height="25" align="left" valign="middle">&nbsp;</td>
            </tr>
            <tr>
              <td height="25" colspan="4" align="center" valign="middle"><a href="Vote.asp?id=<%=rs("id")%>"><img src="images/1.gif" width="52" height="18" border="0" /></a></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="18"><img src="images/bottomline.jpg" width="1003" height="100"></td>
    </tr>
  </table>
</div>
<map name="Map">
  <area shape="circle" coords="857,136,57" href="rqbb.asp">
</map>
<map name="Map2">
  <area shape="rect" coords="708,3,962,89" href="pgcj.asp">
  <area shape="rect" coords="375,3,647,91" href="rqbb.asp">
  <area shape="rect" coords="50,7,311,92" href="index.asp">
</map>
</body>
</html>
