<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;�ֶ�����У</span>
                     <ul>
                        <li class="style6">�ֶ�����У</li>
                        <li class="style11"><a href="school1.asp">�������У</a></li>
                        <li class="style11"><a href="school2.asp">�������У</a></li>
                        <li class="style11"><a href="school4.asp">����ݷׯУ</a></li>
                        <li class="style11"><a href="school5.asp">��ڶ���У</a></li>
                        <li class="style11"><a href="school6.asp">��������У</a></li>
                        <li class="style11"><a href="school7.asp">�ɽ���ͤУ</a></li>
                        <li class="style11"><a href="school8.asp">��ɽ��У</a></li>
                     </ul>
                  </div>
               </div>
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_sc where sc_num=4",conn,1,1
				  %>
                  <td height="25"><div align="left">
                    <table width="642" height="324" border="0" align="center">
                      <tr>
                        <td width="220" height="212"><img src="<%=rs("sc_p_logo")%>" alt="" width="221" height="214"></td>
                        <td width="578"><table width="94%" height="236" border="0" align="center">
                            <tr>
                              <td width="45%" height="40"><div align="center" class="STYLE13"><%=rs("sc_name")%></div></td>
                              <td width="55%" height="40"><a href="yy.asp?school=����У��"><img src="images/yy.png" alt="" width="140" height="50" border="0"></a></td>
                            </tr>
                            <tr>
                              <td colspan="2"><p align="left" class="STYLE14"><%=rs("sc_about")%></p></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2"><div align="left"><span class="STYLE19">��ַ��<%=rs("sc_address")%></span></div></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2"><div align="left"><span class="STYLE19">������<%=rs("sc_bus")%></span></div></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2"><div align="left"><span class="STYLE19">�绰��<%=rs("sc_tel")%></span></div></td>
                      </tr>
                    </table>
                    <table width="642" height="387" border="0" align="center">
                      <tr>
                        <td><img src="<%=rs("sc_p_map")%>" alt="" width="642" height="387" align="middle"></td>
                      </tr>
                    </table>
                  </div></td>
				  <%
				  rs.close
				  set rs = nothing
				  %>
                  </tr>
                </table></td>
              </tr>
                    </table>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->