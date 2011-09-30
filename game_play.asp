<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
id=request.QueryString("id")
set rs1 = server.CreateObject("adodb.recordset")
sql = "select * from pf_game where id="&id
rs1.open sql,conn,1,1
%>
<%
title=rs1("pf_link_name")&" - 游戏下载 - "
%>
<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 游戏下载&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">游戏下载</li>
                     </ul>
                  </div>
               </div>
 <div class="box">
<table  width="750" height="500" border="0" align="left" cellpadding="0" cellspacing="0">
<tr>
 <td height="30">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="750" height="500" align="absmiddle">
                      <param name="movie" value="<%=rs1("pf_uploadfile")%>">
                      <param name="quality" value="high">
                      <embed src="<%=rs1("pf_uploadfile")%>" width="740" height="500" align="absmiddle" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed>
                    </object></td>
                  </tr>
                </table>
                </div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->