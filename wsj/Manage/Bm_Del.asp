<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<%
Function DeleFile(FilePath)
    On Error Resume Next
    Set Del=Server.CreateObject("Scripting.FileSystemObject")
    if Err <> 0 Then 
        DelFile="该空间不支持FSO组件，无法删除文件！"
    else
        if InStr(FilePath, ",") > 0 then
            FilePath=Split(FilePath,",")
            For i = 0 to ubound(FilePath)
                If Del.FileExists(Server.MapPath(FilePath))=True Then Del.DeleteFile Server.MapPath(FilePath(i)),true
            Next
        Else
            If Del.FileExists(Server.MapPath(FilePath))=True Then Del.DeleteFile Server.MapPath(FilePath),true
        End if
    End if
    Set Del=Nothing
End Function

id=Request.QueryString("id")
if id="" or not isnumeric(id) then
	Response.Write ("<script>alert('参数错误！');history.back();</script>")
	Response.End()
end if

set rs=Server.CreateObject("Adodb.recordset")
sql="select * from photo where ok=1 and id="&id
rs.open sql,conn,1,3
if rs.eof then
	Response.Write ("<script>alert('参数错误！');history.back();</script>")
	Response.End()
end if

DeleFile "../Upload/uploadimages/"&rs("url")

rs.Delete
rs.Update
rs.Close
Set rs=Nothing

Response.Write ("<script>alert('操作完成！');location.href='Bm_List.asp';</script>")
%>