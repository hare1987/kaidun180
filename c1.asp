<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
title="Phonic Magic Cards - ��ɫ�� - ���ٿγ� -  "
%>
<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;<a href="item.asp">��ɫ��</a>&nbsp;&gt;Phonic Magic Cards</span>
                          <ul>
                        <li class="style11"><a href="year.asp">��Ȱ�</a></li>
                        <li class="style6">��ɫ��</li>
                        <li class="style11"><a href="star.asp">�Ǽ���</a></li>
                        <li class="style11"><a href="other.asp">������</a></li>                    
                      </ul>
                  </div>
               </div>
   <div><img  src="images/bg1.png"/></div>
<div class="contents">
			<div class="content">
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>
                  <%=rs("z16")%>
				  <%
				  rs.close
				  set rs = nothing
				  %>
                    	</div>
		</div>
           <div><img  src="images/bg3.png"/></div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->