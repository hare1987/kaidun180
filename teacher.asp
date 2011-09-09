<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 师资团队&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">师资团队</li>
                        <li class="style11"><a href="teacher.asp">凯顿介绍</a></li>
                        <li class="style11"><a href="special.asp">特色理念</a></li>
                        <li class="style11"><a href="team.asp">组织架构</a></span></li>
                     </ul>
                  </div>
               </div>	  
                      
 			  
		<div class="box">
    <h3 style="width:740px;"><div class="inner"><span><a href="moreteacher.asp?style=&#25945;&#24072;&#22242;&#38431;"><img src="images/more.gif" width="32" height="13" border="0"></a></span>教师团队</div></h3></div>
<div class="contents">
			<div class="content">
				<div class="title">专家团队</div>
	<%
  set rs=server.createobject("adodb.recordset")
  rs.open "select * from pf_ms where  pf_link_style='专家团队'order by ID asc",conn,1,1
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
    <p><%=rs("pf_link_name")%><br/><%=rs("pf_link_text")%></p> 
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
                  
				  
				  
	<div class="box">
    <h3 style="width:740px;"><div class="inner"><span><a href="moreteacher.asp?style=&#25945;&#24072;&#22242;&#38431;"><img src="images/more.gif" width="32" height="13" border="0"></a></span>教师团队</div></h3></div>
<div class="contents">
			<div class="content">
				<div class="title">专家团队</div>
				  <%
  set rs=server.createobject("adodb.recordset")
  rs.open "select * from pf_ms where  pf_link_style = '教师团队' order by ID asc",conn,1,1
  if rs.recordcount=0 then 
%>
                               <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                                 <tr>
                                   <td align="center">暂无教师信息</td>
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
    <p><%=rs("pf_link_name")%><br/><%=rs("pf_link_text")%></p> 
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