<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
title="������Ѷ -  "
%>
<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">


<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt; ������Ѷ&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">������Ѷ</li>
                     </ul>
                  </div>
               </div>
               <div><img  src="images/bg1.png"/></div>
<div class="contents">
			<div class="content">
				<div class="title">������Ѷ</div>
                <%set rs=server.createobject("adodb.recordset")
		rs.open "select * from pf_news order by ID desc",conn,1,1
		if rs.recordcount=0 then 
		%>
                            <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                              <tr>
                                <td align="center">����������Ѷ</td>
                              </tr>
                            </table>
                            <%
		else
	  		rs.PageSize =20 'ÿҳ��¼����
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
'������һҳ��һҳ����
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
        Response.Write ("��ҳ " & vbCrLf)        
        Response.Write ("��ҳ " & vbCrLf)
    else        
        Response.Write("<A HREF=" & action & "?" & temp & "Page=1>��ҳ</A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & ">��ҳ</A> " & vbCrLf)
    end if

    if page>=pagecount then
        Response.Write ("��ҳ " & vbCrLf)
        Response.Write ("βҳ " & vbCrLf)            
    else
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page+1) & ">��ҳ</A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & pagecount & ">βҳ</A> " & vbCrLf)            
    end if

    Response.Write(" ҳ�Σ�" & page & "/" & pageCount & "ҳ" &  vbCrLf)
    Response.Write(" ����" & iCount & "������" &  vbCrLf)
    Response.Write(" ת��" & "<INPUT TYEP=TEXT CLASS=wenbenkuang NAME=page SIZE=2 Maxlength=5 VALUE=" & page & ">" & "ҳ"  & vbCrLf & "<INPUT CLASS=go-wenbenkuang type=submit value=GO>")
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