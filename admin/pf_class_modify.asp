<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
Call iderror
If request.Form("submit") = "确认修改" Then
    If request.Form("class_name") = "" Then
        Call infoback("开班名称不能为空！")
    End If
    If request.Form("class_date") = "" Then
        Call infoback("上课日期不能为空！")
    End If
	 If request.Form("class_time") = "" Then
        Call infoback("上课时间不能为空！")
    End If
	 If request.Form("class_address") = "" Then
        Call infoback("上课地点不能为空！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from class where ID= "&request.QueryString("ID")&""
    rs.Open sql, conn, 1, 3
    rs("class_name") = request.Form("class_name")
	rs("class_time") = request.Form("class_time")
	rs("class_date") = request.Form("class_date")
	rs("class_address") = request.Form("class_address")
    rs.update
    Call close_conn
    Call infohref("修改成功！", "pf_class.asp")
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
			<h1>修改开班信息</h1>
			
		</div>
	  <div class="right_body">
			<table>
				<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from class where ID= "&request.QueryString("ID")&""
rs.Open sql, conn, 1, 1
If rs.EOF Then
    Call infoback("不存在此数据")
End If
%>
			<form name="pcfinal" method="post">
					<tr>
                      <td width="9%" align="center">开班名称：</td>
                      <td width="91%"><input type="text" name="class_name" size="60"  value="<%=rs("class_name")%>" />
                          <span class="red">必填</span> </td>
				  </tr>
                       <tr>
                      <td width="9%" align="center">开班时间：</td>
                      <td width="91%"><input type="text" name="class_time" size="60"  value="<%=rs("class_time")%>"/>
                    </td>
				  </tr>
                  <tr>
                      <td width="9%" align="center">开班日期：</td>
                      <td width="91%"><input type="text" name="class_date" size="60"  value="<%=rs("class_date")%>"/>
                    </td>
				  </tr>
					<tr>
                      <td align="center">开班地点：</td>
                      <td><select name="class_address" id="class_address">
                          <option value="<%=rs("class_address")%>">不修改</option>
                        <option>徐汇田林校</option>
                        <option>黄浦书城校</option>
                        <option>浦东金桥校</option>
                        <option>闵行莘庄校</option>
                        <option>虹口东宝校</option>
                        <option>长宁虹桥校</option>
                        <option>松江九亭校</option>
                        <option>宝山大华校</option>                                                                                                                                      </select>
                        	<tr>
						<td colspan="2" align="center">
							<input type="submit" name="submit" class="submit_button" value="确认修改">
						</td>
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
