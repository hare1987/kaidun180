<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
if Request.Form("submit") = "确认添加" Then
	if Request.Form("pf_recruitment_name") = "" Then
	Call infoback("职位名称不能为空")
	End If
	Set rs = Server.CreateObject("ADODB.Recordset")
	sql = "select * from pf_recruitment"
	rs.open sql,conn,1,3
	rs.addnew
	rs("pf_recruitment_name") = Request.Form("pf_recruitment_name")
	rs("pf_recruitment_age") = Request.Form("pf_recruitment_age")
	rs("pf_recruitment_gender") = Request.Form("pf_recruitment_gender")
	rs("pf_recruitment_education") = Request.Form("pf_recruitment_education")
	rs("pf_recruitment_number") = Request.Form("pf_recruitment_number")
	rs("pf_recruitment_content") = Request.Form("content2")
	rs("pf_recruitment_area")=request.Form("pf_recruitment_area")
	rs("pf_recruitment_link")=request.Form("pf_recruitment_link")
	rs("pf_recruitment_date") = now()
	rs.update
	Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "添加职位:" & request.Form("pf_recruitment_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
	Call close_conn
	Call infohref("招聘信息添加成功！","pf_recruitment.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校欢迎您!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>修改招聘信息</h1>
			
		</div>
		<div class="right_body">
			<table class="table">
				<tr>
					<th>职位名称</th>
					<th width="80">年龄要求</th>
					<th width="100">性别要求</th>
					<th width="100">学历要求</th>
					<th width="60">招聘人数</th>
					<th width="80">发布日期</th>
					<th width="120">修改操作</th>
				</tr>
				<%
  set rs = CreateObject("ADODB.Recordset")
  sql = "select * from pf_recruitment order by ID desc"
  rs.open sql,conn,1,1
  Do While not rs.eof
  %>
				<tr align="center">
					<td><%=rs("pf_recruitment_name")%></td>
					<td><%=rs("pf_recruitment_age")%></td>
					<td><%=rs("pf_recruitment_gender")%></td>
					<td><%=rs("pf_recruitment_education")%></td>
					<td><%=rs("pf_recruitment_number")%></td>
					<td><%=formatdatetime(rs("pf_recruitment_date"),2)%></td>
					<td>[<a href="pf_recruitment_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_recruitment_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_recruitment_name")%>"onclick="return confirm('确定要删除吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
				<%
  rs.movenext
  Loop
  %>
			</table>
		</div>
		<div class="right_title">
			<h1>添加招聘信息</h1>
			
		</div>
		<div class="right_body">
			<table>
				<form method="post">
					<tr>
						<td width="80" align="center">职位名称：</td>
						<td>
							<input name="pf_recruitment_name" type="text" size="40" />
							<span class="red">必填</span> </td>
					</tr>
					<tr>
					  <td align="center">职位连接：</td>
					  <td><input name="pf_recruitment_link" type="text" id="pf_recruitment_link" size="40" /></td>
				  </tr>
					<tr>
					  <td align="center">所在校区：</td>
					  <td><select name="pf_recruitment_area" id="pf_recruitment_area">
                        <option>总部</option>
                        <option>田林校区</option>
                        <option>书城校区</option>
                        <option>浦东校区</option>
                        <option>莘庄校区</option>
                        <option>虹口校区</option>
                        <option>长宁校区</option>
                                                                                        </select></td>
					</tr>
					<tr>
						<td align="center">年龄要求：</td>
						<td>
							<input name="pf_recruitment_age" type="text" size="20" />						</td>
					</tr>
					<tr>
						<td align="center">性别要求：</td>
						<td>
							<select name="pf_recruitment_gender">
								<option>不限</option>
								<option>男</option>
								<option>女</option>
							</select>						</td>
					</tr>
					<tr>
						<td align="center">学历要求：</td>
						<td>
							<select name="pf_recruitment_education">
								<option>不限</option>
								<option>初中</option>
								<option>高中</option>
								<option>中专</option>
								<option>大专</option>
								<option>本科</option>
								<option>研究生</option>
							</select>						</td>
					</tr>
					<tr>
						<td align="center">招聘人数：</td>
						<td>
							<input name="pf_recruitment_number" type="text" size="10" />						</td>
					</tr>
					<tr>
						<td align="center">职责要求： </td>
						<td>
                         <textarea name="content2" style="display:none"></textarea>
					  <iframe ID="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&style=standard" frameborder="0" scrolling="no" width="700" HEIGHT="350"></iframe>						</td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<input type="submit" name="submit" class="submit_button"value="确认添加" />						</td>
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
