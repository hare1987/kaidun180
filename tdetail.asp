<!-- #include file = "top.asp"-->
<div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;<a href="star.asp">凯顿月之星</a>&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">凯顿月之星</li>
                     </ul>
                  </div>
               </div>	
    <div class="box">
    <h3 style="width:730px;"><div class="inner">
    <span><a href="star.asp"><img src="images/more.gif" width="32" height="13" border="0"></a></span>凯顿月之星</div></h3>
      <div class="m">
<%
id=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from pf_ms where id="&id,conn,1,3
%>

<img src="<%=rs("pf_uploadfile")%>">
姓名：<%=rs("pf_link_name")%><br />
校区：<%=rs("school")%><br />
获得奖项：<%=rs("position")%><br />
说明：<%=rs("pf_link_text")%><br />
</div>

<%rs.close
set rs=nothing%>
                              
                                      </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->
