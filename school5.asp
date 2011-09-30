<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;<a href="school.asp">校区介绍</a>&nbsp;&gt;虹口东宝校</span>
                      <ul>
                        <li class="style6">校区介绍</li>
                     </ul>
                  </div>
               </div>
<div class="contents">
			<div class="content">
				<div class="title">虹口东宝校<span style="float:right;"><a href="yy.asp?school=虹口东宝校"><img src="images/yy.png" border="0"></a></span></div>
                 <%
				  set rs=server.CreateObject("adodb.recordset")
				  rs.open "select * from pf_sc where sc_num=6",conn,1,1
				  %>


<table  border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                          <td><img src="<%=rs("sc_p_logo")%>" width="600px"></td>
                          </tr>
                              <tr>
                              <td><%=rs("sc_about")%></td>
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
       
                      <tr>
                        <td><img src="<%=rs("sc_p_map")%>" align="middle"></td>
                      </tr>
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