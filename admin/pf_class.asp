<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "ȷ�����" Then
    If request.Form("class_name") = "" Then
        Call infoback("�������Ʋ���Ϊ�գ�")
    End If
    If request.Form("class_date") = "" Then
        Call infoback("�Ͽ����ڲ���Ϊ�գ�")
    End If
	 If request.Form("class_time") = "" Then
        Call infoback("�Ͽ�ʱ�䲻��Ϊ�գ�")
    End If
	 If request.Form("class_address") = "" Then
        Call infoback("�Ͽεص㲻��Ϊ�գ�")
    End If
	
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from class"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("class_name") = request.Form("class_name")
	rs("class_time") = request.Form("class_time")
	rs("class_date") = request.Form("class_date")
	rs("class_address") = request.Form("class_address")
    rs.update
    Call close_rs	
    Call close_conn
    Call infohref("��ӳɹ���", "pf_class.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ٶ�ͯ����ѧУ��ӭ��!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {}
-->
</style>
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>�޸���ʦ��Ϣ</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					    <tr>
                    <th>��������</th>
                    <th >�Ͽ�ʱ��</th>
                    <th >�Ͽ�����</th>
                    <th >�Ϻ��ص�</th>
					<th width="148">�޸Ĳ���</th>
				</tr>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from class"
rs.Open sql, conn, 1, 1
Do While Not rs.EOF

%>
				<tr align="center">
				         <td><%=rs("class_name")%></td>
		                 <td><%=rs("class_time")%></td>
	                     <td><%=rs("class_date")%></td>
		                 <td><%=rs("class_address")%></td>
					<td>[<a href="pf_class_modify.asp?ID=<%=rs("ID")%>">�޸�</a>] [<a href="pf_class_delete.asp?ID=<%=rs("ID")%>" onclick="return confirm('ȷ��Ҫɾ���˼�¼��ɾ���󽫲��ɻָ���')">ɾ��</a>]</td>
				</tr>
				<%
rs.movenext
Loop
Call close_rs

%>
			</table>
		</div>
		<div class="right_title">
			<h1>��ӿ�����Ϣ</h1>
		</div>
		<div class="right_body">
			<table>
				<form name="pcfinal" method="post">
					<tr>
                      <td width="9%" align="center">�������ƣ�</td>
                      <td width="91%"><input type="text" name="class_name" size="60" />
                          <span class="red">����</span> </td>
				  </tr>
                       <tr>
                      <td width="9%" align="center">����ʱ�䣺</td>
                      <td width="91%"><input type="text" name="class_time" size="60" />
                    </td>
				  </tr>
                  <tr>
                      <td width="9%" align="center">�������ڣ�</td>
                      <td width="91%"><input type="text" name="class_date" size="60" />
                    </td>
				  </tr>
					<tr>
                      <td align="center">����ص㣺</td>
                      <td><select name="class_address" id="class_address">
                        <option selected="selected">�������У</option>
                        <option>�������У</option>
                        <option>�ֶ�����У</option>
                        <option>����ݷׯУ</option>
                        <option>��ڶ���У</option>
                        <option>�������У</option>
                        <option>�ɽ���ͤУ</option>
                        <option>��ɽ��У</option>
                        </select></td>
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
