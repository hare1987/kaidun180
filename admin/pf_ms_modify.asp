<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
Call iderror
If request.Form("submit") = "ȷ���޸�" Then
    If request.Form("pf_link_name") = "" Then
        Call infoback("ͷ�μ���������Ϊ�գ�")
    End If
    If request.Form("pf_link_text") = "" Then
        Call infoback("��Ҫ˵������Ϊ�գ�")
    End If
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
    sql = "select * from pf_ms where id = "&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("pf_link_name") = request.Form("pf_link_name")
	rs("school") = request.Form("school")
	rs("position") = request.Form("position")
    If request.Form("pf_uploadfile") = "" Then
        rs("pf_uploadfile") = "text"
    Else
        rs("pf_uploadfile") = request.Form("pf_uploadfile")
    End If
    rs("pf_link_style") = request.Form("pf_link_style")
	rs("pf_link_text") = request.Form("pf_link_text")
    rs("content") = request.Form("content2")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�޸Ľ�ʦ:" & request.Form("pf_link_name") &"��Ϣ"
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("�޸ĳɹ���", "pf_ms_index.asp")
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
			<h1>�޸Ľ�ʦ��Ϣ</h1>
			
		</div>
	  <div class="right_body">
			<table>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_ms where id = "&request.QueryString("id")&""
rs.Open sql, conn, 1, 1
If rs.EOF Then
    Call infoback("�����ڴ�����")
End If
%>
				<form name="pcfinal" method="post">
					<tr>
                      <td align="center">������</td>
                      <td><input type="text" name="pf_link_name" value="<%=rs("pf_link_name")%>" size="60" />
                          <span class="red">����</span> </td>
				  </tr>
                   <tr>
                      <td width="9%" align="center">У����</td>
                      <td width="91%"><input type="text" name="school" value="<%=rs("school")%>"size="60" />
                       </td>
				  </tr>
                  <tr>
                      <td width="9%" align="center">ͷ�Σ�</td>
                      <td width="91%"><input type="text" name="position" value="<%=rs("position")%>"size="60" />
                    </td>
				  </tr>
					<tr>
                      <td align="center">��ʦ���ͣ�</td>
                      <td><select name="pf_link_style" id="pf_link_style">
                          <option value="ר���Ŷ�" <%if rs("pf_link_style") = "ר���Ŷ�" then%>  selected="selected"  <%end if%>>ר���Ŷ�</option>
                          <option value="��ʦ�Ŷ�" <%if rs("pf_link_style") = "��ʦ�Ŷ�" then%>  selected="selected"  <%end if%>>��ʦ�Ŷ�</option>
                           <option value="������֮��" <%if rs("pf_link_style") = "������֮��" then%>  selected="selected"  <%end if%>>������֮��</option>
						  </td>
				  </tr>
					<tr>
						<td width="80" align="center" >��Ҫ˵����</td>
						<td><textarea name="pf_link_text" cols="60" id="pf_link_text" style="height:150px;"><%=rs("pf_link_text")%></textarea>
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
