<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">                  
		<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt; ʦ���Ŷ�&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">ʦ���Ŷ�</li>
                        <li class="style11"><a href="teacher.asp">���ٽ���</a></li>
                        <li class="style11"><a href="special.asp">��ɫ����</a></li>
                        <li class="style11"><a href="team.asp">��֯�ܹ�</a></span></li>
                     </ul>
                  </div>
               </div>						 
							                       
    <div class="box">
    <h3 style="width:730px;"><div class="inner"><%
		style = request("style")
		if style = "ר���Ŷ�" then
		%>
						   ר���Ŷ�
		<%else%>
						   ��ʦ�Ŷ�
		<%
		end if
		%></div></h3>
      <div class="m">						 
							 
							 <%
  set rs=server.createobject("adodb.recordset")
  if style = "ר���Ŷ�" then 
  rs.open "select * from pf_ms where  pf_link_style='ר���Ŷ�'order by ID asc",conn,1,1
  else
  rs.open "select * from pf_ms where  pf_link_style='��ʦ�Ŷ�'order by ID asc",conn,1,1
  end if   
  if rs.recordcount=0 then 
%><script language=javascript>document.title='<%=rs("pf_link_style")%>_���ٶ�ͯ����ѧУ��ӭ��!';</script>
                               <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
                                 <tr>
                                   <td align="center">����ר����Ϣ</td>
                                 </tr>
                               </table>
                               <%
  else
	  		rs.PageSize =8 'ÿҳ��¼����
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
    <div class="introduce"><%=rs("pf_link_name")%><br/><%=rs("pf_link_text")%></div>  
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

    Response.Write(" ҳ�Σ�" & page & "/" & pageCount & " ҳ " &  vbCrLf)
    Response.Write(" ���� " & iCount & " λ��ʦ " &  vbCrLf)
    Response.Write(" ת�� " & "<INPUT TYEP=TEXT CLASS=wenbenkuang NAME=page SIZE=2 Maxlength=5 VALUE=" & page & ">" & " ҳ "  & vbCrLf & "<INPUT CLASS=go-wenbenkuang type=submit value=GO>")
    Response.Write("</TD>" & vbCrLf )                
    Response.Write("</TR></form>" & vbCrLf )        
    Response.Write("</table>" & vbCrLf )        
End Sub
%>
                  </td>
                           </tr>
                         </table></td>
                      </tr>
                  </table>
                  </td>
                  </tr>
                </table></td>
              </tr>
                    </table>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->