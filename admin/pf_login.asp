<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_safe.asp"-->
<!--#include file="pf_md5.asp"-->
<%
If request.Form("submit") = "管理登录" Then
    If request.Form("pf_admin_name") = "" Then
        Call infoback("用户名不能为空！")
    End If
    If request.Form("pf_admin_password") = "" Then
        Call infoback("密码不能为空！")
    End If
    If request.Form("pf_admin_verifycode") = "" Then
        Call infoback("验证码不能为空！")
    End If
    If CStr(Session("CheckCode"))<>CStr(Request.Form("pf_admin_verifycode")) Then
        Call infoback("验证码错误！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_admin where pf_admin_name='"&request.Form("pf_admin_name")&"' and pf_admin_password='"&md5(request.Form("pf_admin_password"))&"'"
    rs.Open sql, conn, 1, 1
    If Not rs.EOF Then
        session("pf_admin_name") = request.Form("pf_admin_name")
		session("pf_admin_jb") = rs("pf_admin_jb")
		
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "成功登录"
		rsop.update
		rsop.close
		set rsop = nothing
		
        response.redirect "pf_welcome.asp"
    Else
		Call close_rs
		Call close_conn
        Call infoback("用户名或密码错误！")
    End If
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校欢迎您!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:url(images/loginbg.jpg) no-repeat top center;">

	<div id="login">
		<h1>管理员登录</h1>
			<table>
			<form method="post" action="pf_login.asp" id="login">
				<tr>
					<td width="60" align="center">用户名</td>
					<td>
						<input name="pf_admin_name" type="text" size="25" />
					</td>
				</tr>
				<tr>
					<td align="center">密　码</td>
					<td>
						<input name="pf_admin_password" type="password" size="25" />
					</td>
				</tr>
				<tr>
					<td align="center">验证码</td>
					<td>
						<input name="pf_admin_verifycode" type="text" size="4" maxlength="4" />
						<img src="pf_verifycode.asp" onclick="javascript:this.src='pf_verifycode.asp?tm='+Math.random()" style="cursor:pointer" alt="点击更换" title="点击更换" /></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" name="submit" class="submit_button" value="管理登录" />
					</td>
				</tr>
			</form>
		</table>
	</div>

</body>
</html>
