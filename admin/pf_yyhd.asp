<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "ȷ�����" Then
    If request.Form("pf_link_name") = "" Then
        Call infoback("ԤԼ�����Ϊ�գ�")
    End If
    'If request.Form("pf_link_text") = "" Then
        'Call infoback("��Ҫ˵������Ϊ�գ�")
    'End If
	'If request.Form("content2") = "" Then
        'Call infoback("���ݲ���Ϊ�գ�")
    'End If
    'If request.Form("pf_link_url") = "" Then
        'Call infoback("���ӵ�ַ����Ϊ�գ�")
    'End If
    'If request.Form("pf_link_order") = "" Or Not IsNumeric(request.Form("pf_link_order")) Then
        'Call infoback("�������ֲ���Ϊ�գ����ұ���Ϊ���֣�")
    'End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_hdyy"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("pf_link_name") = request.Form("pf_link_name")
    'If request.Form("pf_uploadfile") = "" Then
        'rs("pf_uploadfile") = "text"
    'Else
        'rs("pf_uploadfile") = request.Form("pf_uploadfile")
    'End If
    'rs("pf_link_style") = request.Form("pf_link_style")
	'rs("pf_link_text") = request.Form("pf_link_text")
    'rs("content") = request.Form("content2")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "����ԤԼ�:"&request.Form("pf_link_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("��ӳɹ���", "pf_yyhd.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ٶ�ͯ����ѧУ��ӭ��!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>ԤԼ�ѡ��</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">ԤԼ�</th>
					<th>�޸Ĳ���</th>
				</tr>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_hdyy"
rs.Open sql, conn, 1, 1
Do While Not rs.EOF

%>
				<tr align="center">
					<td><%=rs("pf_link_name")%></td>
					<td>[<a href="pf_yyhd_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_link_name")%>" onclick="return confirm('ȷ��Ҫɾ���˻��ɾ���󽫲��ɻָ���')">ɾ��</a>]</td>
				</tr>
				<%
rs.movenext
Loop
Call close_rs

%>
			</table>
		</div>
		<div class="right_title">
			<h1>�����ҳ�����</h1>
		</div>
		<div class="right_body">
			<table>
				<form name="pcfinal" method="post">
					<tr>
                      <td width="9%" align="center">ԤԼ���</td>
                      <td width="91%"><input type="text" name="pf_link_name" size="60" />
                          <span class="red">����</span> </td>
				  </tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" name="submit" class="submit_button" value="ȷ�����">
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
