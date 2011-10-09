<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "确认添加" Then
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_sc"
    rs.Open sql, conn, 1, 3
    rs.addnew
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
		rsop("pf_op_sources") = "添加校区:"&request.Form("sc_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("添加成功！", "pf_sc.asp")
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
			<h1>校区管理</h1>
			
		</div>
		<div class="right_body">
			<table>
					<tr>
					<th >校区</th>
                    <th>电话</th>
                    <th >地址</th>
						<th width="90">修改操作</th>
					</tr>
					<%
sql = "select * from pf_sc order by sc_num asc"
Set rs = server.CreateObject("adodb.recordset")
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
				           <tr><td ><%=rs("sc_name")%></td>
                            <td ><%=rs("sc_tel")%></td>
                            <td ><%=rs("sc_address")%></td>
                            <td>[<a href="pf_sc_modify.asp?id=<%=rs("sc_num")%>">修改</a>] [<a href="pf_sc_delete.asp?id=<%=rs("sc_num")%>&opname=<%=rs("sc_name")%>" onclick="return confirm('确定要删除此消息吗？删除后将不可恢复！')">删除</a>]</td>
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
			<h1>徐汇田林校</h1>
			
		</div>
		<div class="right_body">
		  <table>
            <form method="post" name="pcfinal" id="pcfinal">
              <tr>
                <td align="center">学校名称：</td>
                <td><input type="text" name="pf_sc_name"  size="60" />
                    <span class="red">必填</span> </td>
              </tr>
              <tr>
                <td align="center">学校地址：</td>
                <td><input name="pf_sc_address" type="text" id="pf_sc_address"  size="60" /></td>
              </tr>
              <tr>
                <td align="center">学校交通：</td>
                <td><input name="pf_sc_bus" type="text" id="pf_sc_bus" size="60" /></td>
              </tr>
              <tr>
                <td width="80" align="center">学校电话：</td>
                <td><input type="text" name="pf_sc_tel"  size="60" /></td>
              </tr>
              <tr>
						<td align="center">链接地址：</td>
						<td>
							<input type="text" name="sc_link" size="70"/>
							<span class="red">必填</span> </td>
					</tr>
              <tr>
                <td rowspan="4" align="center">学校地图：</td>
                <td><input type="text" name="pf_uploadfile"  size="40" />
                    <span class="red">请输入Logo图片地址，或直接上传。</span> </td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td><input type="text" name="pf_uploadfile2"  size="40" />
                <span class="red">请输入Map图片地址，或直接上传。</span></td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td align="center">学校简介：</td>
                <td rowspan="2"><textarea name="content2" style="display:none"></textarea>
                    <iframe id="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&amp;style=standard" frameborder="0" scrolling="No" width="700" height="350"></iframe>                ? </td>
              </tr>
              <tr>
                <td align="center">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2" align="center"><input type="submit" name="submit" class="submit_button" value="确认添加" />                </td>
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
