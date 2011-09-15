<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

                    
                    <div class="crumbs">
                  <div class="inner">
                  <span class="current">当前位置：当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;凯顿资讯  &nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">凯顿活动</li>
                     </ul>
                  </div>
               </div>
                    
<%dim newsid
id=request.QueryString("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from pf_hd where id="&id,conn,1,3
rs.update
%><script language=javascript>document.title='<%=rs("pf_link_name")%>_凯顿活动_凯顿儿童美语学校欢迎您!';</script>
                              
                    <div class="contents">
			<div class="content">
				<div class="title"><%=trim(rs("pf_link_name"))%></div>
                <div class="section">
                <ul>
                             <li><%=trim(rs("content"))%></li>
                           </ul>
                                  <%rs.close
set rs=nothing%>
                           
                    </div>
                    	</div>
		</div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->