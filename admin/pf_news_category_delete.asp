<title>���ٶ�ͯ����ѧУ</title><%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
call iderror
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_news_category where id = "&request.QueryString("ID")&""
rs.Open sql, conn, 2, 3
If rs.EOF Then
    Call close_rs
    Call close_conn
    Call infoback("�����ڴ����ݣ�")
Else
	Set rss = server.CreateObject("adodb.recordset")
	sql = "select * from pf_news_category where pf_news_category_parent = "&request.QueryString("ID")&""
	rss.Open sql, conn, 1, 1
	If Not rss.EOF Then
		rss.close
		set rss = nothing
		Call close_conn
		Call infoback("�˷����°������࣬����ɾ�����࣡")
	End If
    rs.Delete
    rs.Update
    Call close_rs
    sql = "delete from pf_news where pf_news_category = "&request.QueryString("ID")&""
    conn.Execute ( sql )
    Call close_conn
	Call infohref("ɾ���ɹ���", "pf_news_category.asp")
End If
%>
