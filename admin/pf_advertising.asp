<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "ȷ�����" Then
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from advertising order by pf_sort"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("pf_link_name") = request.Form("pf_link_name")
    rs("pf_uploadfile") = request.Form("pf_uploadfile")
	rs("pf_link") = request.Form("pf_link")
    rs("pf_sort") = request.Form("pf_sort")
    rs.update
    Call close_rs
	
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�����ҳ���ͼƬ:"&request.Form("pf_link_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("��ӳɹ���", "pf_advertising.asp")
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
.style1 {color: #FF0000}
-->
</style>
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
    		<div class="right_title">
			<h1>��ҳ������</h1>
			
		</div>
		<div class="right_body">
			<table>
            <div><p> <span class="red">˵������ɫ����Ϊ��ҳ��ʾ�Ĺ��ͼƬ,������ҳ�����ʾ10��ͼƬ</span></p></div>
            			<tr>
					<th width="200">������</th>
                    <th width="200">�������</th>
                    <th width="200">ҳ��</th>
					<th>�޸Ĳ���</th>
				</tr>
<%
sql = "select * from advertising order by pf_sort"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
if  rs.eof or rs.bof then
%>
 ����֪ͨ!
 <%
else
i = 0
do while not rs.eof  or rs.bof
i = i + 1
%>

<tr align="center"  <% if i<11 then %> style=" background:#9CF" <% end if %>>

					<td><%=rs("pf_link_name")%></td>
                    <td><%=rs("pf_link")%></td>
                    <td><%=rs("pf_sort")%></td>
                    <td>[<a href="pf_advertising_modify.asp?id=<%=rs("ID")%>">�޸�</a>] [<a href="pf_advertising_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_link_name")%>" onclick="return confirm('ȷ��Ҫɾ������Ϣ��ɾ���󽫲��ɻָ���')">ɾ��</a>]</td>
				</tr>        
<%
rs.movenext
loop
end if
rs.close
set rs = nothing
%> 

			</table>
		</div>
		<div class="right_title">
			<h1>�����ҳ���</h1>
		</div>
		<div class="right_body">
        <div><p> <span class="red">˵������ɫ����Ϊ��ҳ��ʾ�Ĺ��ͼƬ,������ҳ�����ʾ10��ͼƬ</span></p></div>
			<table>
				<form name="pcfinal" method="post">
					<tr>
                      <td align="center">������֣�</td>
                      <td>
                       <input type="text" name="pf_link_name" size="60" />
                       </td>
				  </tr>
                  	<tr>
                      <td align="center">���ӵ�ַ��</td>
                      <td><input name="pf_link"  type="text" id="pf_link" size="60"/></td>
				  </tr
					><tr>
						<td rowspan="2" align="center">���ͼƬ��</td>
					  <td>
							<input type="text" name="pf_uploadfile" size="60" />
						  <span class="red">&nbsp;�ϴ��ߴ��С:530*280px</span></td>
					</tr>
					<tr>
						<td>
							<iframe src="pf_upload.asp" width="600" height="25" scrolling="auto" frameborder="0"></iframe>
						</td>
					</tr>
                    
                    	<tr>
                      <td align="center">ҳ�룺</td>
                      <td><input name="pf_sort" height="20" width="60"/>
                          <span class="red">����ԽС����Խ��ǰ</span> </td>
				  </tr>
					<tr>
						<td align="center">&nbsp;</td>
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
