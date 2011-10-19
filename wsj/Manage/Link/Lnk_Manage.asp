<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../Images/font.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" border="0">
  <tr>
    <td height="25" colspan="4" bgcolor="#3385D1" class="font2 STYLE1"><table width="100%" border="0" cellpadding="0" cellspacing="０">
      <tr>
        <td width="19%">　<span class="bt2">管理友情链接</span></td>
        <td width="81%" align="center"><a href="Lnk_Add.asp">添加友情链接</a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="25%" align="center" valign="middle" bgcolor="#efefef" class="font1">站点名称</td>
    <td width="31%" align="center" valign="middle" bgcolor="#efefef" class="font1">站点Logo</td>
    <td width="32%" align="center" valign="middle" bgcolor="#efefef" class="font1">站点地址</td>
    <td width="12%" height="25" align="center" valign="middle" bgcolor="#efefef" class="font1">相关操作</td>
  </tr>
<%
sql = "select * from link Order by id desc"
Set rs=Server.Createobject("ADODB.RECORDSET")
rs.Open sql, conn, 1, 1
if not rs.eof then
pages = 6 '定义每页显示的记录数
rs.pageSize = pages '定义每页显示的记录数
allPages = rs.pageCount'计算一共能分多少页
page = Request.QueryString("page")'通过浏览器传递的页数
'if语句属于基本的排错处理
if isEmpty(page) or Cint(page) < 1 then
page = 1
elseif Cint(page) > allPages then
page = allPages 
end if
rs.AbsolutePage = page
Do while not rs.eof and pages > 0 %> 
 <tr>
    <td align="left" valign="middle" bgcolor="#efefef" class="link2"><div align="left"><%=rs("name")%></div></td>
    <td align="center" valign="middle" bgcolor="#efefef" class="link2"><div align="center">
	<%if rs("logo")<>"" then%>
	<img src="<%=rs("logo")%>" width="120" height="50">
	<%end if%></div></td>
    <td align="center" valign="middle" bgcolor="#efefef" class="link2"><div align="left"><a href=<%=rs("url")%> target=_blank><%=rs("url")%></a></div></td>
    <td height="25" align="center" valign="middle" bgcolor="#efefef" class="link2"><a href="Lnk_Edit.asp?id=<%=rs("id")%>">修改</a> | <a href="Lnk_Del.asp?id=<%=rs("id")%>">删除</a></td>
  </tr>
<% pages = pages - 1
rs.MoveNext
Loop
else
Response.Write("<font color='Red'>数据库暂无内容！</font>")
End if
rs.Close
Set rs = Nothing 
%>
  <tr>
    <td height="25" colspan="4" align="right" bgcolor="#efefef">
<%
For i =1 to allpages
txt = ""
txt = txt &  "<a href=" & "?" &  "page=" & i & ">"
if i = Cint(Page) then txt = txt &  "<font color='bb0000'>"
txt = txt &  (i) 
if i = Cint(Page) then txt = txt &  "</font>"
txt = txt &  "</a> &nbsp;"
Response.Write(txt)
Next	
%></td>
  </tr>
</table>
</body>
</html>
