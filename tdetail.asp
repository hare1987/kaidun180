<!-- #include file = "top.asp"-->
<div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;<a href="stars.asp">凯顿月之星</a>&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">凯顿月之星</li>
                     </ul>
                  </div>
               </div>	
<div class="contents">
			<div class="content">
				<div class="title">凯顿月之星</div>
<%
id=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from pf_ms where id="&id,conn,1,3
%>
<div>
<img src="<%=rs("pf_uploadfile")%>>
<p>姓名：<%=rs("pf_link_name")%><br />
校区：<%=rs("school")%><br />
获得奖项：<%=rs("position")%><br />
说明：<%=rs("pf_link_text")%><br /></p>
</div>

<%rs.close
set rs=nothing%>
</div>
</div>
                              
                                      </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->
