<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<%
session.Abandon()

		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "�ɹ�ע��"
		rsop.update
		rsop.close
		set rsop = nothing

Call infohref("���Ѿ���ȫ���˳���","index.asp")
%>
