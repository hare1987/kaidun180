<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "ɾ��ѡ��" Then
    If Request("id") = "" Then
        Call infoback("��ѡ��Ҫɾ�������ţ�")
    End If
    sql = "delete from pf_news where id in ("&Request("id")&")"
    conn.Execute ( sql )
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "ɾ��idΪ" & Request("id") &"������"
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call infohref("�ɹ�ɾ��ѡ�е����ţ�", "pf_news.asp")
	Call close_conn
End If
If request.Form("submit") = "��Ϊ�Ƽ�" Then
    If Request("id") = "" Then
        Call infoback("��ѡ��Ҫ��Ϊ�Ƽ������ţ�")
    End If
    sql = "update pf_news set pf_news_rec = true where id in ("&Request("id")&")"
    conn.Execute ( sql )
    Call infohref("��Ϊ�Ƽ��ɹ�", "pf_news.asp")
	Call close_conn
End If
If request.Form("submit") = "��Ϊ�ȵ�" Then
    If Request("id") = "" Then
        Call infoback("��ѡ��Ҫ��Ϊ�ȵ�����ţ�")
    End If
    sql = "update pf_news set pf_news_hot = true where id in ("&Request("id")&")"
    conn.Execute ( sql )
    Call infohref("��Ϊ�ȵ�ɹ�", "pf_news.asp")
	Call close_conn
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
			<h1>���Ź���</h1>
			
		</div>
		<div class="right_body">
			<table>
				<form method="post">
					<tr>
						<th width="60">ѡ��</th>
						<th width="431">��������</th>
						<th width="282">��������</th>
						<th width="210">����ʱ��</th>
						<th width="131">����޸�</th>
						<th width="65">���</th>
						<th width="90">�޸Ĳ���</th>
					</tr>
				<%
If request.Form("submit") = "��ѯ" Then
if trim(request("keyword"))<>"" then
  set rs=server.CreateObject("adodb.recordset")
   sql="select * from pf_news where pf_news_name like '"&trim(request("keyword"))&"'"
   rs.open sql,conn,1,1
   if not rs.eof then
    do while not rs.eof

		%>
        
   	<tr align="center">
						<td>
							<input name="ID" type="checkbox" id="ID" value="<%=rs("id")%>" />
						</td>
						<td><%=rs("pf_news_name")%></td>
						<td>
						<%=rs("pf_news_category")%>
						</td>
				<td><%=formatdatetime(rs("pf_news_date"),2)%></td>
				<td><%=formatdatetime(rs("pf_news_modify_date"),2)%></td>
				<td><%=rs("pf_news_hits")%></td>
						<td>[<a href="pf_news_modify.asp?id=<%=rs("id")%>">�޸�����</a>]</td>
					</tr>
					<%

    rs.movenext
    loop
   else
    response.write "û�з��������Ĳ�ѯ"
   end if
   rs.close
   set rs=nothing
   end if 
 end if
		%>     
        
        
        
					<tr align="center">
						<td>
							<input name="ID" type="checkbox" onclick="check_all(this,'ID')">
						</td>
						<script type="text/javascript">
function check_all(obj,cName)
{
var checkboxs = document.getElementsByName(cName);
for(var i=0;i<checkboxs.length;i++){checkboxs[i].checked = obj.checked;}
}
</script>
						<td colspan="8">
							<input type="submit" name="submit" class="submit_button" value="ɾ��ѡ��" onclick="return confirm('ȷ��Ҫɾ��ѡ�е�������ɾ���󽫲��ɻָ���')" />
						</td>
					</tr>
				</form>
			</table>
		</div>
 <form action="search.asp" method="get" name="form1">
 <input value="" type="text" name="keyword"/> <input name="submit" type="submit"  value="�ύ"/>
</form>

	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
