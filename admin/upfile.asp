<%OPTION EXPLICIT%>
<%Server.ScriptTimeOut=5000%>
<!--#include FILE="upload_5xsoft.inc"-->
<html>
<head>
<title>�ļ��ϴ�</title>
</head>
<body>
<br>
�ļ��ϴ�!
<hr size=1 noshadow width=300 align=left><br><br>
<%
dim upload,file,formName,formPath,iCount
set upload=new upload_5xsoft ''�����ϴ�����

response.write upload.Version&"<br><br>"  ''��ʾ�ϴ���İ汾

if upload.form("filepath")="" then   ''�õ��ϴ�Ŀ¼
 HtmEnd "������Ҫ�ϴ�����Ŀ¼!"
 set upload=nothing
 response.end
else
 formPath=upload.form("filepath")
 ''��Ŀ¼���(/)
 if right(formPath,1)<>"/" then formPath=formPath&"/" 
end if

iCount=0
for each formName in upload.objForm ''�г�����form����
 response.write formName&"="&upload.form(formName)&"<br>"
next

response.write "<br>"
for each formName in upload.objFile ''�г������ϴ��˵��ļ�
 set file=upload.file(formName)  ''����һ���ļ�����
 if file.FileSize>0 then         ''��� FileSize > 0 ˵�����ļ�����
  file.SaveAs Server.mappath(formPath&file.FileName)   ''�����ļ�
  response.write file.FilePath&file.FileName&" ("&file.FileSize&") => "&formPath&File.FileName&" �ɹ�!<br>"
  iCount=iCount+1
 end if
 set file=nothing
next

set upload=nothing  ''ɾ���˶���
Htmend iCount&" ���ļ��ϴ�����!"

sub HtmEnd(Msg)
 set upload=nothing
 response.write "<br>"&Msg&" [<a href=""javascript:history.back();"">����</a>]</body></html>"
 response.Write "<script language=javascript>alert('����ͼƬ���ĳɹ�!');</script><meta http-equiv=refresh content=0;URL=uploadfile.asp>;"
 response.end
end sub
%>
</body>
</html>