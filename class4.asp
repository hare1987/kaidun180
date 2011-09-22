<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;<a href="year.asp">年度班</a>&nbsp;&gt;ESL</span>
                       <ul>
                        <li class="style6">年度班</li>
                        <li class="style11"><a href="item.asp">特色班</a></li>
                        <li class="style11"><a href="star.asp">星级考</a></li>
                        <li class="style11"><a href="other.asp">其他班</a></li>    
                     </ul>
                  </div>
               </div>
               
<div class="contents">
			<div class="content">
				<div class="title">ESL</div>
                              <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>
                 <%=rs("z8")%>
				  <%
				  rs.close
				  set rs = nothing
				  %>
                  </div>
		</div>

</div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->