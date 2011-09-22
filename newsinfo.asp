<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; <a href="news.asp">新闻资讯</a>&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">新闻资讯</li>
                     </ul>
                  </div>
               </div>
               <%dim newsid
id=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from pf_news where id="&id,conn,1,3
rs("pf_news_hits")=rs("pf_news_hits")+1
rs.update
%><script language=javascript>document.title='<%=rs("pf_news_name")%>_<%=rs("pf_news_category")%>_凯顿儿童美语学校欢迎您!';</script>

<div class="contents">
			<div class="content">
				<div class="title">
<%=trim(rs("pf_news_name"))%>	</div>
				<div class="section">
<ul>
    <li>[<%=formatdatetime(rs("pf_news_date"),2)%>]</li>
    <li><%=trim(rs("pf_news_sources"))%></li>
</ul>
<p style="text-align: justify"><%=trim(rs("pf_news_content"))%></p></div>
			</div>
		</div>

  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->