<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;<a href="school.asp">У������</a>&nbsp;&gt;�ֶ�����У</span>
                     <ul>
                        <li class="style6">У������</li>
                     </ul>
                  </div>
               </div>
<div class="contents">
			<div class="content">
				<div class="title">�ֶ�����У<span style="float:right;"><a href="yy.asp?school=�ֶ�����У"><img src="images/yy.png" border="0"></a></span></div>
                 <%
				  set rs=server.CreateObject("adodb.recordset")
				  rs.open "select * from pf_sc where sc_num=4",conn,1,1
				  %>

<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="form-table">
                        <tr>
                          <td width="225" height="212">
                          <img src="<%=rs("sc_p_logo")%>" width="225" height="214"></td>
                          <td width="425" style="float:right; padding-left:20px;">
                          <table width="94%" border="0" align="center">
                              <tr>
                              <td><%=rs("sc_about")%></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                        <td height="25" colspan="2">��ַ��<%=rs("sc_address")%></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2">������<%=rs("sc_bus")%></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2">�绰��<%=rs("sc_tel")%></td>
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