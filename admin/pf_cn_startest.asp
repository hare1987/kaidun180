<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "删除选中" Then
    If Request("id") = "" Then
        Call infoback("请选中要删除的信息！")
    End If
    sql = "delete from cn_startest where id in ("&Request("id")&")"
    conn.Execute ( sql )
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "删除id为" & Request("id") &"在线预约记录"
		rsop.update
		rsop.close
		set rsop = nothing
	
	Call close_conn
    Call infohref("成功删除选中的信息！", "pf_cn_startest.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校欢迎您!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>在线预约&nbsp;&nbsp;&nbsp;&nbsp;<span class="right_body"><span class="style3"><a href="doexcel1.asp" target="_blank"><font color="#FF0000">导出<span class="style2">excel</span>数据</font></a></span></span></h1>
			
		</div>
		<div class="right_body">
			<table>
				<form method="post">
					<tr>
						<th width="59">选    择</th>
						<th width="99">姓名</th>
						<th width="92">性别</th>
						<th width="117">联系方式</th>
						<th width="151">E-mail</th>
						<th width="91">填写时间</th>
					</tr>
					<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from cn_startest order by id desc"
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无信息！"
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
							<input name="ID" type="checkbox" id="ID" value="<%=rs("id")%>" />						</td>
						<td><%=rs("cn_name")%></td>
						<td><%=rs("cn_age")%></td>
						<td><%=rs("cn_conn")%></td>
						<td><%=rs("cn_email")%></td>

						<td><%=rs("cn_time")%></td>

					</tr>

					<%
		rs.movenext
		Next
		End If
		Call close_rs
		Call close_conn
		%>
					<tr align="center">
						<td>
							<script type="text/javascript">
function check_all(obj,cName)
{
var checkboxs = document.getElementsByName(cName);
for(var i=0;i<checkboxs.length;i++){checkboxs[i].checked = obj.checked;}
}
</script>
							<input name="ID" type="checkbox" onclick="check_all(this,'ID')">						</td>
						<td colspan="9">
							<input type="submit" name="submit" class="submit_button" value="删除选中" onclick="return confirm('确定要删除选中的信息吗？删除后将不可恢复！')" />						</td>
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
