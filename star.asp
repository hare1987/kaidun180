<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
 <div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 凯顿月之星&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">凯顿月之星</li>
                     </ul>
                  </div>
                  </div>
               <div class="box">
    <h3 style="width:730px;"><div class="inner">凯顿月之星</div></h3>
      <div class="m">
	<%
  set rs=server.createobject("adodb.recordset")
  rs.open "select * from pf_ms where  pf_link_style='凯顿月之星'order by ID asc",conn,1,1
  if rs.recordcount=0 then 
%>
                               <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                                 <tr>
                                   <td align="center">暂无专家信息</td>
                                 </tr>
                               </table>
                               <%
  else
	  		rs.PageSize =4 '每页记录条数
			iCount=rs.RecordCount '记录总数
			iPageSize=rs.PageSize
    		maxpage=rs.PageCount 
    		page=request("page")
    
    if Not IsNumeric(page) or page="" then
        page=1
    else
        page=cint(page)
    end if
    
    if page<1 then
        page=1
    elseif  page>maxpage then
        page=maxpage
    end if
    
    rs.AbsolutePage=Page

	if page=maxpage then
		x=iCount-(maxpage-1)*iPageSize
	else
		x=iPageSize
	end if
	%>
                                   <%
    j = 1
	For i=1 To x
	%>
    
 
    <div class="teacher">
    <img src="<%=rs("pf_uploadfile")%>" border="0">
    <div class="introduce">
姓名：<%=rs("pf_link_name")%><br />
校区：<%=rs("school")%><br />
获得奖项：<%=rs("position")%><br />
说明：<%=rs("pf_link_text")%><br />
</div>  
    </div>
                                    
                                   <%
			if  j mod 2 = 0 then
			%>
                                   <div class="clear"></div>
                                 <%
			end if
			j = j + 1
	        rs.movenext
	        next
	       %>
                               </div>
                               </div>
                                                         <%
		   end if
		   rs.close
		   set rs=nothing
		 %>
                    
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->