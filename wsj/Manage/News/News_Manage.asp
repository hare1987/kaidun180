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
        <td width="19%">　<span class="bt2">管理所有新闻</span></td>
        <td width="81%" align="center">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="49%" align="center" valign="middle" bgcolor="#efefef" class="font1">标题</td>
    <td width="18%" align="center" valign="middle" bgcolor="#efefef" class="font1">发布时间</td>
    <td width="16%" align="center" valign="middle" bgcolor="#efefef" class="font1">发布人</td>
    <td width="17%" height="25" align="center" valign="middle" bgcolor="#efefef" class="font1">相关操作</td>
  </tr>
<%
sql = "select * from news order by id desc"
Set rs=Server.Createobject("ADODB.RECORDSET")
rs.Open sql, conn, 1, 1
if not rs.eof then
pages = 10 '定义每页显示的记录数
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
    <td align="center" valign="middle" bgcolor="#efefef" class="link2"><%=rs("AddTime")%></td>
    <td align="center" valign="middle" bgcolor="#efefef" class="link2"><%=rs("writer")%></td>
    <td height="25" align="left" valign="middle" bgcolor="#efefef" class="link2"><a href="News_Edit.asp?id=<%=rs("id")%>">修改</a> | <a href="News_Del.asp?id=<%=rs("id")%>">删除</a> | 
	<%if rs("tj")=0 then%>
	<a href="News_Tj.asp?id=<%=rs("id")%>">推荐</a>
	<%else%>
	<a href="News_Tj.asp?id=<%=rs("id")%>" style="color:#FF0000">取消推荐</a>
	<%end if%></td>
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
%>
</td>
  </tr>
</table>
<form name="form1" method="post" action="News_Mu.asp">
  <select name="type_id">
    <option value="error" selected>--请选择栏目查看--</option>
    <%

'''''''''''读取分类函数''''''''  mi 是分类的编号！

Private Function getlist(mi,k)
Dim rs0
Set rs0 = Conn.Execute("select * from News_type where PID='"&mi&"'")
Do While Not rs0.EOF
getlist = getlist & "<option value='" & rs0(0) & "' >" & tmp(k) & " " & rs0(2) &"</option>"
getlist = getlist & getlist(rs0(0),k+1)
rs0.MoveNext
loop
rs0.close
set rs0 = nothing
End Function

Private Function tmp(n)
Dim i
For i = 0 To n
tmp = tmp & "---"
Next
End Function
%>
    <%
'''''''''''打开数据库''''''''''

Set Rs = Conn.Execute("select * from News_Type where PID='0'")
Do While Not Rs.EOF
Response.Write "<option value='" & Rs(0) & "'>" & Rs(2) & "</option>"
Response.Write getlist(Rs(0),0)
Rs.MoveNext
loop
Rs.Close

'''''''''''关闭数据库''''''''''
%>
  </select>
  
   <input type="submit" name="Submit" value="列表">
</form>
</body>
</html>
