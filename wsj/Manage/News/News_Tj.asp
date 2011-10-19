<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<%
set rs=server.createobject("adodb.recordset")
rs.open "Select * from News where id="&Request("id"),conn,1,3
if rs.bof and rs.eof then
	Response.Write "<script language='javascript'>alert('数据库中没有该新闻！');document.location.href('News_Manage.asp');</script>"
	Response.End()
else
	if rs("tj")=1 then
		rs("tj")=0
	else
		rs("tj")=1
	end if
	
	rs.Update
	Response.Write "<script language='javascript'>alert('操作成功！');document.location.href('News_Manage.asp');</script>"
end if
%>