<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
Call iderror
If request.Form("submit") = "ȷ���޸�" Then
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from advertising where id = "&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("pf_link_name") = request.Form("pf_link_name")
    rs("pf_uploadfile") = request.Form("pf_uploadfile")
	rs("pf_link") = request.Form("pf_link")
    rs("pf_sort") = request.Form("pf_sort")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate ",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�޸���ҳ���ͼƬ:"&request.Form("pf_link_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("�޸ĳɹ���", "pf_advertising.asp")
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
			<h1>�޸���ҳ���ͼƬ</h1>
			
		</div>
	  <div class="right_body">
                 <div><p> <span class="red">˵����������ҳ�����ʾ10��ͼƬ</span></p></div>
			<table>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from advertising where ID = "&request.QueryString("id")&""
rs.Open sql, conn, 1, 1
If rs.EOF Then
    Call infoback("�����ڴ�����")
End If
%>
			
           <table>
				<form name="pcfinal" method="post">
					<tr>
                      <td align="center">������֣�</td>
                      <td>
                       <input type="text" name="pf_link_name" size="60" value="<%=rs("pf_link_name")%>" />
                       </td>
				  </tr>
                  	<tr>
                      <td align="center">���ӵ�ַ��</td>
                      <td><input name="pf_link"  type="text" id="pf_link" size="60" value="<%=rs("pf_link")%>"/></td>
				  </tr
					><tr>
						<td rowspan="2" align="center">���ͼƬ��</td>
					  <td>
							<input type="text" name="pf_uploadfile" size="60" value="<%=rs("pf_uploadfile")%>"/>
						  <span class="red">&nbsp;�ϴ��ߴ��С:530*280px</span></td>
					</tr>
					<tr>
						<td>
							<iframe src="pf_upload.asp" width="600" height="25" scrolling="auto" frameborder="0"></iframe>
						</td>
					</tr>
                    
                    	<tr>
                      <td align="center">ҳ�룺</td>
                      <td><input name="pf_sort" height="20" width="60" value="<%=rs("pf_sort")%>" />
                          <span class="red">����ԽС����Խ��ǰ</span> </td>
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
			</table> 
            
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
