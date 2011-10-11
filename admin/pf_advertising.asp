<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "确认添加" Then
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from advertising order by pf_sort"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("pf_link_name") = request.Form("pf_link_name")
    rs("pf_uploadfile") = request.Form("pf_uploadfile")
	rs("pf_link") = request.Form("pf_link")
    rs("pf_sort") = request.Form("pf_sort")
    rs.update
    Call close_rs
	
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "添加首页广告图片:"&request.Form("pf_link_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("添加成功！", "pf_advertising.asp")
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
			<h1>首页广告管理</h1>
			
		</div>
		<div class="right_body">
			<table>
            <div><p> <span class="red">说明：蓝色部分为首页显示的广告图片,设置首页最多显示10张图片</span></p></div>
            			<tr>
					<th width="200">广告标题</th>
                    <th width="200">广告链接</th>
                    <th width="200">页码</th>
					<th>修改操作</th>
				</tr>
<%
sql = "select * from advertising order by pf_sort"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
if  rs.eof or rs.bof then
%>
 暂无通知!
 <%
else
i = 0
do while not rs.eof  or rs.bof
i = i + 1
%>

<tr align="center"  <% if i<11 then %> style=" background:#9CF" <% end if %>>

					<td><%=rs("pf_link_name")%></td>
                    <td><%=rs("pf_link")%></td>
                    <td><%=rs("pf_sort")%></td>
                    <td>[<a href="pf_advertising_modify.asp?id=<%=rs("ID")%>">修改</a>] [<a href="pf_advertising_delete.asp?id=<%=rs("ID")%>&opname=<%=rs("pf_link_name")%>" onclick="return confirm('确定要删除此消息吗？删除后将不可恢复！')">删除</a>]</td>
				</tr>        
<%
rs.movenext
loop
end if
rs.close
set rs = nothing
%> 

			</table>
		</div>
		<div class="right_title">
			<h1>添加首页广告</h1>
		</div>
		<div class="right_body">
        <div><p> <span class="red">说明：蓝色部分为首页显示的广告图片,设置首页最多显示10张图片</span></p></div>
			<table>
				<form name="pcfinal" method="post">
					<tr>
                      <td align="center">广告文字：</td>
                      <td>
                       <input type="text" name="pf_link_name" size="60" />
                       </td>
				  </tr>
                  	<tr>
                      <td align="center">链接地址：</td>
                      <td><input name="pf_link"  type="text" id="pf_link" size="60"/></td>
				  </tr
					><tr>
						<td rowspan="2" align="center">广告图片：</td>
					  <td>
							<input type="text" name="pf_uploadfile" size="60" />
						  <span class="red">&nbsp;上传尺寸大小:530*280px</span></td>
					</tr>
					<tr>
						<td>
							<iframe src="pf_upload.asp" width="600" height="25" scrolling="auto" frameborder="0"></iframe>
						</td>
					</tr>
                    
                    	<tr>
                      <td align="center">页码：</td>
                      <td><input name="pf_sort" height="20" width="60"/>
                          <span class="red">数字越小排序越靠前</span> </td>
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
