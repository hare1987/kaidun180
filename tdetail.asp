<!-- #include file = "top.asp"-->
<div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;<a href="stars.asp">������֮��</a>&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">������֮��</li>
                     </ul>
                  </div>
               </div>	
<div class="contents">
			<div class="content">
				<div class="title">������֮��</div>
<%
id=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from pf_ms where id="&id,conn,1,3
%>
<div>
<img src="<%=rs("pf_uploadfile")%>>
<p>������<%=rs("pf_link_name")%><br />
У����<%=rs("school")%><br />
��ý��<%=rs("position")%><br />
˵����<%=rs("pf_link_text")%><br /></p>
</div>

<%rs.close
set rs=nothing%>
</div>
</div>
                              
                                      </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->
