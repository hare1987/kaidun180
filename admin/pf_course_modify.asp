<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
Call iderror
If request.Form("submit") = "ȷ���޸�" Then
    If request.Form("title") = "" Then
        Call infoback("�γ����Ʋ���Ϊ�գ�")
    End If
	If request.Form("content2") = "" Then
        Call infoback("���ݲ���Ϊ�գ�")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from course where ID = "&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("title") = request.Form("title")
    rs("type") = request.Form("type")
    rs("content") = request.Form("content2")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate ",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�޸Ŀγ�:"&request.Form("title")
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("�޸ĳɹ���", "pf_course.asp")
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
			<h1>�޸Ŀ��ٿγ�</h1>
			
		</div>
	  <div class="right_body">
			<table>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from course where ID = "&request.QueryString("id")&""
rs.Open sql, conn, 1, 1
If rs.EOF Then
    Call infoback("�����ڴ�����")
End If
%>
				<form name="pcfinal" method="post">
					<tr>
                      <td align="center">�γ����ƣ�</td>
                      <td><input type="text" name="title" value="<%=rs("title")%>" size="60" />
                          <span class="red">����</span> </td>
				  </tr>
                   		<tr>
                      <td align="center">�γ����ͣ�</td>
                      <td><select name="type" id="type">
          <option value="1" <%if rs("type") = "��Ȱ�" then%>  selected="selected"  <%end if%>>��Ȱ�</option>
          <option value="2" <%if rs("type") = "��ɫ��" then%>  selected="selected"  <%end if%>>��ɫ��</option>
          <option value="3" <%if rs("type") = "�Ǽ���" then%>  selected="selected"  <%end if%>>�Ǽ���</option>
          <option value="4" <%if rs("type") = "������" then%>  selected="selected"  <%end if%>>������</option>
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
