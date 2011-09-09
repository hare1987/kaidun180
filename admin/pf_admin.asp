<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<!--#include file="pf_md5.asp"-->
<%
If request.Form("submit") = "添加管理员" Then
	Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_admin where pf_admin_name='"&request.Form("pf_admin_name")&"'"
    rs.Open sql, conn, 1, 1
    If Not rs.EOF Then
        Call close_rs
        Call close_conn
        Call infoback("已经存在此管理员！请更换用户名！")
    End If
    If request.Form("pf_admin_name") = "" Then
        Call infoback("用户名不能为空！")
    End If
    If request.Form("pf_admin_password") = "" Then
        Call infoback("密码不能为空！")
    End If
    If request.Form("pf_admin_password") <> request.Form("pf_admin_password_again") Then
        Call infoback("您两次输入的密码不一致！请重新输入！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_admin"
    rs.Open sql, conn, 1, 3
	rs.addnew
    rs("pf_admin_name") = request.Form("pf_admin_name")
	rs("pf_admin_jb") = request.Form("pf_admin_jb")	
    rs("pf_admin_password") = md5(request.Form("pf_admin_password"))
    rs("pf_admin_true_name") = request.Form("pf_admin_true_name")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		select case request.Form("pf_admin_jb")
		case 0
		pf_admin_jb = "管理员"
		case 1
		pf_admin_jb = "操作员"
		case 2
		pf_admin_jb = "观察员"
		end select
		rsop("pf_op_sources") = "添加" & pf_admin_jb & request.Form("pf_admin_name")
		rsop.update
		rsop.close
		set rsop = nothing	
	
    Call close_conn
    Call infohref("管理员添加成功！", "pf_admin.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>管理员管理</h1>
			
		</div>
		<div class="right_body">
			<table class="table">
				<tr>
					<th width="40">ID</th>
					<th width="467">用户名</th>
					<th width="288">管理级别</th>
					<th width="150">真实姓名</th>
					<th width="332">操作</th>
				</tr>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_admin order by ID asc"
rs.Open sql, conn, 1, 1
do while not rs.eof
%>
				<tr align="center">
					<td><%=rs("ID")%></td>
					<td><%=rs("pf_admin_name")%></td>
					<td>
					<%
					select case rs("pf_admin_jb")
					case 0
					%>
					管理员
					<%case 1%>
					操作员
					<%case 2%>
					观察员
					<%End Select%>
					
					</td>
					<td><%=rs("pf_admin_true_name")%></td>
					<td>
						<%
							if  session("pf_admin_name")<>"kaidun"  then
							 	if rs("pf_admin_name")="kaidun"  then
						%>
									[修改][删除]
						<%
								else
						%>
									[<a href="pf_admin_modify.asp?id=<%=rs("id")%>">修改</a>][<a href="pf_admin_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_admin_name")%>"onclick="return confirm('确定要删除此管理员吗？删除后将不可恢复！')">删除</a>]
						<%
								end if
						    else
						%>
							[<a href="pf_admin_modify.asp?id=<%=rs("id")%>">修改</a>][<a href="pf_admin_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_admin_name")%>"onclick="return confirm('确定要删除此管理员吗？删除后将不可恢复！')">删除</a>]
						<%
							END IF
						%>
							</td>
				</tr>
				<%
rs.movenext
Loop
%>
			</table>
		</div>
		<div class="right_title">
			<h1>管理员管理</h1>
		</div>
		<div class="right_body">
			<table class="table">
				<form method="post" action="pf_admin.asp">
					<tr>
						<td width="80" align="center">用户姓名：</td>
						<td>
							<input name="pf_admin_name" type="text" size="40" maxlength="60" />
						<span class="red">必填</span> </td>
					</tr>
					<tr>
						<td align="center">真实姓名：</td>
						<td>
							<input name="pf_admin_true_name" type="text" size="40" maxlength="60" />
						</td>
					</tr>
					<tr>
						<td align="center">密码：</td>
						<td>
							<input name="pf_admin_password" type="password" size="40" maxlength="16" />
						<span class="red">必填</span> </td>
					</tr>
					<tr>
                      <td align="center">确认密码：</td>
                      <td><input name="pf_admin_password_again" type="password" size="40" maxlength="16" />
                      </td>
				  </tr>
					<tr>
						<td align="center">管理员级别：</td>
						<td>
                          <select name="pf_admin_jb" id="pf_admin_jb">
                            <option value="0">管理员</option>
                            <option value="1">操作员</option>
                            <option value="2" selected="selected">观察员</option>
                          </select>
</td>
					</tr>
					
					<tr align="center">
						<td colspan="2">
							<input name="submit" type="submit" class="submit_button" value="添加管理员" />
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
