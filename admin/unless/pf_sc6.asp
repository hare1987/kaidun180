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
	sql = "select * from pf_sc where sc_num="&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("sc_name")=request.Form("pf_sc_name")
	rs("sc_address")=request.Form("pf_sc_address")
	rs("sc_bus")=request.Form("pf_sc_bus")
	rs("sc_tel")=request.Form("pf_sc_tel")
	rs("sc_link")=request.Form("sc_link")
    rs("sc_about") = request.Form("content2")
	rs("sc_p_logo")=request.Form("pf_uploadfile")
	rs("sc_p_map")=request.Form("pf_uploadfile2")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�޸ĺ��У����Ϣ"
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("�޸ĳɹ���", "pf_sc5.asp?id=6")
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
			<h1>��������У</h1>
			
		</div>
		<div class="right_body">
			<table>
				<%
	set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_sc where sc_num="&request.QueryString("id")&""
	rs.open sql,conn,1,1
	If rs.eof Then
		Call infoback("�����ڴ�����")
	End If
	%>
				<form method="post" name="pcfinal" id="pcfinal">
              <tr>
                <td align="center">ѧУ���ƣ�</td>
                <td><input type="text" name="pf_sc_name" value="<%=rs("sc_name")%>" size="60" />
                    <span class="red">����</span> </td>
              </tr>
              <tr>
                <td align="center">ѧУ��ַ��</td>
                <td><input name="pf_sc_address" type="text" id="pf_sc_address" value="<%=rs("sc_address")%>" size="60" /></td>
              </tr>
              <tr>
                <td align="center">ѧУ��ͨ��</td>
                <td><input name="pf_sc_bus" type="text" id="pf_sc_bus" value="<%=rs("sc_bus")%>" size="60" /></td>
              </tr>
              <tr>
                <td width="80" align="center">ѧУ�绰��</td>
                <td><input type="text" name="pf_sc_tel" value="<%=rs("sc_tel")%>" size="60" /></td>
              </tr>
                    <tr>
						<td align="center">���ӵ�ַ��</td>
						<td>
							<input type="text" name="sc_link" size="70" value="<%=rs("sc_link")%>"/>
							<span class="red">����</span> </td>
					</tr>
              <tr>
                <td rowspan="4" align="center">ѧУ��ͼ��</td>
                <td><input type="text" name="pf_uploadfile" value="<%=rs("sc_p_logo")%>" size="40" />
                    <span class="red">������LogoͼƬ��ַ����ֱ���ϴ���</span> </td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td><input type="text" name="pf_uploadfile2" value="<%=rs("sc_p_map")%>" size="40" />
                <span class="red">������MapͼƬ��ַ����ֱ���ϴ���</span></td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td align="center">ѧУ��飺</td>
                <td rowspan="2"><textarea name="content2" style="display:none"><%=rs("sc_about")%></textarea>
                    <iframe id="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&amp;style=standard" frameborder="0" scrolling="No" width="700" height="350"></iframe>                ? </td>
              </tr>
              <tr>
                <td align="center">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2" align="center"><input type="submit" name="submit" class="submit_button" value="ȷ���޸�" />                </td>
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
