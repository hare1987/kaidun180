<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
call iderror
If request.Form("submit") = "ȷ���޸�" Then
    If request.Form("pf_news_name") = "" Then
        Call infoback("��������⣡")
    End If
    'If request.Form("pf_news_order") = "" Or Not IsNumeric(request.Form("pf_news_order")) Then
     '   Call infoback("�������ֲ���Ϊ�գ��ұ���Ϊ���֣�")
   ' End If
    If request.Form("content2") = "" Then
        Call infoback("��������ϸ���ܣ�")
    End If
    Set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_news where id="&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("pf_news_name") = request.Form("pf_news_name")
    rs("pf_news_order") = request.Form("pf_news_order")
    rs("pf_news_sources") = request.Form("pf_news_sources")
    rs("pf_news_author") = request.Form("pf_news_author")
    rs("pf_news_category") = request.Form("pf_news_category")
	rs("pf_news_products") = request.Form("pf_news_products")
    rs("pf_news_keywords") = request.Form("pf_news_keywords")
	rs("pf_news_description") = request.Form("pf_news_description")
    rs("pf_news_content") = request.Form("content2")
    rs("pf_news_modify_date") = now()
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�޸���Ϣ:" & request.Form("pf_news_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("��Ѷ�޸ĳɹ���", "pf_news.asp")
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
			<h1>�����޸�</h1>
			
		</div>
		<div class="right_body">
			<table>
				<%
	set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_news where id="&request.QueryString("id")&""
	rs.open sql,conn,1,1
	If rs.eof Then
		Call infoback("�����ڴ�����")
	End If
	%>
				<form name="pcfinal" method="post">
					<tr>
						<td width="80" align="center">�������ƣ�</td>
						<td>
							<input type="text" name="pf_news_name" value="<%=rs("pf_news_name")%>" size="50" />
							<span class="red">����</span> </td>
					</tr>
<tr>
						<td width="80" align="center">������Դ��</td>
						<td>
							<input type="text" name="pf_news_sources" size="40" value="<%=rs("pf_news_sources")%>" />						</td>
					</tr>
					<tr>
						<td align="center">�������ࣺ</td>
						<td>
							<select name="pf_news_category">
								<option value="������Ѷ"  <%if rs("pf_news_category") ="������Ѷ"  then%>   selected   <%end  if%>>������Ѷ</option>
								<option value="����֪ͨ"  <%if rs("pf_news_category") ="����֪ͨ"  then%>   selected   <%end  if%>>����֪ͨ</option>
								<option value="��������"  <%if rs("pf_news_category") ="��������"  then%>   selected   <%end  if%>>��������</option>
							</select>
                         </td>
					</tr>
					<tr>
                      <td align="center">��ϸ���ܣ�</td>
					  <td><textarea name="content2" style="display:none"><%=rs("pf_news_content")%></textarea>
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
