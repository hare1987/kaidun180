<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<!-- #include file="Include/Jpeg.asp" -->
<%
id=Request.QueryString("id")
if id="" or not isnumeric(id) then
	Response.Write ("<script>alert('参数错误！');history.back();</script>")
	Response.End()
end if

set rs=Server.CreateObject("Adodb.recordset")
sql="select * from Photo where id="&id
rs.open sql,conn,1,3
if rs.eof then
	Response.Write ("<script>alert('参数错误！');history.back();</script>")
	Response.End()
end if

'if rs("t")=0 then
	'Response.Write ("<script>alert('请修改这个作品，为其指定分类！');history.back();</script>")
	'Response.End()
'end if

'====生成缩略图
'call aspjpeg("Upload/UploadImages/"&rs("url"),"Upload/UploadImages_s/"&rs("url"),120,135)
'====生成缩略图

rs("ok")=1
rs.Update
rs.Close
Set rs=Nothing

Response.Write ("<script>alert('审核成功！');location.href='BM_List.asp';</script>")
%>