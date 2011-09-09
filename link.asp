<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 友情链接&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">友 情 链 接</li>
                     </ul>
                  </div>
               </div>
                <div class="box">
<table width="99%"  border="0" align="left" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="3%" height="23">&nbsp;</td>
                        <td width="97%" valign="top">
		<%
				  set rs=server.createobject("adodb.recordset")
				  sql="select * from pf_link   order by pf_link_order desc"
		          rs.open sql,conn,1,1
		          if rs.recordcount=0 then  
		    %>
                            <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                              <tr>
                                <td align="center"><span class="style27"><span class="style24"><font color="#000000">暂无友情链接</font></span></span></td>
                              </tr>
                            </table>
        <%
		else
	  		rs.PageSize =12 '每页记录条数
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
                            <table width="99%" border="0" cellspacing="0" cellpadding="5" align="center">
                              <tr>
    <%
	    j = 1
		For i=1 To x
    %> 
								<td height="20"><table  border="0" align="left" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td width="108" valign="top"><div align="center">
                                      <table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                          <td width="63%" height="25"><div align="left" class="style30">
                                              <div align="center"><font color="#000000">&nbsp;&nbsp;<a href="<%=rs("pf_link_url")%>" target="_blank"><img src="<%=rs("pf_uploadfile")%>" border="0"></a>&nbsp;</font></div>
                                          </div></td>
                                        </tr>
                                      </table>
                                    </div></td>
                                  </tr>
                                  <tr>
                                    <td><div align="center"><table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                          <td width="63%" height="25"><div align="left" class="style30">
                                              <div align="center"><font color="#000000">&nbsp;&nbsp;<a href="<%=rs("pf_link_url")%>" target="_blank"><%=rs("pf_link_name")%></a>&nbsp;</font></div>
                                          </div></td>
                                        </tr>
                                      </table>
                                          </div></td>
                                  </tr>
                                </table></td>
			<%
			if  j mod 4 = 0 then
			%>
                                </tr>
			<%end if%>
                            
            <%
			j = j + 1
			rs.movenext
		    next
			%>
			</table>
			 <span class="style27"><font color="#000000"> <span class="style24"><font color="#000000"> <font color="#000000"><span class="style30"><font color="#000000"><font color="#000000">
                            <%
		call PageControl(iCount,maxpage,page,"border=0 align=center","<p align=center>")
		end if
		rs.close
		set rs=nothing
Sub PageControl(iCount,pagecount,page,table_style,font_style)
'生成上一页下一页链接
    Dim query, a, x, temp
    action = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("SCRIPT_NAME")

    query = Split(Request.ServerVariables("QUERY_STRING"), "&")
    For Each x In query
        a = Split(x, "=")
        If StrComp(a(0), "page", vbTextCompare) <> 0 Then
            temp = temp & a(0) & "=" & a(1) & "&"
        End If
    Next

    Response.Write("<table width=100% border=0 cellpadding=0 cellspacing=0 >" & vbCrLf )        
    Response.Write("<form method=get onsubmit=""document.location = '" & action & "?" & temp & "Page='+ this.page.value;return false;""><TR>" & vbCrLf )
    Response.Write("<TD align=center height=35>" & vbCrLf )
    Response.Write(font_style & vbCrLf )    
        
    if page<=1 then
        Response.Write ("<font color=""#000000"">&nbsp;[首页]</font> " & vbCrLf)        
        Response.Write ("<font color=""#000000"">&nbsp;&nbsp;&nbsp;[上一页]</font> " & vbCrLf)
    else        
        Response.Write("<A HREF=" & action & "?" & temp & "Page=1><font color=""#000000""><font color=""#000000""><font color=""#000000"">[</font><font color=""#0000cc""><u>首页</u></font><font color=""#000000"">]</font>&nbsp;</A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & "><font color=""#000000""><font color=""#000000"">[</font><font color=""#0000cc""><u>上一页</u></font><font color=""#000000"">]</font>&nbsp;</A> " & vbCrLf)
    end if

    if page>=pagecount then
        Response.Write ("<font color=""#000000"">&nbsp;&nbsp;&nbsp;[下一页]</font>" & vbCrLf)
        Response.Write ("<font color=""#000000"">&nbsp;&nbsp;&nbsp;[尾页] &nbsp;</font>" & vbCrLf)            
    else
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page+1) & "><font color=""#000000"">[</font><font color=""#0000cc""><u>下一页</u></font><font color=""#000000"">]</font></A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & pagecount & "><font color=""#000000"">&nbsp;<font color=""#000000"">[</font><font color=""#0000cc""><u>尾页</u></font><font color=""#000000"">]</font></A> " & vbCrLf)            
    end if

    Response.Write(" <font color=""#000000"">&nbsp;&nbsp;共&nbsp;&nbsp;</font><font color=""#000000"">" & iCount & "</font><font color=""#000000"">&nbsp;个</font>" &  vbCrLf)
	Response.Write(" <font color=""#000000"">&nbsp;当前:</font><b><font color=""red"">" & page & "</font><font color='#000000'>/" & pageCount & "</font></b><font color=""#000000"">&nbsp;&nbsp;</font>" &  vbCrLf)
    Response.Write(" <font color=""#000000"">&nbsp;&nbsp;跳转到</font>" & "<INPUT TYEP=TEXT CLASS=wenbenkuang NAME=page SIZE=2 Maxlength=5 VALUE=" & page & ">" & "<font color=""#000000"">页</font>"  & vbCrLf & "<INPUT CLASS=go-wenbenkuang type=submit value=GO>")
    Response.Write("</TD>" & vbCrLf )                
    Response.Write("</TR></form>" & vbCrLf )        
    Response.Write("</table>" & vbCrLf )        
End Sub
%>
                          </font></font></span></font> </font></span> </font></span>
						</td>
                      </tr>
                    </table>
                    </div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->