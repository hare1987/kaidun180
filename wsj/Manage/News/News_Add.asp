<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../Images/font.css" rel="stylesheet" type="text/css">
</head>

<body>
<%
if Request("Action")=1 then
	if Trim(Request("title"))="" or Trim(Request("type_id"))="" or Trim(Request("info"))="" then
				Response.write "<script language='javascript'>alert('信息填写不完整：\n标题、栏目、内容必须填写！');history.go(-1);</script>"
		Response.End()
	end if
	SQL="Select * from News"
	set rs=server.createobject("adodb.recordset")
	rs.open SQL,conn,1,3
	rs.AddNew
	rs("title")=Trim(Request("title"))
	rs("type_id")=Trim(Request("type_id"))
	rs("writer")=Trim(Request("writer"))
	rs("info")=Trim(Request("info"))
	rs("tc")=Request.Form("tc")
	rs("img")=	Request.Form("img")

	rs.Update
	rs.Close
	Set rs=nothing
	Response.Write "<script language='javascript'>alert('新闻添加成功!');document.location.href('News_Manage.asp');</script>"
	Response.End()
else
%>
<form id="form1" name="form1" method="post" action="?Action=1">
  <table width="100%" border="0">
    <tr>
      <td height="25" colspan="2" bgcolor="#3385D1" class="font2 STYLE1">　<span class="bt2">添加新闻</span></td>
    </tr>
    <tr>
      <td bgcolor="#efefef"><div align="right" class="font1">标题：</div></td>
      <td height="25" bgcolor="#efefef"><input name="title" type="text" id="title" size="50" maxlength="50">
        &nbsp;&nbsp;&nbsp;&nbsp;
        标题颜色
          <select name="tc" id="tc">
            <option value="default" selected="selected">默认</option>
            <option value="red" style="color:red">红色</option>
            <option value="blue" style="color:blue">蓝色</option>
            <option value="green" style="color:green">绿色</option>
        </select>        </td>
    </tr>
    <tr>
      <td width="9%" bgcolor="#efefef"><div align="right" class="font1">栏目：</div></td>
      <td width="91%" height="25" bgcolor="#efefef"><select name="type_id">
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
      </select></td>
    </tr>
    <tr>
      <td bgcolor="#efefef"><div align="right" class="font1">编辑：</div></td>
      <td height="25" bgcolor="#efefef"><input name="writer0" type="text" disabled="disabled" id="writer0" value="<%=Session("Admin")%>" size="10" maxlength="20"> 　
        <input name="writer" type="hidden" id="writer" value="<%=Session("Admin")%>"></td>
    </tr>
    <tr>
      <td bgcolor="#efefef"><div align="right" class="font1">内容：</div></td>
      <td height="350" bgcolor="#efefef"><iframe id="eWebEditor1" src="../webedit/ewebeditor.asp?id=info&style=s_blue" frameborder="0" scrolling="no" width="100%" height="350"></iframe></td>
    </tr>
    
    <tr>
      <td bgcolor="#efefef"><div align="right"></div></td>
      <td height="25" bgcolor="#efefef"><input type="submit" name="Submit" value=" 提 交 " /> <span style="visibility:hidden;">
      <textarea name="info" rows="1" id="info">
</textarea>
      </span></td>
    </tr>
  </table>
</form>
<%end if%>
</body>
</html>
