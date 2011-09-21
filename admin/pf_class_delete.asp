<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
call iderror
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from class where ID = "&request.QueryString("ID")&""
rs.Open sql, conn, 2, 3
If rs.EOF Then
    Call close_rs
    Call close_conn
    Call infoback("不存在此数据！")
Else
    rs.Delete
    rs.update
	
    Call close_conn
    Call infohref("删除成功！", "pf_class.asp")
End If
%>
