<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "删除选中" Then
    If Request("id") = "" Then
        Call infoback("请选中要删除的新闻！")
    End If
    sql = "delete from pf_news where id in ("&Request("id")&")"
    conn.Execute ( sql )
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "删除id为" & Request("id") &"的新闻"
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call infohref("成功删除选中的新闻！", "pf_news_serch.asp")
	Call close_conn
End If
If request.Form("submit") = "设为推荐" Then
    If Request("id") = "" Then
        Call infoback("请选中要设为推荐的新闻！")
    End If
    sql = "update pf_news set pf_news_rec = true where id in ("&Request("id")&")"
    conn.Execute ( sql )
    Call infohref("设为推荐成功", "pf_news.asp")
	Call close_conn
End If
If request.Form("submit") = "设为热点" Then
    If Request("id") = "" Then
        Call infoback("请选中要设为热点的新闻！")
    End If
    sql = "update pf_news set pf_news_hot = true where id in ("&Request("id")&")"
    conn.Execute ( sql )
    Call infohref("设为热点成功", "pf_news.asp")
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
			<h1>新闻管理</h1>			
		</div>
		<div class="right_body">
<div align="left">
<form action="pf_news_serch.asp" method="post" name="form"> 
<input name="key" type="text" id="key"  size="60"> 
<input type="submit" name="submit" value="搜索"> 
</form>
</div> 

			<table>
				<form method="post">
					<tr>
						<th width="60">选择</th>
						<th width="431">新闻名称</th>
						<th width="282">所属分类</th>
						<th width="210">发布时间</th>
						<th width="131">最后修改</th>
						<th width="65">点击</th>
						<th width="90">修改操作</th>
                        </tr>
		<% 
dim key
key=Trim(request.form("key"))
sql="select * from pf_news where pf_news_name like '%" & key & "%' order by ID desc"
set rs=server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无新闻！"
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
						<td><%=rs("pf_news_name")%></td>
						<td>
						<%=rs("pf_news_category")%>
						</td>
				<td><%=formatdatetime(rs("pf_news_date"),2)%></td>
				<td><%=formatdatetime(rs("pf_news_modify_date"),2)%></td>
				<td><%=rs("pf_news_hits")%></td>
						<td>[<a href="pf_news_modify.asp?id=<%=rs("id")%>">修改新闻</a>]</td>
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
						<td colspan="8">
							<input type="submit" name="submit" class="submit_button" value="删除选中" onclick="return confirm('确定要删除选中的新闻吗？删除后将不可恢复！')" />
						</td>
					</tr>
				</form>
			<%call pcfinal_page%>
		</div>

	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body> 
</html> 
