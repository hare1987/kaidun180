<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
Call iderror
If request.Form("submit") = "ȷ���޸�" Then
    If request.Form("pf_link_name") = "" Then
        Call infoback("���ⲻ��Ϊ�գ�")
    End If
    If request.Form("pf_link_text") = "" Then
        Call infoback("��Ҫ˵������Ϊ�գ�")
    End If
	If request.Form("content2") = "" Then
        Call infoback("���ݲ���Ϊ�գ�")
    End If
    'If request.Form("pf_link_url") = "" Then
        'Call infoback("���ӵ�ַ����Ϊ�գ�")
    'End If
    'If request.Form("pf_link_order") = "" Or Not IsNumeric(request.Form("pf_link_order")) Then
        'Call infoback("�������ֲ���Ϊ�գ����ұ���Ϊ���֣�")
    'End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_hd where id = "&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("pf_link_name") = request.Form("pf_link_name")
    If request.Form("pf_uploadfile") = "" Then
        rs("pf_uploadfile") = "text"
    Else
        rs("pf_uploadfile") = request.Form("pf_uploadfile")
    End If
    rs("pf_link_style") = request.Form("pf_link_style")
	rs("pf_link_text") = request.Form("pf_link_text")
    rs("content") = request.Form("content2")
	rs("update_data") = now()
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate ",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�޸Ļ����:"&request.Form("pf_link_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("�޸ĳɹ���", "pf_hd_index.asp")
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
			<h1>�޸Ļ����</h1>
			
		</div>
	  <div class="right_body">
			<table>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_hd where id = "&request.QueryString("id")&""
rs.Open sql, conn, 1, 1
If rs.EOF Then
    Call infoback("�����ڴ�����")
End If
%>
				<form name="pcfinal" method="post">
					<tr>
                      <td align="center">���ű��⣺</td>
                      <td><input type="text" name="pf_link_name" value="<%=rs("pf_link_name")%>" size="60" />
                          <span class="red">����</span> </td>
				  </tr>
					<tr>
						<td width="80" align="center">��Ҫ˵����</td>
						<td><textarea name="pf_link_text" cols="60" id="pf_link_text"><%=rs("pf_link_text")%></textarea>
						    </td>
					</tr>
					<tr>
						<td rowspan="2" align="center">����СͼƬ��</td>
						<td>
							<input type="text" name="pf_uploadfile" value="<%=rs("pf_uploadfile")%>" size="40" />
							<span class="red">������LogoͼƬ��ַ����ֱ���ϴ���</span> </td>
					</tr>
					<tr>
						<td>
							<iframe src="pf_upload.asp" width="600" height="25" scrolling="auto" frameborder="0"></iframe>
						</td>
					</tr>
					<tr>
					  <td align="center">��ϸ���ݣ�</td>
					  <td rowspan="2"><textarea name="content2" style="display:none"><%=rs("content")%></textarea>
                      <iframe id="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&style=standard" frameborder="0" scrolling="No" width="700" height="350"></iframe>&nbsp;					  </td>
				  </tr>
					<tr>
						<td align="center">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" name="submit" class="submit_button" value="ȷ���޸�">
						</td>
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
