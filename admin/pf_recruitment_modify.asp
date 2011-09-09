<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
Call iderror
If Request.Form("submit") = "确认修改" Then
    If request.Form("pf_recruitment_name") = "" Then
        Call infoback("职位名称不能为空！")
    End If
    Set rs = Server.CreateObject("ADODB.Recordset")
    sql = "select * from pf_recruitment where id="&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("pf_recruitment_name") = request.Form("pf_recruitment_name")
    rs("pf_recruitment_age") = request.Form("pf_recruitment_age")
    rs("pf_recruitment_gender") = request.Form("pf_recruitment_gender")
    rs("pf_recruitment_education") = request.Form("pf_recruitment_education")
    rs("pf_recruitment_number") = request.Form("pf_recruitment_number")
    rs("pf_recruitment_content") = request.Form("content2")
	rs("pf_recruitment_area")=request.Form("pf_recruitment_area")
	rs("pf_recruitment_link")=request.Form("pf_recruitment_link")
    rs.update
    Call close_rs
	
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "职位:" & request.Form("pf_recruitment_name") &"要求修改"
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("招聘信息修改成功！", "pf_recruitment.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网站管理后台</title>
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
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_recruitment where id="&request.QueryString("id")&""
rs.Open sql, conn, 1, 1
If rs.EOF Then
    Call close_rs
    Call close_conn
    Call infoback("不存在此数据")
End If
%>
				<form method="post">
					<tr>
						<td width="80" align="center">职位名称：</td>
						<td>
							<input name="pf_recruitment_name" type="text" size="40" value="<%=rs("pf_recruitment_name")%>" />
							<span class="red">必填</span> </td>
					</tr>
					<tr>
					  <td align="center">职位连接：</td>
					  <td><input name="pf_recruitment_link" type="text" id="pf_recruitment_link" value="<%=rs("pf_recruitment_link")%>" size="40" /></td>
				  </tr>
					<tr>
					  <td align="center">所在校区：</td>
					  <td><select name="pf_recruitment_area" id="pf_recruitment_area">
                          <option value="<%=rs("pf_recruitment_gender")%>">不修改</option>
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
							<input name="pf_recruitment_age" type="text" size="20" value="<%=rs("pf_recruitment_age")%>" />						</td>
					</tr>
					<tr>
						<td align="center">性别要求：</td>
						<td>
							<select name="pf_recruitment_gender">
								<option value="<%=rs("pf_recruitment_gender")%>">不修改</option>
								<option>不限</option>
								<option>男</option>
								<option>女</option>
							</select>						</td>
					</tr>
					<tr>
						<td align="center">学历要求：</td>
						<td>
							<select name="pf_recruitment_education">
								<option value="<%=rs("pf_recruitment_education")%>">不修改</option>
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
							<input name="pf_recruitment_number" type="text" size="10" value="<%=rs("pf_recruitment_number")%>" />						</td>
					</tr>
					<tr>
						<td align="center"></td>
						<td>
							<textarea name="content2" style="display:none"><%=rs("pf_recruitment_content")%></textarea>
					  <iframe ID="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&style=standard" frameborder="0" scrolling="no" width="700" HEIGHT="350"></iframe>						</td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<input type="submit" name="submit" class="submit_button" value="确认修改" />						</td>
					</tr>
				</form>
				<%
Call close_rs
Call close_conn
%>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
