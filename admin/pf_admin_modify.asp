<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<!--#include file="pf_md5.asp"-->
<%
call iderror
If request.Form("submit") = "�޸�����" Then
    
    'If request.Form("pf_admin_password") = "" Then
        'Call infoback("���벻��Ϊ�գ�")
    'End If
    If request.Form("pf_admin_password") <> request.Form("pf_admin_password_again") Then
        Call infoback("��������������벻һ�£����������룡")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_admin where id="&request.QueryString("ID")&""
    rs.Open sql, conn, 1, 3
	
	pf_admin_name = rs("pf_admin_name")
	pf_admin_password = rs("pf_admin_password")
	pf_admin_qx = rs("pf_admin_qx")	
	pf_admin_true_name = rs("pf_admin_true_name")	
	
    rs("pf_admin_jb") = request.Form("pf_admin_jb")
	if request.Form("pf_admin_password") <> "" then
    rs("pf_admin_password") = md5(request.Form("pf_admin_password"))
	end if
    rs("pf_admin_qx") = request.Form("pf_admin_qx")
    rs("pf_admin_true_name") = request.Form("pf_admin_true_name")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		
		if pf_admin_password <> request.Form("pf_admin_password") and  request.Form("pf_admin_password") <>"" then
		pf_op_sources = "�޸�" & pf_admin_name &"��������ɹ�;"
		end if
		if pf_admin_qx <> request.Form("pf_admin_qx") then
		pf_op_sources =  pf_op_sources  &  "�޸�" & pf_admin_name &"����Ȩ�޳ɹ�;"
		end if
		if pf_admin_true_name <> request.Form("pf_admin_true_name") then
		pf_op_sources =  pf_op_sources  &  "�޸�" & pf_admin_name &"����Ա�����ɹ�"
		else
		pf_op_sources = "����Ա��Ϣδ���κ��޸�"
		end if

		rsop("pf_op_sources") = pf_op_sources
 		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("����Ա�޸ĳɹ���", "pf_admin.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ٶ�ͯ����ѧУ</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-family: Arial, Helvetica, sans-serif}
-->
</style>
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>����Ա����</h1>
			
		</div>
		<div class="right_body"><table class="table">
				<form method="post">
					<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_admin where ID = "&request.QueryString("ID")&""
rs.Open sql, conn, 1, 1

%>
					<tr>
						<td width="80" align="center">�û�������</td>
						<td>
						<%=rs("pf_admin_name")%> </td>
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
						<span class="red">����Ϊ�ձ�ʾ���벻�޸�</span> </td>
					</tr>
					<tr>
                      <td align="center">ȷ�����룺</td>
                      <td><input name="pf_admin_password_again" type="password" size="40" maxlength="16" />
                      </td>
				  </tr>
					<tr>
                      <td align="center">����Ա����</td>
                      <td><select name="pf_admin_jb" id="pf_admin_jb">
                          <option value="0" <%if  rs("pf_admin_jb") = "0" then %>  selected="selected"  <%end if%>>����Ա</option>
                          <option value="1" <%if  rs("pf_admin_jb") = "1" then %>  selected="selected"  <%end if%>>����Ա</option>
                          <option value="2" <%if  rs("pf_admin_jb") = "2" then %>  selected="selected"  <%end if%>>�۲�Ա</option>
                        </select>
                      </td>
				  </tr>
					<tr>
					
       <%if  rs("pf_admin_jb") = "1" then %>              
					  <td align="center">����ԱȨ�ޣ�</td>
                      <td><input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="�����" <%if InStr(rs("pf_admin_qx"),"�����") then %>checked="checked" <%end if%> />
����� &nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��Ϸ����"  <%if InStr(rs("pf_admin_qx"),"��Ϸ����") then %>checked="checked" <%end if%>/> 
&nbsp;��Ϸ���� &nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��������" <%if InStr(rs("pf_admin_qx"),"��������") then %>checked="checked" <%end if%>/>
&nbsp;��������<span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��ҳ���"   <%if InStr(rs("pf_admin_qx"),"��ҳ���") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;��ҳ���</span><span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��ҳ��ϵ��ʽ"   <%if InStr(rs("pf_admin_qx"),"��ҳ��ϵ��ʽ") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;��ҳ��ϵ��ʽ</span>&nbsp; <span class="red">|</span> &nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="���ٽ���"  <%if InStr(rs("pf_admin_qx"),"���ٽ���") then %>checked="checked" <%end if%>/>
&nbsp;���ٽ���&nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��ɫ����"   <%if InStr(rs("pf_admin_qx"),"��ɫ����") then %>checked="checked" <%end if%>/>
&nbsp;��ɫ����&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��֯�ܹ�"   <%if InStr(rs("pf_admin_qx"),"��֯�ܹ�") then %>checked="checked" <%end if%> /> 
&nbsp;��֯�ܹ�&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��ʦ�Ƽ�"  <%if InStr(rs("pf_admin_qx"),"��ʦ�Ƽ�") then %>checked="checked" <%end if%> />
&nbsp;��ʦ�Ƽ�<br />
<br />
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="ABCbakery"   <%if InStr(rs("pf_admin_qx"),"ABCbakery") then %>checked="checked" <%end if%> />
<span class="style1">ABCbakery</span>&nbsp;&nbsp;
 
 <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="LA"   <%if InStr(rs("pf_admin_qx"),"LA") then %>checked="checked" <%end if%> />
LA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Hip"   <%if InStr(rs("pf_admin_qx"),"Hip") then %>checked="checked" <%end if%> />
&nbsp;<span class="style1">Hip</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="ESL"   <%if InStr(rs("pf_admin_qx"),"ESL") then %>checked="checked" <%end if%> />
&nbsp;<span class="style1">ESL</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Star Test"   <%if InStr(rs("pf_admin_qx"),"Star Test") then %>checked="checked" <%end if%> /> 
<span class="style1">Star Test</span>&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="���ڿγ�"   <%if InStr(rs("pf_admin_qx"),"���ڿγ�") then %>checked="checked" <%end if%> />
&nbsp;���ڿγ�<br />
<br />
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Phonic Magic"   <%if InStr(rs("pf_admin_qx"),"Phonic Magic") then %>checked="checked" <%end if%> />
<span class="style1">Phonic Magic&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="S Chant"   <%if InStr(rs("pf_admin_qx"),"S Chant") then %>checked="checked" <%end if%> />
Sing Chant&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Reading House"   <%if InStr(rs("pf_admin_qx"),"Reading House") then %>checked="checked" <%end if%> />
&nbsp;Reading House &nbsp;&nbsp; <span class="red">|</span> &nbsp;&nbsp; 
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="����У��"   <%if InStr(rs("pf_admin_qx"),"����У��") then %>checked="checked" <%end if%> />
&nbsp;����У��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="���У��"   <%if InStr(rs("pf_admin_qx"),"���У��") then %>checked="checked" <%end if%> />
���У��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="�ֶ�У��"   <%if InStr(rs("pf_admin_qx"),"�ֶ�У��") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;�ֶ�У��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="ݷׯУ��"   <%if InStr(rs("pf_admin_qx"),"ݷׯУ��") then %>checked="checked" <%end if%> />
ݷׯУ��<br />
<br />
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��ϵ����"   <%if InStr(rs("pf_admin_qx"),"��ϵ����") then %>checked="checked" <%end if%> />
��ϵ����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="�����"   <%if InStr(rs("pf_admin_qx"),"�����") then %>checked="checked" <%end if%> />
�����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="�˲���Ƹ"   <%if InStr(rs("pf_admin_qx"),"�˲���Ƹ") then %>checked="checked" <%end if%> />
&nbsp;�˲���Ƹ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="�������"   <%if InStr(rs("pf_admin_qx"),"�������") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;&nbsp;�������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="��������"   <%if InStr(rs("pf_admin_qx"),"��������") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;��������</span></td>

<%end if%>
				  </tr>
					<tr align="center">
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
