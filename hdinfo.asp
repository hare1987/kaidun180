<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

                    
                    <div class="crumbs">
                  <div class="inner">
                  <span class="current">当前位置：当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;凯顿资讯  &nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">凯 顿 资 讯</li>
                     </ul>
                  </div>
               </div>
                      <div class="box">
                    
                    <table width="100%"  border="0" align="left" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="3%" height="23">&nbsp;</td>
                        <td width="97%" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ECECEC">
                            <tr>
                              <td height="117" valign="top" bgcolor="#FFF3C3"><%dim newsid
id=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from pf_hd where id="&id,conn,1,3
rs.update
%><script language=javascript>document.title='<%=rs("pf_link_name")%>_凯顿活动_凯顿儿童美语学校欢迎您!';</script>
                                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td rowspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="12v">
                                                <tr>
                                                  <td class="12v" ><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ECECEC">
                                                      <tr>
                                                        <td width="100%" height="28" valign="middle" bgcolor="#FFF3C3"><div align="center" class="style9"><strong><%=trim(rs("pf_link_name"))%></strong></div></td>
                                                      </tr>
                                                      <tr bgcolor="#FFFFFF">
                                                        <td height="24" valign="middle" bgcolor="#FFF3C3"><div align="right"><span class="STYLE7"></span></div></td>
                                                      </tr>
                                                      <tr bgcolor="#FFFFFF">
                                                        <td height="24" valign="middle" bgcolor="#FFF3C3"><div align="left"><%=trim(rs("content"))%></div></td>
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