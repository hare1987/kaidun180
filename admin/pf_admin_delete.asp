<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
call iderror
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_admin where ID="&request.querystring("ID")&""
rs.Open sql, conn, 2, 3
If rs.EOF Then
    Call close_rs
    Call close_conn
    Call infoback("不存在此数据")
Else
    rs.Delete
    rs.update
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "删除管理员" & request("opname")
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call infohref("删除成功", "pf_admin.asp")
End If
Call close_rs
Call close_conn
%>
