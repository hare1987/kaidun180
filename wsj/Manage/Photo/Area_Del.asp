<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<%
dim aid
aid=Request.QueryString("aid")
if aid="" then
	Response.Write "<script language='javascript'>alert('参数错误 !');document.location.href('area_Manage.asp');</script>"
	Response.End()
end if

SQL="Select * from area where aid="&aid
set rs=server.createobject("Adodb.Recordset")
rs.open sql,conn,3,3
rs.Delete
rs.Update
rs.close
Set rs=Nothing

'====同时删除子分类
sql="Delete from Area where pid="&aid
conn.Execute(sql)

Response.Write "<script language='javascript'>alert('成功删除指定的分类!');document.location.href('area_Manage.asp');</script>"
%>