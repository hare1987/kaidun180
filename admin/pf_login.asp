<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_safe.asp"-->
<!--#include file="pf_md5.asp"-->
<%
If request.Form("submit") = "�����¼" Then
    If request.Form("pf_admin_name") = "" Then
        Call infoback("�û�������Ϊ�գ�")
    End If
    If request.Form("pf_admin_password") = "" Then
        Call infoback("���벻��Ϊ�գ�")
    End If
    If request.Form("pf_admin_verifycode") = "" Then
        Call infoback("��֤�벻��Ϊ�գ�")
    End If
    If CStr(Session("CheckCode"))<>CStr(Request.Form("pf_admin_verifycode")) Then
        Call infoback("��֤�����")
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
		rsop("pf_op_sources") = "�ɹ���¼"
		rsop.update
		rsop.close
		set rsop = nothing
		
        response.redirect "pf_welcome.asp"
    Else
		Call close_rs
		Call close_conn
        Call infoback("�û������������")
    End If
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ٶ�ͯ����ѧУ��ӭ��!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:url(images/loginbg.jpg) no-repeat top center;">

	<div id="login">
		<h1>����Ա��¼</h1>
			<table>
			<form method="post" action="pf_login.asp" id="login">
				<tr>
					<td width="60" align="center">�û���</td>
					<td>
						<input name="pf_admin_name" type="text" size="25" />
					</td>
				</tr>
				<tr>
					<td align="center">�ܡ���</td>
					<td>
						<input name="pf_admin_password" type="password" size="25" />
					</td>
				</tr>
				<tr>
					<td align="center">��֤��</td>
					<td>
						<input name="pf_admin_verifycode" type="text" size="4" maxlength="4" />
						<img src="pf_verifycode.asp" onclick="javascript:this.src='pf_verifycode.asp?tm='+Math.random()" style="cursor:pointer" alt="�������" title="�������" /></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" name="submit" class="submit_button" value="�����¼" />
					</td>
				</tr>
			</form>
		</table>
	</div>

</body>
</html>
