<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
id=request.QueryString("id")
set rs1=server.CreateObject("adodb.recordset")
rs1.open "select * from pf_ms where id="&id,conn,1,3
%>
<%
title=rs1("pf_link_name")&" - ������֮�� - "
%>
<!-- #include file = "top.asp"-->
<div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;<a href="stars1.asp">������֮��</a>&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">������֮��</li>
                     </ul>
                  </div>
               </div>	
<div class="contents">
			<div class="content">
				<div class="title">������֮��</div>

<div class="teacher" style="width:600px;">
<img src="<%=rs1("pf_uploadfile")%>"/>
<p>������<%=rs1("pf_link_name")%><br />
У����<%=rs1("school")%><br />
��ý��<%=rs1("position")%><br />
˵����<%=rs1("pf_link_text")%><br /></p>
</div>

<%rs1.close
set rs1=nothing%>
</div>
</div>
                              
                                      </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->
