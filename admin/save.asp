<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>广西合盛地产有限公司</title>
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
	
	
case "yz"
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_yz"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("user") = request.Form("user")
    rs("tel") = request.Form("tel")
    rs("add") = request.Form("add")
    rs("email") = request.Form("email")
    rs("sex") = request.Form("sex")
    rs("postno") = request.Form("postno")
    rs("lp") = request.Form("lp")
    rs("datetime") = request.Form("datetime")
    rs("suggust") = request.Form("suggust")
    rs.update
    rs.Close
    set rs=nothing
    conn.close
    set conn=nothing
    response.Write "<script language=javascript>alert('您的意见与建议我们获悉,客服人员会尽快跟您联系!');</script><meta http-equiv=refresh content=0;URL=index.asp>;"
    response.End



end select
%>
</body>
</html>
