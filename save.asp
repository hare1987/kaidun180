<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
</head>

<body>
<%
action = request("action")
select case action
case "gf"
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_buy"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("name") = request.Form("name")
    rs("sex") = request.Form("sex")
    rs("age") = request.Form("age")
    rs("birth") = request.Form("birth")
    rs("Fname") = request.Form("Fname")
    rs("tel") = request.Form("tel")
    rs("email") = request.Form("email")
    rs("school") = request.Form("school")
    rs("hd") = request.Form("hd")
    rs.update
    rs.Close
    set rs=nothing
    conn.close
    set conn=nothing
    response.Write "<script language=javascript>alert('您登记的预约信息我们已经收到,客服人员会尽快跟您联系!');</script><meta http-equiv=refresh content=0;URL=index.asp>;"
    response.End
	
	
case "bm"
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_bm"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("name") = request.Form("name")
    rs("sex") = request.Form("sex")
    rs("age") = request.Form("age")
    rs("birth") = request.Form("birth")
    rs("Fname") = request.Form("Fname")
    rs("tel") = request.Form("tel")
    rs("email") = request.Form("email")
    rs("school") = request.Form("school")
    rs("hd") = request("class")
    rs.update
    rs.Close
    set rs=nothing
    conn.close
    set conn=nothing
    response.Write "<script language=javascript>alert('您登记的咨询信息我们已经收到,客服人员会尽快跟您联系!');history.go(-2);</script>"
    response.End

case "yy"
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_yy"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("name") = request.Form("name")
    rs("sex") = request.Form("sex")
    rs("age") = request.Form("age")
    rs("birth") = request.Form("birth")
    rs("Fname") = request.Form("Fname")
    rs("tel") = request.Form("tel")
    rs("email") = request.Form("email")
    rs("school") = request.Form("class")
    rs("hd") = request("school")
    rs.update
    rs.Close
    set rs=nothing
    conn.close
    set conn=nothing
    response.Write "<script language=javascript>alert('您登记的咨询信息我们已经收到,客服人员会尽快跟您联系!');history.go(-2);</script>"
    response.End

end select
%>
</body>
</html>
