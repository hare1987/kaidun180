<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
 <div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt; ������֮��&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">������֮��</li>
                     </ul>
                  </div>
                  </div>
               <div class="box">
    <h3 style="width:730px;"><div class="inner">������֮��</div></h3>
      <div class="m">
	<%
  set rs=server.createobject("adodb.recordset")
  rs.open "select * from pf_ms where  pf_link_style='������֮��'order by ID asc",conn,1,1
  if rs.recordcount=0 then 
%>
                               <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                                 <tr>
                                   <td align="center">����ר����Ϣ</td>
                                 </tr>
                               </table>
                               <%
  else
	  		rs.PageSize =4 'ÿҳ��¼����
			iCount=rs.RecordCount '��¼����
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
������<%=rs("pf_link_name")%><br />
У����<%=rs("school")%><br />
��ý��<%=rs("position")%><br />
˵����<%=rs("pf_link_text")%><br />
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