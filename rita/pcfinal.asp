<%
dim conn   
dim connstr
'�ռ��̸ĺ�����ݿ����Ӵ��루ԭʼ������
	db="data/pcfinal.mdb"
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
	conn.Open connstr

sub closedb()
	conn.close:set conn=nothing
end sub	
	
%>

<%
'ԭ���ݿ����Ӵ��루��̬�ģ�
'db = "data/pcfinal.mdb"
'connstr = "DBQ=" + server.mappath(""&db&"") + ";DefaultDir=;DRIVER={Microsoft Access Driver (*.mdb)};"
'Set conn = server.CreateObject("ADODB.CONNECTION")
'conn.Open connstr

'==========��ȫ����==========

Dim GetFlag Rem(�ύ��ʽ)
Dim ErrorSql Rem(�Ƿ��ַ�)
Dim RequestKey Rem(�ύ����)
Dim ForI Rem(ѭ�����)
ErrorSql = "'~;~and~(~)~exec~update~count~*~%~<~>~chr~mid~master~truncate~char~declare" Rem(ÿ�������ַ����ߴ�����ʹ�ð�� "~" ��)
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
                Call infoback("�벻Ҫʹ�������ַ�������Ӣ�ĵ����ŵȣ�")
            End If
        Next
    Next
Else
    For Each RequestKey In Request.Form
        For ForI = 0 To UBound(ErrorSql)
            If InStr(LCase(Request.Form(RequestKey)), ErrorSql(ForI))<>0 Then
                Call infoback("�벻Ҫʹ�������ַ�������Ӣ�ĵ����ŵȣ�")
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
                Call infoback("�벻Ҫ���ԷǷ�ע�룡")
            End If
        Next
    Next
End If
If Request.Form<>"" Then
    For Each Sql_Post In Request.Form
        For Sql_Data = 0 To UBound(Sql)
            If InStr(LCase(Request.Form(Sql_Post)), Sql(Sql_Data))<>0 Then
                Call infoback("�벻Ҫ���ԷǷ�ע�룡")
            End If
        Next
    Next
End If

'==========�����ӳ���==========

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
        Call infoback("�����ڴ����ݣ�")
    End If
End Sub

'==========��վ������Ϣ==========

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
            response.Write ("��ҳ ��һҳ ")
        Else
            response.Write("<a href='"&action&"?"&temp&"page=1'>��ҳ</a> <a href='"&action&"?"&temp&"page="&(page -1)&"'>��һҳ</a> ")
        End If
        If page>= maxpage Then
            response.Write ("��һҳ βҳ ")
        Else
            response.Write("<a href='"&action&"?"&temp&"page="&(page+1)&"'>��һҳ</a> <a href='"&action&"?"&temp&"page="&maxpage&"'>βҳ</a> ")
        End If
        response.Write("["&page&"/"&maxpage&"ҳ] [��"&allpage&"����¼] ת���� <input type='text' name='page' size='3' value='"&page&"'> ҳ <input type='submit' value='��ת'/></form>")
end sub
%>
