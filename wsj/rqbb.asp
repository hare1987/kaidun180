<!-- #include file="Inc/Conn.asp" -->
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
	background-color: #000000;
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
  <table width="1003" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="381" background="images/top.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="66" background="images/center.jpg"><img src="images/menu.jpg" width="1003" height="96" border="0" usemap="#Map2"></td>
    </tr>
    <tr>
      <td height="14"><img src="images/topline.jpg" width="1003" height="100"></td>
    </tr>
    <tr>
      <td height="229" valign="top" background="images/leftline.jpg"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><div align="right"><strong><a href="sc.asp"><font color="#FF6600">我要报名&gt;&gt;&gt;</font></a></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            </div><br>
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="4">
              <%
id=Request("id")
if id="" or not isnumeric(id) then
	sql = "select * from Photo where ok=1 order by hit desc"
else
	sql = "select * from Photo where ok=1 and t="&id&" order by hit desc"
end if

Set rs=Server.CreateObject("Adodb.Recordset")
rs.Open sql, conn, 1, 1
if not rs.eof then
pages = 20  '定义每页显示的记录数
mpage = pages
mrs   = rs.Recordcount
rs.pageSize = pages '定义每页显示的记录数
allPages = rs.pageCount'计算一共能分多少页
page = Request.QueryString("page")'通过浏览器传递的页数
'if语句属于基本的排错处理
if isEmpty(page) or Cint(page) < 1 then
page = 1
elseif Cint(page) > allPages then
page = allPages 
end if
rs.AbsolutePage = page
Do while not rs.eof and pages > 0 
%>
              <tr>
                <td width="20%" align="center" valign="middle"><%
if not rs.eof then
  j=j+1
%>
                    <table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                      <tr>
                        <td width="6" rowspan="2">&nbsp;</td>
                        <td height="90" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"></a> <a href="View.asp?id=<%=rs("id")%>"><img src="Manage/UpLoad/upLoadImages/<%=rs("url")%>" width="120" height="90" border="0" /></a></td>
                        <td width="6" rowspan="2">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="25"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><font color="#FF3300"><%=rs("name")%></font></td>
                            </tr>
                            <tr>
                            <td width="50%" height="20" align="center" valign="middle"><a href="vote.asp?id=<%=rs("id")%>"><img src="images/1.gif" width="52" height="18" border="0" /></a></a></td>
                              <td width="50%" align="center" valign="middle">
                              
                            <img src="images/2.gif" width="52" height="18" border="0" /></td>
                            </tr>
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><font color="#FFFFFF">目前投票第<%=j+(page-1)*mpage%>名<br>得票数:<font color="#FF0000"><%=rs("hit")%></font>
                              </font></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                    </table>
                    <%
rs.MoveNext
pages=pages-1
end if
%>
                </td>
                <td width="20%" align="center" valign="middle"><%
if not rs.eof then
  j=j+1
%>
                    <table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                      <tr>
                        <td width="6" rowspan="2">&nbsp;</td>
                        <td height="90" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"><img src="Manage/UpLoad/upLoadImages/<%=rs("url")%>" width="120" height="90" border="0" /></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a></td>
                        <td width="6" rowspan="2">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="25"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><font color="#FF3300"><%=rs("name")%></font></td>
                            </tr>
                           <tr>
                              <td width="50%" height="20" align="center" valign="middle"><a href="vote.asp?id=<%=rs("id")%>"><img src="images/1.gif" width="52" height="18" border="0" /></a></a></td>
                              <td width="50%" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"><img src="images/2.gif" width="52" height="18" border="0" /></a></td>
                            </tr>
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><span class="style41">目前投票第<%=j+(page-1)*mpage%>名<br>得票数:<font color="#FF0000"><%=rs("hit")%></font></span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                    </table>
                    	</form>
                    <%
rs.MoveNext
pages=pages-1
end if
%></td>
                <td width="20%" align="center" valign="middle"><%
if not rs.eof then
  j=j+1
