<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "确认添加" Then
    If request.Form("b_name") = "" Then
        Call infoback("公告名称不能为空！")
    End If
    If request.Form("b_content") = "" Then
        Call infoback("详细介绍不能为空！")
	End If
	 If request.Form("b_link") = "" Then
        Call infoback("链接地址不能为空！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from bulletin"
    rs.Open sql, conn, 1, 3
    rs.addnew
    rs("b_name") = request.Form("b_name")
	rs("b_content") = request.Form("b_content")
	rs("b_link") = request.Form("b_link")
    rs.update
    Call close_rs	
    Call close_conn
    Call infohref("公告添加成功！点击确认查看新闻列表！", "pf_bulletin.asp?id=1")
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
			<h1>添加公告</h1>
			
		</div>
		<div class="right_body">
			<table>
				<form name="pcfinal" method="post">
					<tr>
						<td width="80" align="center">公告名称：</td>
						<td>
							<input type="text" name="b_name" size="50" />
							<span class="red">必填</span> </td>
					</tr>
					<tr>
                      <td align="center">详细介绍：</td>
					  <td>
					  <textarea name="b_content" style="display:none"></textarea>
					  <iframe ID="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=b_content&style=standard" frameborder="0" scrolling="no" width="700" HEIGHT="350"></iframe> </td>
				  </tr>
                  	<tr>
						<td align="center">链接地址：</td>
						<td>
							<input type="text" name="b_link" size="70" />
							<span class="red">必填</span> </td>
					</tr>
					<tr>
                      <td colspan="2" align="center"><input type="submit" name="submit" class="submit_button" value="确认添加" />                      </td>
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
