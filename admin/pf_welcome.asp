<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "确认修改" Then
    If request.Form("pf_site_hits") = "" Or Not IsNumeric(request.Form("pf_site_hits")) Then
        Call infoback("访问统计不能为空，而且必须为数字！")
    End If
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_site"
    rs.Open sql, conn, 1, 3
    rs("pf_site_name") = request.Form("pf_site_name")
    rs("pf_uploadfile") = request.Form("pf_uploadfile")
    rs("pf_site_contact") = request.Form("pf_site_contact")
    rs("pf_site_tel") = request.Form("pf_site_tel")
    rs("pf_site_mobile") = request.Form("pf_site_mobile")
    rs("pf_site_fax") = request.Form("pf_site_fax")
    rs("pf_site_qq") = request.Form("pf_site_qq")
    rs("pf_site_msn") = request.Form("pf_site_msn")
    rs("pf_site_email") = request.Form("pf_site_email")
    rs("pf_site_url") = request.Form("pf_site_url")
    rs("pf_site_address") = request.Form("pf_site_address")
    rs("pf_site_keywords") = request.Form("pf_site_keywords")
    rs("pf_site_description") = request.Form("pf_site_description")
    rs("pf_site_icp") = request.Form("pf_site_icp")
    rs("pf_site_hits") = request.Form("pf_site_hits")
    rs("pf_site_copyright") = request.Form("pf_site_copyright")
    rs("pf_site_code") = request.Form("pf_site_code")
    rs.update
    Call close_rs
    Call close_conn
    Call infoback("网站信息修改成功！")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网站管理后台</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
  <div id="right">
		<div id="div">
          <div class="right_title">
            <h1 align="center">服务器信息</h1>
          </div>
		  <div class="right_body">
		    <table class="table">
              <form method="post">
                <tr>
                  <td width="103" align="center"><div align="center">用户姓名：</div></td>
                  <td width="246"><div align="left"><%=session("pf_admin_name")%></div></td>
                  <td width="124"><div align="left">登陆系统时间：</div></td>
                  <td width="343"><div align="left"><% response.write(now) %></div></td>
                </tr>
                <tr>
                  <td align="center"><div align="center">服务器操作系统：</div></td>
                  <td><div align="left"><%=Request.ServerVariables("OS")%></div></td>
                  <td><div align="left">服务器软件和版本：</div></td>
                  <td><%=Request.ServerVariables("SERVER_SOFTWARE")%></td>
                </tr>
                <tr>
                  <td align="center"><div align="center">服务器 CPU 数量：</div></td>
                  <td><div align="left"><%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%></div></td>
                  <td><div align="left">服务器处理请求的端口：</div></td>
                  <td><div align="left"><%=Request.ServerVariables("SERVER_PORT")%></div></td>
                </tr>
                <tr>
                  <td align="center"><div align="center">站点物理路径：</div></td>
                  <td><div align="left"><%=request.ServerVariables("APPL_PHYSICAL_PATH")%></div></td>
                  <td><div align="left">虚拟路径：</div></td>
                  <td><div align="left"><%=Request.ServerVariables("SCRIPT_NAME")%></div></td>
                </tr>
                <tr align="center">
                  <td ><div align="center">脚本解释引擎：</div></td>
                  <td ><div align="left"><%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></div></td>
                  <td ><div align="left">脚本超时时间：</div></td>
                  <td ><div align="left"><%=Server.ScriptTimeout%>秒</div></td>
                </tr>
                
                <tr align="center">
                  <td ><div align="center">FSO文本文件读写：</div></td>
                  <td ><div align="left"><font color="red">√</font> </div></td>
                  <td ><div align="left">本次登陆域名IP：</div></td>
                  <td ><div align="left">http://<%=Request.ServerVariables("SERVER_NAME")%>&nbsp;/&nbsp;<%=Request.ServerVariables("LOCAL_ADDR")%></div></td>
                </tr>
                <tr align="center">
                  <td >&nbsp;</td>
                  <td >&nbsp;</td>
                  <td >&nbsp;</td>
                  <td >&nbsp;</td>
                </tr>
                <tr align="center">
                  <td ><div align="left"><strong>临时后台管理</strong> </div></td>
                  <td >&nbsp;</td>
                  <td >&nbsp;</td>
                  <td >&nbsp;</td>
                </tr>
                <tr align="center">
                  <td height="32" colspan="4" ><a href="http://www.kaidun180.com/hk/regresult.asp" target="_blank">虹口开校后台管理</a></td>
                </tr>
              </form>
	        </table>
	      </div>
    </div>
  </div>
	<div class="clear"></div>
</div>
<br />
<!--#include file="pf_bottom.asp"-->
</body>
</html>
