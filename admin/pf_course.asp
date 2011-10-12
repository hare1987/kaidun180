<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "确认添加" Then
    If request.Form("title") = "" Then
        Call infoback("课程名称不能为空！")
    End If
	If request.Form("content2") = "" Then
        Call infoback("内容不能为空！")
    End If

    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from course order by ID desc"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("title") = request.Form("title")
    rs("type") = request.Form("type")
    rs("content") = request.Form("content2")
    rs.update
    Call close_rs
	
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "添加课程:"&request.Form("title")
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("添加成功！", "pf_course.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校欢迎您!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>年度班</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">课程名称</th>
					<th>类型</th>
					<th>修改操作</th>
				</tr>
<%
sql = "select * from course where type=1 order by ID desc"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无课程！"
Else
Do While Not rs.eof
%>
				<tr align="center">
					<td><%=rs("title")%></td>
                    <td>
                    <%if  rs("type") = 1then%>年度班<%end if%>
                    <%if  rs("type") = 2then%>特色班<%end if%>
                    <%if  rs("type") = 3then%>星级考<%end if%>
                    <%if  rs("type") = 4then%>其他班<%end if%>
                    </td>
                      <td>[<a href="pf_course_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_course_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("title")%>" onclick="return confirm('确定要删除此消息吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
              
			<%
	rs.MoveNext
	Loop
	rs.Close
	Set rs = nothing
End If 
		%>
			</table>
		</div>
        <div class="right_title">
			<h1>特色班</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">课程名称</th>
					<th>类型</th>
					<th>修改操作</th>
				</tr>
<%
sql = "select * from course where type=2 order by ID desc"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无课程！"
Else
Do While Not rs.eof
%>
				<tr align="center">
					<td><%=rs("title")%></td>
                    <td>
                    <%if  rs("type") = 1then%>年度班<%end if%>
                    <%if  rs("type") = 2then%>特色班<%end if%>
                    <%if  rs("type") = 3then%>星级考<%end if%>
                    <%if  rs("type") = 4then%>其他班<%end if%>
                    </td>
                      <td>[<a href="pf_course_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_course_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("title")%>" onclick="return confirm('确定要删除此消息吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
              
			<%
	rs.MoveNext
	Loop
	rs.Close
	Set rs = nothing
End If 
		%>
			</table>
		</div>
        <div class="right_title">
			<h1>星级考</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">课程名称</th>
					<th>类型</th>
					<th>修改操作</th>
				</tr>
<%
sql = "select * from course where type=3 order by ID desc"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无课程！"
Else
Do While Not rs.eof
%>
				<tr align="center">
					<td><%=rs("title")%></td>
                    <td>
                    <%if  rs("type") = 1then%>年度班<%end if%>
                    <%if  rs("type") = 2then%>特色班<%end if%>
                    <%if  rs("type") = 3then%>星级考<%end if%>
                    <%if  rs("type") = 4then%>其他班<%end if%>
                    </td>
                      <td>[<a href="pf_course_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_course_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("title")%>" onclick="return confirm('确定要删除此消息吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
              
			<%
	rs.MoveNext
	Loop
	rs.Close
	Set rs = nothing
End If 
		%>
			</table>
		</div>
        <div class="right_title">
			<h1>其他班</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">课程名称</th>
					<th>类型</th>
					<th>修改操作</th>
				</tr>
<%
sql = "select * from course where type=4 order by ID desc"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无课程！"
Else
Do While Not rs.eof
%>
				<tr align="center">
					<td><%=rs("title")%></td>
                    <td>
                    <%if  rs("type") = 1then%>年度班<%end if%>
                    <%if  rs("type") = 2then%>特色班<%end if%>
                    <%if  rs("type") = 3then%>星级考<%end if%>
                    <%if  rs("type") = 4then%>其他班<%end if%>
                    </td>
                      <td>[<a href="pf_course_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_course_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("title")%>" onclick="return confirm('确定要删除此消息吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
              
			<%
	rs.MoveNext
	Loop
	rs.Close
	Set rs = nothing
End If 
		%>
			</table>
		</div>
        
        
        
		<div class="right_title">
			<h1>添加课程</h1>
		</div>
		<div class="right_body">
			<table>
				<form name="pcfinal" method="post">
					<tr>
                      <td width="9%" align="center">课程名称：</td>
                      <td width="91%"><input type="text" name="title" size="60" />
                          <span class="red">必填</span> </td>
				  </tr>
			         <tr>
						<td align="center">课程分类：</td>
						<td>
							<select name="type">
							  <option value="1" selected="selected">年度班</option>
                              <option value="2">特色班</option>
							  <option value="3">星级考</option>
							  <option value="4">其他班</option>
							</select>						</td>
					</tr>
					
					<tr>
					  <td align="center">详细内容：</td>
					  <td rowspan="2"><textarea name="content2" style="display:none"></textarea>
						<iframe ID="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&style=standard" frameborder="0" scrolling="no" width="700" HEIGHT="350"></iframe>  </td>
				  </tr>
                  <tr>
						<td align="center">&nbsp;</td>
					</tr>

					<tr>
						<td colspan="2" align="center">
							<input type="submit" name="submit" class="submit_button" value="确认添加">
						</td>
					</tr>
				</form>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
