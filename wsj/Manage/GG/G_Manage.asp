<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../Images/font.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" border="0">
  <tr>
    <td height="25" colspan="3" bgcolor="#3385D1" class="font2 STYLE1"><table width="100%" border="0" cellpadding="0" cellspacing="��">
      <tr>
        <td width="19%">��<span class="bt2">������</span></td>
        <td width="81%" align="center"><a href="G_Add.asp" class="bt2">��ӹ���</a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center" valign="middle" bgcolor="#efefef" class="font1">�������</td>
    <td align="center" valign="middle" bgcolor="#efefef" class="font1">����ʱ��</td>
    <td width="12%" height="25" align="center" valign="middle" bgcolor="#efefef" class="font1">��ز���</td>
  </tr>
<%
sql = "select * from gg Order by addtime desc"
Set rs=Server.Createobject("ADODB.RECORDSET")
rs.Open sql, conn, 1, 1
if not rs.eof then
pages = 6 '����ÿҳ��ʾ�ļ�¼��
rs.pageSize = pages '����ÿҳ��ʾ�ļ�¼��
allPages = rs.pageCount'����һ���ֶܷ���ҳ
page = Request.QueryString("page")'ͨ����������ݵ�ҳ��
'if������ڻ������Ŵ���
if isEmpty(page) or Cint(page) < 1 then
page = 1
elseif Cint(page) > allPages then
page = allPages 
end if
rs.AbsolutePage = page
Do while not rs.eof and pages > 0 %> 
 <tr>
   <td align="left" valign="middle" bgcolor="#efefef" class="link2"><%=rs("title")%></td>
    <td align="left" valign="middle" bgcolor="#efefef" class="link2"><div align="center"><%=rs("addtime")%></div></td>
    <td height="25" align="center" valign="middle" bgcolor="#efefef" class="link2"><a href="g_Edit.asp?id=<%=rs("id")%>">�޸�</a> | <a href="g_Del.asp?id=<%=rs("id")%>">ɾ��</a></td>
  </tr>
<% pages = pages - 1
rs.MoveNext
Loop
else
Response.Write("<font color='Red'>���ݿ��������ݣ�</font>")
End if
rs.Close
Set rs = Nothing 
%>
  <tr>
    <td height="25" colspan="3" align="right" bgcolor="#efefef">
<%
For i =1 to allpages
txt = ""
txt = txt &  "<a href=" & "?" &  "page=" & i & ">"
if i = Cint(Page) then txt = txt &  "<font color='bb0000'>"
txt = txt &  (i) 
if i = Cint(Page) then txt = txt &  "</font>"
txt = txt &  "</a> &nbsp;"
Response.Write(txt)
Next	
%></td>
  </tr>
</table>
</body>
</html>
