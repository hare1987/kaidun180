<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
call iderror
If request.Form("submit") = "ȷ���޸�" Then
    'If request.Form("pf_news_name") = "" Then
        'Call infoback("�������Ʋ���Ϊ�գ�")
    'End If
    'If request.Form("pf_news_order") = "" Or Not IsNumeric(request.Form("pf_news_order")) Then
     '   Call infoback("�������ֲ���Ϊ�գ��ұ���Ϊ���֣�")
   ' End If
    If request.Form("content2") = "" Then
        Call infoback("���ݲ���Ϊ�գ�")
    End If
    Set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_custom where id="&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("z7") = request.Form("content2")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "Hip Hip Hooray�޸ĳɹ�"
		rsop.update
		rsop.close
		set rsop = nothing	
	
    Call close_conn
    Call infohref("�޸ĳɹ���", "pf_s3.asp?id=1")
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
			<h1>Hip Hip Hooray</h1>
			
		</div>
		<div class="right_body">
			<table>
				<%
	set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_custom where id="&request.QueryString("id")&""
	rs.open sql,conn,1,1
	If rs.eof Then
		Call infoback("�����ڴ�����")
	End If
	%>
				<form name="pcfinal" method="post">
					<tr>
                      <td width="80" align="center">��ϸ���ݣ�</td>
					  <td><textarea name="content2" style="display:none"><%=rs("z7")%></textarea>
						<iframe ID="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&style=standard" frameborder="0" scrolling="no" width="700" HEIGHT="350"></iframe>                   </td>
				  </tr>
					<tr>
                      <td colspan="2" align="center"><input type="submit" name="submit" class="submit_button" value="ȷ���޸�" />                      </td>
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
