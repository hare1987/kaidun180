<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "确认添加" Then
    If request.Form("pf_link_name") = "" Then
        Call infoback("链接名称不能为空！")
    End If
    If request.Form("pf_link_url") = "" Then
        Call infoback("链接地址不能为空！")
    End If
    If request.Form("pf_link_order") = "" Or Not IsNumeric(request.Form("pf_link_order")) Then
        Call infoback("排序数字不能为空！而且必须为数字！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_link"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("pf_link_name") = request.Form("pf_link_name")
    If request.Form("pf_uploadfile") = "" Then
        rs("pf_uploadfile") = "text"
    Else
        rs("pf_uploadfile") = request.Form("pf_uploadfile")
    End If
    rs("pf_link_url") = request.Form("pf_link_url")
    rs("pf_link_order") = request.Form("pf_link_order")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "添加友情链接:"& request.Form("pf_link_name")
		rsop.update
		rsop.close
		set rsop = nothing
		
    Call close_conn
    Call infohref("链接添加成功！", "pf_link.asp")
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
	<!--'#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>修改图片友情链接</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">链接名称</th>
					<th>链接地址</th>
					<th width="40">排序</th>
					<th width="100">Logo</th>
					<th width="120">修改操作</th>
				</tr>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_link where pf_uploadfile <> 'text' order by pf_link_order asc"
rs.Open sql, conn, 1, 1
Do While Not rs.EOF

%>
				<tr align="center">
					<td><%=rs("pf_link_name")%></td>
					<td><%=rs("pf_link_url")%></td>
					<td><%=rs("pf_link_order")%></td>
					<td><img src="../<%=rs("pf_uploadfile")%>" width="80" height="20" /></td>
					<td>[<a href="pf_link_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_link_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_link_name")%>" onclick="return confirm('确定要删除此链接吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
				<%
rs.movenext
Loop
Call close_rs

%>
			</table>
		</div>
		<div class="right_title">
			<h1>修改文字友情链接</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">链接名称</th>
					<th>链接地址</th>
					<th width="40">排序</th>
					<th width="120">修改操作</th>
				</tr>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_link where pf_uploadfile = 'text' order by pf_link_order asc"
rs.Open sql, conn, 1, 1
Do While Not rs.EOF

%>
				<tr align="center">
					<td><%=rs("pf_link_name")%></td>
					<td><%=rs("pf_link_url")%></td>
					<td><%=rs("pf_link_order")%></td>
					<td>[<a href="pf_link_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_link_delete.asp?id=<%=rs("ID")%>" onclick="return confirm('确定要删除此链接吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
				<%
rs.movenext
Loop
Call close_rs
Call close_conn

%>
			</table>
		</div>
		<div class="right_title">
			<h1>添加友情链接</h1>
			
		</div>
		<div class="right_body">
			<table>
				<form name="pcfinal" method="post">
					<tr>
						<td width="80" align="center">链接名称：</td>
						<td>
							<input type="text" name="pf_link_name" size="60" />
							<span class="red">必填</span> </td>
					</tr>
					<tr>
						<td rowspan="2" align="center">网站logo：</td>
					  <td>
							<input type="text" name="pf_uploadfile" size="40" />
						  <span class="red">请输入Logo图片地址，或直接上传，如需添加文字链接则该处填写'text'。Logo尺寸上传尺寸大小:143*37px</span></td>
					</tr>
					<tr>
						<td>
							<iframe src="pf_upload.asp" width="600" height="25" scrolling="auto" frameborder="0"></iframe>
						</td>
					</tr>
					<tr>
						<td align="center">链接地址：</td>
						<td>
							<input type="text" name="pf_link_url" size="70" />
							<span class="red">必填</span> </td>
					</tr>
					<tr>
						<td align="center">排序数字：</td>
						<td>
							<input type="text" name="pf_link_order" size="8" />
							<span class="red">必填且必须为数字！</span> </td>
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
