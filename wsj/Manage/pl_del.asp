<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<%
sql="delete from pl where id="&Request.QueryString("id")
conn.execute(sql)
Response.Write ("<script>alert('ɾ���ɹ�!');location.href='pl.asp';</script>")
%>