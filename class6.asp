<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;�������ǿγ�&nbsp;&gt;���ڿγ�</span>
                     <ul>
                        <li class="style6">���ڿγ�</li>
                        <li class="style6"> <a href="class3.asp">Hip Hip Hooray</a> </li>
                     </ul>
                  </div>
               </div>
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>
                  <td height="25"><%=rs("z15")%></td>
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