<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
             
                    <div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 凯顿通知&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">凯 顿 通 知</li>
                   
                     </ul>
                  </div>
               </div> 
      <div class="box">               
<table width="97%"  border="0" align="left" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="3%" height="23">&nbsp;</td>
                        <td width="97%" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ECECEC">
                            <tr>
                              <td height="117" valign="top" bgcolor="#FFFFFF"><%dim newsid
id=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from pf_news where id="&id,conn,1,3
rs("pf_news_hits")=rs("pf_news_hits")+1
rs.update
%><script language=javascript>document.title='<%=rs("pf_news_name")%>_<%=rs("pf_news_category")%>_凯顿儿童美语学校欢迎您!';</script>
                                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td rowspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="12v">
                                                <tr>
                                                  <td class="12v" ><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ECECEC">
                                                      <tr>
                                                        <td width="100%" height="28" valign="middle" bgcolor="#FFFFFF"><div align="center" class="style9"><strong><%=trim(rs("pf_news_name"))%></strong></div></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="28" valign="middle" bgcolor="#FFFFFF"><div align="center">来源：<%=trim(rs("pf_news_sources"))%></div></td>
                                                      </tr>
                                                      <tr bgcolor="#FFFFFF">
                                                        <td height="24" valign="middle"><div align="right"><span class="STYLE7"><font color="#C12318">[<%=formatdatetime(rs("pf_news_date"),2)%>]</font></span></div></td>
                                                      </tr>
                                                      <tr bgcolor="#FFFFFF">
                                                        <td height="24" valign="middle"><%=trim(rs("pf_news_content"))%></td>
                                                      </tr>
                                                  </table></td>
                                                </tr>
                                            </table></td>
                                          </tr>
                                      </table></td>
                                    </tr>
                                  </table>
                                  <%rs.close
set rs=nothing%>
                              </td>
                            </tr>
                        </table></td>
                      </tr>
                    </table>
                    </div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->