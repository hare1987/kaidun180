<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;������</span>
                     <ul>                        
                        <li class="style11"><a href="year.asp">��Ȱ�</a></li>    
                        <li class="style11"><a href="item.asp">��ɫ��</a></li>
                        <li class="style11"><a href="star.asp">�Ǽ���</a></li>
                        <li class="style6">������</li>
                     </ul>
                  </div>
               </div>
<div class="contents">
			<div class="content">
				<div class="title">Hip Hip Hooray</div>
                              <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>
                <%=rs("z7")%>
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