<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
if Request.Form("submit") = "ȷ�����" Then
	if Request.Form("pf_recruitment_name") = "" Then
	Call infoback("ְλ���Ʋ���Ϊ��")
	End If
	Set rs = Server.CreateObject("ADODB.Recordset")
	sql = "select * from pf_recruitment"
	rs.open sql,conn,1,3
	rs.addnew
	rs("pf_recruitment_name") = Request.Form("pf_recruitment_name")
	rs("pf_recruitment_age") = Request.Form("pf_recruitment_age")
	rs("pf_recruitment_gender") = Request.Form("pf_recruitment_gender")
	rs("pf_recruitment_education") = Request.Form("pf_recruitment_education")
	rs("pf_recruitment_number") = Request.Form("pf_recruitment_number")
	rs("pf_recruitment_content") = Request.Form("content2")
	rs("pf_recruitment_area")=request.Form("pf_recruitment_area")
	rs("pf_recruitment_link")=request.Form("pf_recruitment_link")
	rs("pf_recruitment_date") = now()
	rs.update
	Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "���ְλ:" & request.Form("pf_recruitment_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
	Call close_conn
	Call infohref("��Ƹ��Ϣ��ӳɹ���","pf_recruitment.asp")
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
			<h1>�޸���Ƹ��Ϣ</h1>
			
		</div>
		<div class="right_body">
			<table class="table">
				<tr>
					<th>ְλ����</th>
					<th width="80">����Ҫ��</th>
					<th width="100">�Ա�Ҫ��</th>
					<th width="100">ѧ��Ҫ��</th>
					<th width="60">��Ƹ����</th>
					<th width="80">��������</th>
					<th width="120">�޸Ĳ���</th>
				</tr>
				<%
  set rs = CreateObject("ADODB.Recordset")
  sql = "select * from pf_recruitment order by ID desc"
  rs.open sql,conn,1,1
  Do While not rs.eof
  %>
				<tr align="center">
					<td><%=rs("pf_recruitment_name")%></td>
					<td><%=rs("pf_recruitment_age")%></td>
					<td><%=rs("pf_recruitment_gender")%></td>
					<td><%=rs("pf_recruitment_education")%></td>
					<td><%=rs("pf_recruitment_number")%></td>
					<td><%=formatdatetime(rs("pf_recruitment_date"),2)%></td>
					<td>[<a href="pf_recruitment_modify.asp?id=<%=rs("ID")%>">�޸�</a>] [<a href="pf_recruitment_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_recruitment_name")%>"onclick="return confirm('ȷ��Ҫɾ����ɾ���󽫲��ɻָ���')">ɾ��</a>]</td>
				</tr>
				<%
  rs.movenext
  Loop
  %>
			</table>
		</div>
		<div class="right_title">
			<h1>�����Ƹ��Ϣ</h1>
			
		</div>
		<div class="right_body">
			<table>
				<form method="post">
					<tr>
						<td width="80" align="center">ְλ���ƣ�</td>
						<td>
							<input name="pf_recruitment_name" type="text" size="40" />
							<span class="red">����</span> </td>
					</tr>
					<tr>
					  <td align="center">ְλ���ӣ�</td>
					  <td><input name="pf_recruitment_link" type="text" id="pf_recruitment_link" size="40" /></td>
				  </tr>
					<tr>
					  <td align="center">����У����</td>
					  <td><select name="pf_recruitment_area" id="pf_recruitment_area">
                        <option>�ܲ�</option>
                        <option>����У��</option>
                        <option>���У��</option>
                        <option>�ֶ�У��</option>
                        <option>ݷׯУ��</option>
                        <option>���У��</option>
                        <option>����У��</option>
                                                                                        </select></td>
					</tr>
					<tr>
						<td align="center">����Ҫ��</td>
						<td>
							<input name="pf_recruitment_age" type="text" size="20" />						</td>
					</tr>
					<tr>
						<td align="center">�Ա�Ҫ��</td>
						<td>
							<select name="pf_recruitment_gender">
								<option>����</option>
								<option>��</option>
								<option>Ů</option>
							</select>						</td>
					</tr>
					<tr>
						<td align="center">ѧ��Ҫ��</td>
						<td>
							<select name="pf_recruitment_education">
								<option>����</option>
								<option>����</option>
								<option>����</option>
								<option>��ר</option>
								<option>��ר</option>
								<option>����</option>
								<option>�о���</option>
							</select>						</td>
					</tr>
					<tr>
						<td align="center">��Ƹ������</td>
						<td>
							<input name="pf_recruitment_number" type="text" size="10" />						</td>
					</tr>
					<tr>
						<td align="center">ְ��Ҫ�� </td>
						<td>
                         <textarea name="content2" style="display:none"></textarea>
					  <iframe ID="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&style=standard" frameborder="0" scrolling="no" width="700" HEIGHT="350"></iframe>						</td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<input type="submit" name="submit" class="submit_button"value="ȷ�����" />						</td>
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
