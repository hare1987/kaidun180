<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "确认添加" Then
    If request.Form("pf_link_name") = "" Then
        Call infoback("标题不能为空！")
    End If
    If request.Form("pf_link_text") = "" Then
        Call infoback("简要说明不能为空！")
    End If
	If request.Form("content2") = "" Then
        Call infoback("内容不能为空！")
    End If
    'If request.Form("pf_link_url") = "" Then
        'Call infoback("链接地址不能为空！")
    'End If
    'If request.Form("pf_link_order") = "" Or Not IsNumeric(request.Form("pf_link_order")) Then
        'Call infoback("排序数字不能为空！而且必须为数字！")
    'End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_hd order by ID desc"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("pf_link_name") = request.Form("pf_link_name")
    If request.Form("pf_uploadfile") = "" Then
        rs("pf_uploadfile") = "text"
    Else
        rs("pf_uploadfile") = request.Form("pf_uploadfile")
    End If
    rs("pf_link_style") = request.Form("pf_link_style")
	rs("pf_link_text") = request.Form("pf_link_text")
    rs("content") = request.Form("content2")
    rs.update
    Call close_rs
	
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "添加活动新闻:"&request.Form("pf_link_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("添加成功！", "pf_hd_index.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校欢迎您!</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>修改首页活动新闻</h1>
			
		</div>
		<div class="right_body">
			<table>
				<tr>
					<th width="200">新闻标题</th>
					<th>类型</th>
					<th>修改操作</th>
				</tr>
<%
sql = "select * from pf_hd where pf_uploadfile <> 'text' order by ID desc"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "暂无新闻！"
Else
    rs.PageSize =20
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
					<td><%=rs("pf_link_name")%></td>
					<td>[<a href="pf_hd_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_hd_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_link_name")%>" onclick="return confirm('确定要删除此消息吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>
			<%
		rs.movenext
		Next
		Call close_rs
		Call close_conn
End If 
		%>
                       <%call pcfinal_page%>
			</table>
		</div>
		<div class="right_title">
			<h1>添加首页活动新闻</h1>
		</div>
		<div class="right_body">
			<table>
				<form name="pcfinal" method="post">
					<tr>
                      <td width="9%" align="center">新闻标题：</td>
                      <td width="91%"><input type="text" name="pf_link_name" size="60" />
                          <span class="red">必填</span> </td>
				  </tr>
					<tr>
                      <td align="center">简要说明：</td>
                      <td><textarea name="pf_link_text" cols="60" id="pf_link_text"></textarea>
                          <span class="red">控制在255个字符之内</span> </td>
				  </tr>
					<tr>
						<td rowspan="2" align="center">主题小图片：</td>
					  <td>
							<input type="text" name="pf_uploadfile" size="40" />
						  <span class="red">&nbsp;上传尺寸大小:84*62px</span></td>
					</tr>
					<tr>
						<td>
							<iframe src="pf_upload.asp" width="600" height="25" scrolling="auto" frameborder="0"></iframe>
						</td>
					</tr>
					<tr>
					  <td align="center">详细内容：</td>
					  <td rowspan="2"><textarea name="content2" style="display:none"></textarea>
						<iframe ID="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&style=standard" frameborder="0" scrolling="no" width="700" HEIGHT="350"></iframe>  </td>
				  </tr>
					<tr>
						<td align="center">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" name="submit" class="submit_button" value="确认添加">
						</td>
					</tr>
				</form>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
