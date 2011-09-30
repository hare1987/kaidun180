<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
title="新闻资讯 -  "
%>
<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">


<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 新闻资讯&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">新闻资讯</li>
                     </ul>
                  </div>
               </div>
               <div><img  src="images/bg1.png"/></div>
<div class="contents">
			<div class="content">
				<div class="title">新闻资讯</div>
                <%set rs=server.createobject("adodb.recordset")
		rs.open "select * from pf_news order by ID desc",conn,1,1
		if rs.recordcount=0 then 
		%>
                            <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                              <tr>
                                <td align="center">暂无新闻资讯</td>
                              </tr>
                            </table>
                            <%
		else
	  		rs.PageSize =20 '每页记录条数
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
				<table class="news-list">
					<tbody>
					
			

                              <%
	For i=1 To x
	%>
                    		<tr>
                            <td class="date">[<%=formatdatetime(rs("pf_news_date"),2)%>]</td>
                            <td>[<%=rs("pf_news_category")%>]</td>
                            <td><a href='newsinfo.asp?id=<%=rs("id")%>'><%=replace(trim(rs("pf_news_name")),"<br>","")%></a></td>
                    	
                                <%
	if  month(rs("pf_news_date")) <10  then
	    m = 0 &  month(rs("pf_news_date"))
	else
	    m = month(rs("pf_news_date"))
    end if
	if  day(rs("pf_news_date")) <10  then
	    d = 0 &  day(rs("pf_news_date"))
	else
	    d = day(rs("pf_news_date"))
    end if
	%></tr>

						
                              <%
	rs.movenext
	next
	%>		

                            </tbody>
                            </table>
    <div class="clear"></div>
    
             <div class="page-no">             

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
                </div>
                    </div>
                    <div><img  src="images/bg3.png"/></div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->