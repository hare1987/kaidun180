<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<!--#include file="pf_md5.asp"-->
<%
If request.Form("submit") = "�޸�����" Then
	If request.Form("pf_admin_password") = "" Then
        Call infoback("���벻��Ϊ�գ�")
    End If
    If request.Form("pf_admin_password") <> request.Form("pf_admin_password_again") Then
        Call infoback("��������������벻һ�£����������룡")
    End If
    Set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_admin where pf_admin_name = '"&session("pf_admin_name")&"'"
    rs.Open sql, conn, 1, 3
    rs("pf_admin_password") = md5(request.Form("pf_admin_password"))
    rs("pf_admin_true_name") = request.Form("pf_admin_true_name")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�����������޸�"
 		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("�޸ĳɹ������μ����������룡", "pf_welcome.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ٶ�ͯ����ѧУ</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>�޸�����</h1>
			
		</div>
		<div class="right_body">
			<table>
				<form method="post">
					<%
		set rs = server.CreateObject("adodb.recordset")
		sql = "select * from pf_admin where pf_admin_name = '"&session("pf_admin_name")&"'"
		rs.open sql,conn,1,1
		%>
					<tr>
						<td width="80" align="center">�û�����</td>
						<td><%=session("pf_admin_name")%></td>
					</tr>
					<tr>
						<td align="center">��ʵ������</td>
						<td>
							<input name="pf_admin_true_name" type="text" size="40" maxlength="60" value="<%=rs("pf_admin_true_name")%>" />
						</td>
					</tr>
					<tr>
						<td align="center">���룺</td>
						<td>
							<input name="pf_admin_password" type="password" size="40" maxlength="16" />
						</td>
					</tr>
					<tr>
						<td align="center">ȷ�����룺</td>
						<td>
							<input name="pf_admin_password_again" type="password" size="40" maxlength="16" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="submit" type="submit" class="submit_button" value="�޸�����" />
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
