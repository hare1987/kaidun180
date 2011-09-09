<%
dim conn   
dim connstr
'空间商改后的数据库连接代码（原始方法）
	db="data/pcfinal.mdb"
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
	conn.Open connstr

sub closedb()
	conn.close:set conn=nothing
end sub	
	
%>

<%
'原数据库连接代码（动态的）
'db = "data/pcfinal.mdb"
'connstr = "DBQ=" + server.mappath(""&db&"") + ";DefaultDir=;DRIVER={Microsoft Access Driver (*.mdb)};"
'Set conn = server.CreateObject("ADODB.CONNECTION")
'conn.Open connstr

'==========安全代码==========

Dim GetFlag Rem(提交方式)
Dim ErrorSql Rem(非法字符)
Dim RequestKey Rem(提交数据)
Dim ForI Rem(循环标记)
ErrorSql = "'~;~and~(~)~exec~update~count~*~%~<~>~chr~mid~master~truncate~char~declare" Rem(每个敏感字符或者词语请使用半角 "~" 格开)
ErrorSql = Split(ErrorSql, "~")
If Request.ServerVariables("REQUEST_METHOD") = "GET" Then
    GetFlag = True
Else
    GetFlag = False
End If
If GetFlag Then
    For Each RequestKey In Request.QueryString
        For ForI = 0 To UBound(ErrorSql)
            If InStr(LCase(Request.QueryString(RequestKey)), ErrorSql(ForI))<>0 Then
                Call infoback("请不要使用特殊字符，例如英文单引号等！")
            End If
        Next
    Next
Else
    For Each RequestKey In Request.Form
        For ForI = 0 To UBound(ErrorSql)
            If InStr(LCase(Request.Form(RequestKey)), ErrorSql(ForI))<>0 Then
                Call infoback("请不要使用特殊字符，例如英文单引号等！")
            End If
        Next
    Next
End If
Sql_in = "and |or |on |in |select |insert |update |delete |exec |declare |'"
Sql = Split(Sql_in, "|")
If Request.QueryString<>"" Then
    For Each Sql_Get In Request.QueryString
        For Sql_Data = 0 To UBound(Sql)
            If InStr(LCase(Request.QueryString(Sql_Get)), Sql(Sql_Data))<>0 Then
                Call infoback("请不要尝试非法注入！")
            End If
        Next
    Next
End If
If Request.Form<>"" Then
    For Each Sql_Post In Request.Form
        For Sql_Data = 0 To UBound(Sql)
            If InStr(LCase(Request.Form(Sql_Post)), Sql(Sql_Data))<>0 Then
                Call infoback("请不要尝试非法注入！")
            End If
        Next
    Next
End If

'==========常用子程序==========

Sub infoback(info)
    response.Write "<script language=javascript>alert('"&info&"');window.history.back();</script>"
    response.End
End Sub


Sub infohref(info, url)
    response.Write "<script language=javascript>alert('"&info&"');window.location.href='"&url&"'</script>"
    response.End
End Sub

Sub noid
    If request.QueryString("ID") = "" Or Not IsNumeric(request.QueryString("ID")) Then
        Call infoback("不存在此数据！")
    End If
End Sub

'==========网站基本信息==========

sub pcfinal_page
action = "http://" & request.servervariables("http_host") & request.servervariables("script_name")
        query = Split(request.servervariables("query_string"), "&")
        For Each x in query
            a = Split(x, "=")
            If StrComp(a(0), "page", vbTextCompare) <> 0 Then
                temp = temp & a(0) & "=" & a(1) & "&"
            End If
        Next
        response.Write("<form method='get' onsubmit=""document.location = '"&action&"?"&temp&"page='+ this.page.value;return false;"">")
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
        response.Write("["&page&"/"&maxpage&"页] [共"&allpage&"条记录] 转到第 <input type='text' name='page' size='3' value='"&page&"'> 页 <input type='submit' value='跳转'/></form>")
end sub
%>
