<%
Sub infoback(info)
    response.Write "<script language=javascript>alert('"&info&"');window.history.back();</script>"
    response.End
End Sub


Sub infohref(info, url)
    response.Write "<script language=javascript>alert('"&info&"');window.location.href='"&url&"'</script>"
    response.End
End Sub

Sub iderror
	If request.QueryString("id") = "" Or Not IsNumeric(request.QueryString("id")) Then
		Call infoback("非法操作！")
	End If
End sub

Sub close_conn
    conn.Close
    Set conn = Nothing
End Sub


Sub close_rs
    rs.Close
    Set rs = Nothing
End Sub

Sub pcfinal_page
    action = "http://" & request.servervariables("http_host") & request.servervariables("script_name")
    query = Split(request.servervariables("query_string"), "&")
    For Each x in query
        a = Split(x, "=")
        If StrComp(a(0), "page", vbTextCompare) <> 0 Then
            temp = temp & a(0) & "=" & a(1) & "&"
        End If
    Next
    response.Write("<br/><table class='table'><form method='get' onsubmit=""document.location = '"&action&"?"&temp&"page='+ this.page.value;return false;""><tr><td align='center'>")
    If page<= 1 Then
        response.Write ("首页 上一页 ")
    Else
        response.Write("<a href='"&action&"?"&temp&"page=1'>首页</a> <a href='"&action&"?"&temp&"page="&(page -1)&"'>上一页</a> ")
    End If
    If page>= maxpage Then
        response.Write ("下一页 尾页 ")
    Else
        response.Write("<a href='"&action&"?"&temp&"page="&(page+1)&"'>下一页</a> <a href='"&action&"?"&temp&"page="&maxpage&"'>尾页</a> ")
    End If
    response.Write("["&page&"/"&maxpage&"页] [共"&allpage&"条记录] 转到第 <input type='text' name='page' size='3' value='"&page&"'> 页 <input type='submit' value='跳转'/></td></tr></form></table>")
End Sub
%>