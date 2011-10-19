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
    <td height="25" colspan="3" bgcolor="#3385D1" class="font2 STYLE1"><table width="100%" border="0" cellpadding="0" cellspacing="０">
      <tr>
        <td width="19%">　<span class="bt2">管理公告</span></td>
        <td width="81%" align="center"><a href="G_Add.asp" class="bt2">添加公告</a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center" valign="middle" bgcolor="#efefef" class="font1">公告标题</td>
    <td align="center" valign="middle" bgcolor="#efefef" class="font1">发布时间</td>
    <td width="12%" height="25" align="center" valign="middle" bgcolor="#efefef" class="font1">相关操作</td>
  </tr>
<%
sql = "select * from gg Order by addtime desc"
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
   <td align="left" valign="middle" bgcolor="#efefef" class="link2"><%=rs("title")%></td>
    <td align="left" valign="middle" bgcolor="#efefef" class="link2"><div align="center"><%=rs("addtime")%></div></td>
    <td height="25" align="center" valign="middle" bgcolor="#efefef" class="link2"><a href="g_Edit.asp?id=<%=rs("id")%>">修改</a> | <a href="g_Del.asp?id=<%=rs("id")%>">删除</a></td>
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
    <td height="25" colspan="3" align="right" bgcolor="#efefef">
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
