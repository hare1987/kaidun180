<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
                <span class="current">当前位置：当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;                  
				<%
		style = request("pf_link_style")
		if style = 1 then
		%>
						  凯顿活动
		<%else%>
						  凯顿新闻
		<%
		end if
		%>
               &nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">
                        <%
		style = request("pf_link_style")
		if style = 1 then
		%>
						  凯顿活动
		<%else%>
						  凯顿新闻
		<%
		end if
		%>
                        
                        
                        </li>
                     </ul>
                  </div>
               </div>
                      <div class="box">
               
<table width="97%"  border="0" align="left" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="3%" height="23">&nbsp;</td>
                        <td width="97%" valign="top">
		<%
	    pf_link_style = request("pf_link_style")
		set rs = server.CreateObject("adodb.recordset")
		if pf_link_style <> "" then
         sql = "select *  from  pf_hd  where  pf_link_style ='"& pf_link_style&"' and  pf_uploadfile <> 'text'order by id desc"
		 else
		  sql = "select *  from  pf_hd  where  pf_uploadfile <> 'text'order by id desc"
		 end if
		 rs.open sql,conn,1,1
		if rs.recordcount=0 then 
		%>
                            <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                              <tr>
                                <td align="center">暂无新闻资讯</td>
                              </tr>
                            </table>
                            <%
		else
	  		rs.PageSize =6 '每页记录条数
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
	For i=1 To x
	%>                      <table width="99%"  border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="15%">&nbsp;</td>
                                <td width="2%" height="41">&nbsp;</td>
                                <td width="83%"><div align="left"><strong><%=rs("pf_link_name")%></strong></div></td>
                              </tr>
                              <tr>
                                <td height="3" colspan="3"></td>
                              </tr>
                              <tr>
                                <td valign="top"><div align="right"><img src="<%=rs("pf_uploadfile")%>" height="65" width="65"></div></td>
                                <td height="69"><div align="right"></div></td>
                                <td valign="top" style="line-height:150% "><div align="left"><%=rs("pf_link_text")%>[ <a href="hdinfo.asp?id=<%=rs("id")%>">详细信息</a> ]</div></td>
                              </tr>
                            </table>
                              <%
	rs.movenext
	next
	%>
                            <div align="center"><br>
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
        Response.Write ("首页 " & vbCrLf)        
        Response.Write ("上页 " & vbCrLf)
    else        
        Response.Write("<A HREF=" & action & "?" & temp & "Page=1>首页</A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & ">上页</A> " & vbCrLf)
    end if

    if page>=pagecount then
        Response.Write ("下页 " & vbCrLf)
        Response.Write ("尾页 " & vbCrLf)            
    else
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page+1) & ">下页</A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & pagecount & ">尾页</A> " & vbCrLf)            
    end if

    Response.Write(" 页次：" & page & "/" & pageCount & "页" &  vbCrLf)
    Response.Write(" 共有" & iCount & "条新闻" &  vbCrLf)
    Response.Write(" 转到" & "<INPUT TYEP=TEXT CLASS=wenbenkuang NAME=page SIZE=2 Maxlength=5 VALUE=" & page & ">" & "页"  & vbCrLf & "<INPUT CLASS=go-wenbenkuang type=submit value=GO>")
    Response.Write("</TD>" & vbCrLf )                
    Response.Write("</TR></form>" & vbCrLf )        
    Response.Write("</table>" & vbCrLf )        
End Sub
%>
                            </div>
                            <br></td>
                      </tr>
                    </table>
                    </div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->