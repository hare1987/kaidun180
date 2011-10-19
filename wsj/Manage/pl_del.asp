<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<%
sql="delete from pl where id="&Request.QueryString("id")
conn.execute(sql)
Response.Write ("<script>alert('É¾³ý³É¹¦!');location.href='pl.asp';</script>")
%>