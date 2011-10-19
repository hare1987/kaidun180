<!-- #include file="Inc/Conn.asp" -->
<%

function getip() '获得客户端IP
	getip=Request.ServerVariables("REMOTE_ADDR") 
end function

id=Request.QueryString("id")
if id="" or not isnumeric(id) then
	Response.Write ("<script>alert('参数非法！');history.back();</script>")
	Response.End()
end if

SQL="Select * from Photo where id="&id
Set rs=server.createobject("adodb.recordset")
rs.open SQL,conn,1,3
if rs.eof then
	Response.Write ("<script>alert('参数非法,您不是经过投票进入的本页！');history.back();</script>")
	Response.End()
else
	name=rs("name")
end if
rs.Close
Set rs=Nothing
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>奇妙万圣夜</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
}
.STYLE40 {color: #FF0000}
.style41 {color: #FFFFFF}
-->
</style></head>

<body>
<div align="center">
  <table width="1000" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td><img src="images/top1.jpg" width="1000" height="88" border="0" usemap="#Map2"></td>
    </tr>
    <tr>
      <td height="56" bgcolor="7f1084"><div align="center">
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="765" height="200" align="center" valign="middle">
			<%
			    str = "您以ip"&getip()&"的名义成功地为"&name&"投上了一票,感谢您的参与"
				Response.Write ("<script>alert('"&str&"');</script><meta http-equiv=refresh content=0;URL=rqbb.asp>")
			%>
				</td>
          </tr>
        </table>
      </div></td>
    </tr>
    <tr>
      <td><img src="images/bottom1.jpg" width="1000" height="440"></td>
    </tr>
  </table>
</div>
<map name="Map">
  <area shape="circle" coords="817,98,57" href="rqbb.asp">
</map>
<map name="Map2">
  <area shape="rect" coords="797,4,946,86" href="sc.asp">
</map>
</body>
</html>
