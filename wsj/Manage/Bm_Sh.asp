<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<!-- #include file="Include/Jpeg.asp" -->
<%
id=Request.QueryString("id")
if id="" or not isnumeric(id) then
	Response.Write ("<script>alert('��������');history.back();</script>")
	Response.End()
end if

set rs=Server.CreateObject("Adodb.recordset")
sql="select * from Photo where id="&id
rs.open sql,conn,1,3
if rs.eof then
	Response.Write ("<script>alert('��������');history.back();</script>")
	Response.End()
end if

'if rs("t")=0 then
	'Response.Write ("<script>alert('���޸������Ʒ��Ϊ��ָ�����࣡');history.back();</script>")
	'Response.End()
'end if

'====��������ͼ
'call aspjpeg("Upload/UploadImages/"&rs("url"),"Upload/UploadImages_s/"&rs("url"),120,135)
'====��������ͼ

rs("ok")=1
rs.Update
rs.Close
Set rs=Nothing

Response.Write ("<script>alert('��˳ɹ���');location.href='BM_List.asp';</script>")
%>