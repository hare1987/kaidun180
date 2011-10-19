<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/MD5.asp" -->
<%
function R(s)
R = Replace(Trim(s), "'","")
R = Replace(R, """","")

end function
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网站后台管理系统</title>
<%

if Request("Action")=1 then
If Trim(Request.Form("validatecode"))=Empty Or Trim(Session("cnbruce.com_ValidateCode"))<>Trim(Request.Form("validatecode")) Then
response.write("<script language='javascript'>alert('验证码错误!');document.location.href('Login.asp');</script>")
response.end
end if
	SQL="Select * from A_d_m_i_n where name='" & R(Trim(Request("name"))) & "' and pass='" &MD5(R(Trim(Request("pass")))) & "'"
	set nrs=server.createobject("adodb.recordset")
	nrs.open SQL,conn,1,3
	if nrs.Bof and nrs.Eof then		
		Response.Write "<script language='javascript'>alert('用户名或密码错误!');document.location.href('Login.asp');</script>"
		Response.End()
	else
		Session("Admin")=nrs("name")
		Session("flag")=nrs("flag")
		nrs.Close
		Response.Redirect "Admin_Index.asp"
	
	
	end if
end if
%>

<link href="Images/default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE3 {font-size: 12px; color: #FF0000;}
-->
</style>
</head>

<body>
<table width="100%" height="75%" border="0" cellpadding="0" cellspacing="0">
  <tr valign="middle">
    <td height="44" align="center" valign="middle" background="Images/top_bg.gif">&nbsp;</td>
  </tr>
  <tr valign="middle">
    <td height="18" align="center" valign="middle" class="AddGoods_Left">后台管理系统</td>
  </tr>
  <tr valign="middle">
    <td height="5" align="center" valign="top" background="Images/topnav.gif"></td>
  </tr>
  <tr valign="middle">
    <td height="129" align="center" valign="top"><form id="form1" name="form1" method="post" action="?Action=1">
      <table width="513" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td width="128" rowspan="4" align="right" valign="middle"><img src="Images/3.gif" width="135" height="130" />　 </td>
          <td width="92" height="30" align="right" valign="middle" class="STYLE3">登录名：</td>
          <td width="283" height="30" align="left" valign="middle"><input name="name" type="text" id="name" size="20" maxlength="20" style="width:100px" />
            *</td>
        </tr>
        <tr>
          <td height="30" align="right" valign="middle" class="STYLE3">密　码：</td>
          <td height="30" align="left" valign="middle"><input name="pass" type="password" id="pass" size="20" maxlength="20"  style="width:100px" />
            *</td>
        </tr>
        <tr>
          <td height="30" align="right" valign="middle"><span class="STYLE3">验证码</span>:</td>
          <td height="30" align="left" valign="middle"><input name='validatecode' type='text' size='5' style="ime-mode:disabled" />
              <img src='Include/ChkCode/validatecode.asp' align='absmiddle' border='0' /></td>
        </tr>
        <tr>
          <td height="30" colspan="2" align="center" valign="middle"><input type="submit" name="Submit" value="　登　陆　" />
              &nbsp; <input type="reset" name="Submit2" value="　取　消　" onclick="javascript:window.openner='0';window.close();"/></td>
        </tr>
      </table>
    </form>    </td>
  </tr>
  <tr valign="middle">
    <td height="30" align="center" valign="middle" bgcolor="#efefef" class="STYLE3">今天是:<%=year(Now())%>年<%=Month(Now())%>月<%=Day(Now())%>日　您的IP是：<%=Request.ServerVariables("REMOTE_ADDR")%> 版权所有 (C) 2008 </td>
  </tr>
</table>
<p class="STYLE3">&nbsp;</p>
<p class="STYLE3">&nbsp;</p>
</body>
</html>