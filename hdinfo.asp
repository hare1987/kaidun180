<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
id=request.QueryString("id")
set rs1=server.CreateObject("adodb.recordset")
rs1.open "select * from pf_hd where id="&id,conn,1,3
rs1.update
%>
<%
title=rs1("pf_link_name")&" - ���ٻ - "
%>
<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

                    
                    <div class="crumbs">
                  <div class="inner">
                  <span class="current">��ǰλ�ã���ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;<a href="hdmore.asp">���ٻ</a>&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">���ٻ</li>
                     </ul>
                  </div>
               </div>
                    <div><img  src="images/bg1.png"/></div>               
                    <div class="contents">
			<div class="content">
				<div class="title"><%=trim(rs1("pf_link_name"))%></div>
                <div class="section">
                <ul>
                             <li><%=trim(rs1("content"))%></li>
                           </ul>
                                  <%rs1.close
set rs1=nothing%>
                           
                    </div>
                    	</div>
		</div>
             <div><img  src="images/bg3.png"/></div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->