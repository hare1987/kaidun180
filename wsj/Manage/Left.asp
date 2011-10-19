<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="Images/default.css" rel="stylesheet" type="text/css" />
<SCRIPT language=javascript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
<style type="text/css">
body{
      SCROLLBAR-FACE-COLOR:#4884CD;
      SCROLLBAR-HIGHLIGHT-COLOR:#F4F4F4;
      SCROLLBAR-SHADOW-COLOR:#F4F4F4;
      SCROLLBAR-3DLIGHT-COLOR:#4B85CF;
      SCROLLBAR-ARROW-COLOR:#F4F4F4;
      SCROLLBAR-TRACK-COLOR:#F4F4F4;
      SCROLLBAR-DARKSHADOW-COLOR:#4985CE;
      CURSOR:Default;
    }
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="150" height="189" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="3"></td>
      </tr>
      <tr>
        <td height="72">
		
<div style="display:">		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6" height="25"><img src="Images/left_l_left.gif" width="6" height="25" /></td>
            <td width="139" background="Images/left_l_bg.gif" class="Left_Item01_Title"><a href="#" onClick="showsubmenu(1)" style="color:#FFFFFF">基本信息管理</a></td>
            <td width="5" height="25"><img src="Images/left_l_right.gif" width="5" height="25" /></td>
          </tr>
          <tr>
            <td colspan="3">
			
<table id="submenu1" width="100%" border="0" cellspacing="0" cellpadding="0" style="display:">
              <tr>
                <td height="20" align="center" valign="middle" background="Images/left_menu_bg.gif"><a href="Admin/Manage.asp" target="main">管 理 员</a></td>
              </tr>
              <tr>
                <td height="20" align="center" valign="middle" background="Images/left_menu_bg.gif"><a href="Exit.asp" target="_parent" ONCLICK="javascript:return confirm('提示：您真的要退出系统吗？')">退出系统</a></td>
              </tr>
            </table>			</td>
            </tr>
        </table>
</div>		</td>
      </tr>
      <tr>
        <td height="64">
		<div style="display:">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="6" height="25"><img src="Images/left_l_left.gif" width="6" height="25" /></td>
              <td width="139" background="Images/left_l_bg.gif" class="Left_Item01_Title"><a href="#" onClick="showsubmenu(2)" style="color:#FFFFFF">报名管理</a></td>
              <td width="5" height="25"><img src="Images/left_l_right.gif" width="5" height="25" /></td>
            </tr>
            <tr>
              <td colspan="3"><table id="submenu2" width="100%" border="0" cellspacing="0" cellpadding="0" style="display:">
                  <tr>
                    <td height="20" align="center" valign="middle" background="Images/left_menu_bg.gif"><a href="Bm_List.asp" target="main">报名管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table>
        </div>	</td>
      </tr>
      <tr>
        <td height="45"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="6" height="25"><img src="Images/left_l_left.gif" width="6" height="25" /></td>
            <td width="137" background="Images/left_l_bg.gif" class="Left_Item01_Title"><a href="#" onClick="showsubmenu(7)" style="color:#FFFFFF">版权信息</a></td>
            <td width="7" height="25"><img src="Images/left_l_right.gif" width="5" height="25" /></td>
          </tr>
          <tr>
            <td colspan="3"><table id="submenu7" style="display:" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="25" align="center" valign="middle" background="Images/left_menu_bg.gif">版权所有 (C) 尚锦</td>
                </tr>
                
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</body>
</html>
