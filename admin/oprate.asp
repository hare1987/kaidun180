<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "删除选中" Then
    If Request("id") = "" Then
        Call infoback("请选中要删除的操作记录！")
    End If
    sql = "delete from pf_oprate where id in ("&Request("id")&")"
    conn.Execute ( sql )
    Call infohref("删除成功！", "oprate.asp")
	Call close_conn
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>操作日志管理</h1>
			
		</div>
		<div class="right_body">
			<table>
				<form method="post">
					<tr>
						<th width="88">选择</th>
						<th width="93">操作员</th>
						<th width="965">操作明细</th>
						<th width="135">操作时间</th>
					</tr>
					<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_oprate order by pf_op_date desc"
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无操作记录！"
Else
    rs.PageSize = 20
    allpage = rs.RecordCount
    iPageSize = rs.PageSize
    maxpage = rs.PageCount
    page = request("page")
    If Not IsNumeric(page) Or page = "" Then
        page = 1
    Else
        page = CInt(page)
    End If
    If page<1 Then
        page = 1
    ElseIf page>maxpage Then
        page = maxpage
    End If
    rs.AbsolutePage = Page
    If page = maxpage Then
        x = allpage - (maxpage -1) * iPageSize
    Else
        x = iPageSize
    End If
    For i = 1 To x
%>
					<tr align="center">
						<td>
							<input name="ID" type="checkbox" id="ID" value="<%=rs("id")%>" />
						</td>
						<td><%=rs("pf_op_name")%></td>
						<td>
						  <div align="left"><%=rs("pf_op_sources")%>
						    </div></td>
				<td><%=rs("pf_op_date")%></td>
				</tr>
					<%
		rs.movenext
		Next
		Call close_rs
		Call close_conn
End If
		%>
					<tr align="center">
						<td>
							<input name="ID" type="checkbox" onclick="check_all(this,'ID')">
						</td>
						<script type="text/javascript">
function check_all(obj,cName)
{
var checkboxs = document.getElementsByName(cName);
for(var i=0;i<checkboxs.length;i++){checkboxs[i].checked = obj.checked;}
}
</script>
						<td colspan="5">
							<input type="submit" name="submit" class="submit_button" value="删除选中" onclick="return confirm('确定要删除选中的新闻吗？删除后将不可恢复！')" />
						</td>
					</tr>
				</form>
			</table>
			<%call pcfinal_page%>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
