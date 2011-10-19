<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<%
id=Request.QueryString("id")

sql="Select* from pl where id="&id
Set rs=Server.CreateObject("Adodb.Recordset")
rs.Open sql,conn,1,3
if rs.eof then
Response.Write ("<script>alert('没有找到记录!');history.back();</script>")
Response.End()
end if

if rs("sh")=0 then
	rs("sh")=1
else
	rs("sh")=0
end if
rs.Update
rs.close
Set rs=Nothing
Response.Write ("<script>alert('操作成功!');location.href='pl.asp';</script>")
%>