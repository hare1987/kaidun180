<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;徐汇田林校</span>
                     <ul>
                        <li class="style6">徐汇田林校</li>
                        <li class="style11"><a href="school2.asp">黄浦书城校</a></li>
                        <li class="style11"><a href="school3.asp">浦东金桥校</a></li>
                        <li class="style11"><a href="school4.asp">闵行莘庄校</a></li>
                        <li class="style11"><a href="school5.asp">虹口东宝校</a></li>
                        <li class="style11"><a href="school6.asp">长宁虹桥校</a></li>
                        <li class="style11"><a href="school7.asp">松江九亭校</a></li>
                        <li class="style11"><a href="school8.asp">宝山大华校</a></li>
                     </ul>
                  </div>
               </div>
               
        
<div class="contents">
			<div class="content">
				<div class="title">凯顿介绍</div>
                              <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
                                     
               

                 <%
				  set rs=server.CreateObject("adodb.recordset")
				  rs.open "select * from pf_sc where sc_num=2",conn,1,1
				  %>

<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="form-table">
                        <tr>
                          <td width="220" height="212"><img src="<%=rs("sc_p_logo")%>" width="220" height="214"></td>
                          <td width="430" style="float:right; padding-left:20px;">
                          <table width="94%" border="0" align="center">
                            <tr>
                              <td width="45%"><%=rs("sc_name")%></td>
                              <td width="55%"><a href="yy.asp?school=徐汇田林校"><img src="images/yy.png" border="0"></a></td>
                            </tr>
                              <tr>
                              <td colspan="2"><%=rs("sc_about")%></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                        <td height="25" colspan="2">地址：<%=rs("sc_address")%></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2">公交：<%=rs("sc_bus")%></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2">电话：<%=rs("sc_tel")%></td>
                      </tr>
                    </table>
                    <table width="642" height="387" border="0" align="center">
                      <tr>
                        <td><img src="<%=rs("sc_p_map")%>" width="642" height="387" align="middle"></td>
                      </tr>
                    </table>
                        </table>
				  <%
				  rs.close
				  set rs= nothing
				  %>
                    </div>
                    </div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->