%>
                    <table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                      <tr>
                        <td width="6" rowspan="2">&nbsp;</td>
                        <td height="90" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"><img src="Manage/UpLoad/upLoadImages/<%=rs("url")%>" width="120" height="90" border="0" /></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a></td>
                        <td width="6" rowspan="2">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="25"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><font color="#FF3300"><%=rs("name")%></font></td>
                            </tr>
                       <tr>
                              <td width="50%" height="20" align="center" valign="middle"><a href="vote.asp?id=<%=rs("id")%>"><img src="images/1.gif" width="52" height="18" border="0" /></a></a></td>
                              <td width="50%" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"><img src="images/2.gif" width="52" height="18" border="0" /></a></td>
                            </tr>
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><span class="style41">目前投票第<%=j+(page-1)*mpage%>名<br>得票数:<font color="#FF0000"><%=rs("hit")%></font></span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                    </table>
                    <%
rs.MoveNext
pages=pages-1
end if
%></td>
                <td width="20%" align="center" valign="middle"><%
if not rs.eof then
  j=j+1
%>
                    <table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                      <tr>
                        <td width="6" rowspan="2">&nbsp;</td>
                        <td height="90" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"><img src="Manage/UpLoad/upLoadImages/<%=rs("url")%>" width="120" height="90" border="0" /></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a></td>
                        <td width="6" rowspan="2">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="25"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><font color="#FF3300"><%=rs("name")%></font></td>
                            </tr>
                               <tr>
                              <td width="50%" height="20" align="center" valign="middle"><a href="vote.asp?id=<%=rs("id")%>"><img src="images/1.gif" width="52" height="18" border="0" /></a></a></td>
                              <td width="50%" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"><img src="images/2.gif" width="52" height="18" border="0" /></a></td>
                            </tr>
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><span class="style41">目前投票第<%=j+(page-1)*mpage%>名<br>得票数:<font color="#FF0000"><%=rs("hit")%></font></span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                    </table>
                    <%
rs.MoveNext
pages=pages-1
end if
%></td>
                <td width="20%" align="center" valign="middle"><%
if not rs.eof then
  j=j+1
%>
                    <table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                      <tr>
                        <td width="6" rowspan="2">&nbsp;</td>
                        <td height="90" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"><img src="Manage/UpLoad/upLoadImages/<%=rs("url")%>" width="120" height="90" border="0" /></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a><a href="View.asp?id=<%=rs("id")%>"></a></td>
                        <td width="6" rowspan="2">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="25"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><font color="#FF3300"><%=rs("name")%></font></td>
                            </tr>
                             <tr>
                              <td width="50%" height="20" align="center" valign="middle"><a href="vote.asp?id=<%=rs("id")%>"><img src="images/1.gif" width="52" height="18" border="0" /></a></a></td>
                              <td width="50%" align="center" valign="middle"><a href="View.asp?id=<%=rs("id")%>"><img src="images/2.gif" width="52" height="18" border="0" /></a></td>
                            </tr>
                            <tr>
                              <td height="20" colspan="2" align="center" valign="middle"><span class="style41">目前投票第<%=j+(page-1)*mpage%>名<br>得票数:<font color="#FF0000"><%=rs("hit")%></font></span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="6" colspan="3"></td>
                      </tr>
                    </table>
                    <%
rs.MoveNext
pages=pages-1
end if
%></td>
              </tr>
              <%
loop
end if
rs.Close
Set rs=Nothing
%>
            </table>
              <table width="95%" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center"><font color="#FFFFFF">页次：<strong><span class="STYLE40"><%=page%></span>/<%=allpages%></strong>&nbsp;&nbsp;每页<strong><%=mpage%></strong>&nbsp;&nbsp;共<strong><%=mrs%></strong>&nbsp;&nbsp;分页：
                        <%
for i=1 to allpages
	if i=Cint(page) then
		Response.Write("[<a href='?page="&i&"'><strong class='STYLE40'>"&i&"</strong></a>]")
	else
		Response.Write("[<a href='?page="&i&"'>"&i&"</a>]")
	end if
next	
%>
                  </font></td>
                </tr>
            </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="18"><img src="images/bottomline.jpg" width="1003" height="100"></td>
    </tr>
  </table>
</div>
<map name="Map">
  <area shape="circle" coords="857,136,57" href="rqbb.asp">
</map>
<map name="Map2">
  <area shape="rect" coords="708,3,962,89" href="pgcj.asp">
  <area shape="rect" coords="375,3,647,91" href="rqbb.asp">
  <area shape="rect" coords="50,7,311,92" href="index.asp">
</map>
</body>
</html>
