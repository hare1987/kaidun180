<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<!--#include file="pf_md5.asp"-->
<%
call iderror
If request.Form("submit") = "修改资料" Then
    
    'If request.Form("pf_admin_password") = "" Then
        'Call infoback("密码不能为空！")
    'End If
    If request.Form("pf_admin_password") <> request.Form("pf_admin_password_again") Then
        Call infoback("您两次输入的密码不一致！请重新输入！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_admin where id="&request.QueryString("ID")&""
    rs.Open sql, conn, 1, 3
	
	pf_admin_name = rs("pf_admin_name")
	pf_admin_password = rs("pf_admin_password")
	pf_admin_qx = rs("pf_admin_qx")	
	pf_admin_true_name = rs("pf_admin_true_name")	
	
    rs("pf_admin_jb") = request.Form("pf_admin_jb")
	if request.Form("pf_admin_password") <> "" then
    rs("pf_admin_password") = md5(request.Form("pf_admin_password"))
	end if
    rs("pf_admin_qx") = request.Form("pf_admin_qx")
    rs("pf_admin_true_name") = request.Form("pf_admin_true_name")
    rs.update
    Call close_rs
	
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		
		if pf_admin_password <> request.Form("pf_admin_password") and  request.Form("pf_admin_password") <>"" then
		pf_op_sources = "修改" & pf_admin_name &"管理密码成功;"
		end if
		if pf_admin_qx <> request.Form("pf_admin_qx") then
		pf_op_sources =  pf_op_sources  &  "修改" & pf_admin_name &"管理权限成功;"
		end if
		if pf_admin_true_name <> request.Form("pf_admin_true_name") then
		pf_op_sources =  pf_op_sources  &  "修改" & pf_admin_name &"管理员姓名成功"
		else
		pf_op_sources = "管理员信息未作任何修改"
		end if

		rsop("pf_op_sources") = pf_op_sources
 		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("管理员修改成功！", "pf_admin.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>凯顿儿童美语学校</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-family: Arial, Helvetica, sans-serif}
-->
</style>
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>管理员管理</h1>
			
		</div>
		<div class="right_body"><table class="table">
				<form method="post">
					<%
Set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_admin where ID = "&request.QueryString("ID")&""
rs.Open sql, conn, 1, 1

%>
					<tr>
						<td width="80" align="center">用户姓名：</td>
						<td>
						<%=rs("pf_admin_name")%> </td>
					</tr>
					<tr>
						<td align="center">真实姓名：</td>
						<td>
							<input name="pf_admin_true_name" type="text" size="40" maxlength="60" value="<%=rs("pf_admin_true_name")%>" />
						</td>
					</tr>
					<tr>
						<td align="center">密码：</td>
						<td>
							<input name="pf_admin_password" type="password" size="40" maxlength="16" />
						<span class="red">密码为空表示密码不修改</span> </td>
					</tr>
					<tr>
                      <td align="center">确认密码：</td>
                      <td><input name="pf_admin_password_again" type="password" size="40" maxlength="16" />
                      </td>
				  </tr>
					<tr>
                      <td align="center">管理员级别：</td>
                      <td><select name="pf_admin_jb" id="pf_admin_jb">
                          <option value="0" <%if  rs("pf_admin_jb") = "0" then %>  selected="selected"  <%end if%>>管理员</option>
                          <option value="1" <%if  rs("pf_admin_jb") = "1" then %>  selected="selected"  <%end if%>>操作员</option>
                          <option value="2" <%if  rs("pf_admin_jb") = "2" then %>  selected="selected"  <%end if%>>观察员</option>
                        </select>
                      </td>
				  </tr>
					<tr>
					
       <%if  rs("pf_admin_jb") = "1" then %>              
					  <td align="center">操作员权限：</td>
                      <td><input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="活动新闻" <%if InStr(rs("pf_admin_qx"),"活动新闻") then %>checked="checked" <%end if%> />
活动新闻 &nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="游戏下载"  <%if InStr(rs("pf_admin_qx"),"游戏下载") then %>checked="checked" <%end if%>/> 
&nbsp;游戏下载 &nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="友情链接" <%if InStr(rs("pf_admin_qx"),"友情链接") then %>checked="checked" <%end if%>/>
&nbsp;友情链接<span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="首页广告"   <%if InStr(rs("pf_admin_qx"),"首页广告") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;首页广告</span><span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="首页联系方式"   <%if InStr(rs("pf_admin_qx"),"首页联系方式") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;首页联系方式</span>&nbsp; <span class="red">|</span> &nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="凯顿介绍"  <%if InStr(rs("pf_admin_qx"),"凯顿介绍") then %>checked="checked" <%end if%>/>
&nbsp;凯顿介绍&nbsp;&nbsp; <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="特色理念"   <%if InStr(rs("pf_admin_qx"),"特色理念") then %>checked="checked" <%end if%>/>
&nbsp;特色理念&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="组织架构"   <%if InStr(rs("pf_admin_qx"),"组织架构") then %>checked="checked" <%end if%> /> 
&nbsp;组织架构&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="名师推荐"  <%if InStr(rs("pf_admin_qx"),"名师推荐") then %>checked="checked" <%end if%> />
&nbsp;名师推荐<br />
<br />
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="ABCbakery"   <%if InStr(rs("pf_admin_qx"),"ABCbakery") then %>checked="checked" <%end if%> />
<span class="style1">ABCbakery</span>&nbsp;&nbsp;
 
 <input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="LA"   <%if InStr(rs("pf_admin_qx"),"LA") then %>checked="checked" <%end if%> />
LA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Hip"   <%if InStr(rs("pf_admin_qx"),"Hip") then %>checked="checked" <%end if%> />
&nbsp;<span class="style1">Hip</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="ESL"   <%if InStr(rs("pf_admin_qx"),"ESL") then %>checked="checked" <%end if%> />
&nbsp;<span class="style1">ESL</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Star Test"   <%if InStr(rs("pf_admin_qx"),"Star Test") then %>checked="checked" <%end if%> /> 
<span class="style1">Star Test</span>&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="短期课程"   <%if InStr(rs("pf_admin_qx"),"短期课程") then %>checked="checked" <%end if%> />
&nbsp;短期课程<br />
<br />
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Phonic Magic"   <%if InStr(rs("pf_admin_qx"),"Phonic Magic") then %>checked="checked" <%end if%> />
<span class="style1">Phonic Magic&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="S Chant"   <%if InStr(rs("pf_admin_qx"),"S Chant") then %>checked="checked" <%end if%> />
Sing Chant&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="Reading House"   <%if InStr(rs("pf_admin_qx"),"Reading House") then %>checked="checked" <%end if%> />
&nbsp;Reading House &nbsp;&nbsp; <span class="red">|</span> &nbsp;&nbsp; 
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="田林校区"   <%if InStr(rs("pf_admin_qx"),"田林校区") then %>checked="checked" <%end if%> />
&nbsp;田林校区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="书城校区"   <%if InStr(rs("pf_admin_qx"),"书城校区") then %>checked="checked" <%end if%> />
书城校区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="浦东校区"   <%if InStr(rs("pf_admin_qx"),"浦东校区") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;浦东校区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="莘庄校区"   <%if InStr(rs("pf_admin_qx"),"莘庄校区") then %>checked="checked" <%end if%> />
莘庄校区<br />
<br />
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="联系我们"   <%if InStr(rs("pf_admin_qx"),"联系我们") then %>checked="checked" <%end if%> />
联系我们&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="活动管理"   <%if InStr(rs("pf_admin_qx"),"活动管理") then %>checked="checked" <%end if%> />
活动管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="人才招聘"   <%if InStr(rs("pf_admin_qx"),"人才招聘") then %>checked="checked" <%end if%> />
&nbsp;人才招聘&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="添加新闻"   <%if InStr(rs("pf_admin_qx"),"添加新闻") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;&nbsp;添加新闻&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="pf_admin_qx" type="checkbox" id="pf_admin_qx" value="管理新闻"   <%if InStr(rs("pf_admin_qx"),"管理新闻") then %>checked="checked" <%end if%> />
&nbsp;&nbsp;管理新闻</span></td>

<%end if%>
				  </tr>
					<tr align="center">
						<td colspan="2">
							<input name="submit" type="submit" class="submit_button" value="修改资料" />
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
