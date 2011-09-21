<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
call iderror
If request.Form("submit") = "确认修改" Then
    'If request.Form("pf_news_name") = "" Then
        'Call infoback("新闻名称不能为空！")
    'End If
    'If request.Form("pf_news_order") = "" Or Not IsNumeric(request.Form("pf_news_order")) Then
     '   Call infoback("排序数字不能为空，且必须为数字！")
   ' End If
    If request.Form("content2") = "" Then
        Call infoback("内容不能为空！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_sc where sc_num="&request.QueryString("id")&""
    rs.Open sql, conn, 1, 3
    rs("sc_name")=request.Form("pf_sc_name")
	rs("sc_address")=request.Form("pf_sc_address")
	rs("sc_bus")=request.Form("pf_sc_bus")
	rs("sc_tel")=request.Form("pf_sc_tel")
	rs("sc_link")=request.Form("sc_link")
    rs("sc_about") = request.Form("content2")
	rs("sc_p_logo")=request.Form("pf_uploadfile")
	rs("sc_p_map")=request.Form("pf_uploadfile2")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "修改虹口校区信息"
		rsop.update
		rsop.close
		set rsop = nothing
	
    Call close_conn
    Call infohref("修改成功！", "pf_sc5.asp?id=6")
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
			<h1>长宁虹桥校</h1>
			
		</div>
		<div class="right_body">
			<table>
				<%
	set rs = server.CreateObject("adodb.recordset")
	sql = "select * from pf_sc where sc_num="&request.QueryString("id")&""
	rs.open sql,conn,1,1
	If rs.eof Then
		Call infoback("不存在此数据")
	End If
	%>
				<form method="post" name="pcfinal" id="pcfinal">
              <tr>
                <td align="center">学校名称：</td>
                <td><input type="text" name="pf_sc_name" value="<%=rs("sc_name")%>" size="60" />
                    <span class="red">必填</span> </td>
              </tr>
              <tr>
                <td align="center">学校地址：</td>
                <td><input name="pf_sc_address" type="text" id="pf_sc_address" value="<%=rs("sc_address")%>" size="60" /></td>
              </tr>
              <tr>
                <td align="center">学校交通：</td>
                <td><input name="pf_sc_bus" type="text" id="pf_sc_bus" value="<%=rs("sc_bus")%>" size="60" /></td>
              </tr>
              <tr>
                <td width="80" align="center">学校电话：</td>
                <td><input type="text" name="pf_sc_tel" value="<%=rs("sc_tel")%>" size="60" /></td>
              </tr>
                    <tr>
						<td align="center">链接地址：</td>
						<td>
							<input type="text" name="sc_link" size="70" value="<%=rs("sc_link")%>"/>
							<span class="red">必填</span> </td>
					</tr>
              <tr>
                <td rowspan="4" align="center">学校地图：</td>
                <td><input type="text" name="pf_uploadfile" value="<%=rs("sc_p_logo")%>" size="40" />
                    <span class="red">请输入Logo图片地址，或直接上传。</span> </td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td><input type="text" name="pf_uploadfile2" value="<%=rs("sc_p_map")%>" size="40" />
                <span class="red">请输入Map图片地址，或直接上传。</span></td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td align="center">学校简介：</td>
                <td rowspan="2"><textarea name="content2" style="display:none"><%=rs("sc_about")%></textarea>
                    <iframe id="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&amp;style=standard" frameborder="0" scrolling="No" width="700" height="350"></iframe>                ? </td>
              </tr>
              <tr>
                <td align="center">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2" align="center"><input type="submit" name="submit" class="submit_button" value="确认修改" />                </td>
              </tr>
            </form>
				<%
				Call close_rs
Call close_conn
				%>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
