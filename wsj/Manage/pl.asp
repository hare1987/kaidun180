<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
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
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE3 {color: #0063dc}
.STYLE4 {color: #666666; font-size: 12px; }
.STYLE13 {color: #CCCCCC}
.STYLE19 {color: #97C6FF}
.STYLE20 {color: #999999}
.STYLE22 {font-family: Arial, Helvetica, sans-serif}
.STYLE24 {
	font-family: "黑体";
	font-size: 18px;
}
.STYLE25 {color: #666666}
.STYLE33 {color: #525252}
-->
</style>
<link href="images/admin_STYLE.css" rel="stylesheet" type="text/css" />
</head>

<body style="overflow-x:hidden">
<table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" align="left" valign="middle" class="STYLE24">管理评论</td>
  </tr>
</table>
<table width="98%" height="105" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF" >
<%
Set rs=server.CreateObject("Adodb.Recordset")
sql="Select * from pl order by id desc"
rs.Open sql,conn,1,1
do while not rs.eof 
%>  
<tr>
    <td width="142" height="70" align="center" valign="middle" bgcolor="#efefef"><img src="../<%=rs("t")%>" /></td>
    <td width="326" valign="top" bgcolor="#efefef"><span><%=rs("nick")%>：<br />
        <br />
        <span>
        <%
		Response.Write (showstring(rs("info")))
		%>
        </span> <br />
    <span >QQ/MSN：<%=rs("qq")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;评论时间：<%=rs("addtime")%></span></span></span></td>
    <td width="298" align="center" valign="middle" bgcolor="#efefef">
	<%if rs("sh")=0 then%>
	<a href="pl_sh.asp?id=<%=rs("id")%>">审核</a>
	<%else%>
	<a href="pl_sh.asp?id=<%=rs("id")%>" style="color:#000000">已审核</a>
	<%end if%>
	 | <a href="pl_del.asp?id=<%=rs("id")%>">删除</a></td>
  </tr>
<%
rs.MoveNext
Loop
rs.Close
Set rs=Nothing
%>
</table>
</body>
</html>
