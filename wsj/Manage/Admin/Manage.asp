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
        <td width="19%">��<span class="bt2">����Ա����</span></td>
        <td width="81%" align="center"><a href="Add.asp" class="bt2">��ӹ���Ա</a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="32%" align="center" valign="middle" bgcolor="#efefef" class="font1">��½��</td>
    <td width="43%" align="center" valign="middle" bgcolor="#efefef" class="font1">����Ȩ��</td>
    <td width="25%" height="25" align="center" valign="middle" bgcolor="#efefef" class="font1">��ز���</td>
  </tr>
<%
sql = "select * from A_d_m_i_n"
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
   <td align="left" valign="middle" bgcolor="#efefef" class="link2"><%=rs("name")%></td>
    <td align="left" valign="middle" bgcolor="#efefef" class="link2"><%=rs("flag")%></td>
    <td height="25" align="center" valign="middle" bgcolor="#efefef" class="link2"><a href="Edit.asp?id=<%=rs("id")%>">�޸�</a> | <a href="Del.asp?id=<%=rs("id")%>">ɾ��</a></td>
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
