<!-- #include file="../Include/Chk.asp" -->
<!-- #include file="../Include/Conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="Images/default.css" rel="stylesheet" type="text/css" />
<link href="images/admin_STYLE.css" rel="stylesheet" type="text/css" />
<script language="JavaScript"> 
<!-- 
//ͼƬ���������� 
var flag=false; 
function DrawImage(ImgD){ 
 var image=new Image(); 
 var iwidth = 80;  //��������ͼƬ��� 
 var iheight = 80;  //��������ͼƬ�߶� 
 image.src=ImgD.src; 
 if(image.width>0 && image.height>0){ 
 flag=true; 
 if(image.width/image.height>= iwidth/iheight){ 
  if(image.width>iwidth){   
  ImgD.width=iwidth; 
  ImgD.height=(image.height*iwidth)/image.width; 
  }else{ 
  ImgD.width=image.width;   
  ImgD.height=image.height; 
  } 
  ImgD.alt=image.width+"��"+image.height; 
  } 
 else{ 
  if(image.height>iheight){   
  ImgD.height=iheight; 
  ImgD.width=(image.width*iheight)/image.height;   
  }else{ 
  ImgD.width=image.width;   
  ImgD.height=image.height; 
  } 
  ImgD.alt=image.width+"��"+image.height; 
  } 
 } 
}  
//--> 
</script> 

<link href="../Images/default.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" colspan="4" align="left" valign="middle" bgcolor="#efefef" class="title">����ͼƬ</td>
  </tr>
  <tr>
    <td height="20" colspan="4" align="center" valign="middle"><form id="form1" name="form1" method="post" action="">
      �鿴ָ������ͼƬ��
      <select name="type" id="type">
<%
set fs=server.createobject("adodb.recordset")
fs.open "select * from Area where pid=0",conn,1,1
do while not fs.eof
%>
<option value="<%=fs("aid")%>"><%=fs("areaname")%></option>
<%
fs.MoveNext
Loop

fs.Close
Set fs=Nothing
%>	  
      </select>
      <input type="submit" name="Submit" value="�б�" />
    </form>    </td>
  </tr>
<%
if Request("type")<>"" then
SQL="Select * from Photo where ok=0 and t="&Request("type")&" order by id desc"
else
SQL="Select * from Photo where ok=0 order by id desc"
end if
set rs=server.createobject("Adodb.Recordset")
rs.open SQL,conn,1,1
dim i,bgc
if not rs.eof then
pages = 20 '����ÿҳ��ʾ�ļ�¼��
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
i=0
Do while not rs.eof and pages > 0 
%>  
  <tr>
    <td width="25%">
		<%if not rs.eof then%>
	<table width="200" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
      <tr>
        <td width="100" rowspan="4" align="center" valign="middle" bgcolor="#efefef"><img src="../UpLoad/upLoadImages/<%=rs("url")%>" width="100" height="100" onload ='DrawImage(this)' /><br />
          <%=rs("name")%></td>
        <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Edit.asp?id=<%=rs("id")%>">�޸�ͼƬ��Ϣ</a></td>
      </tr>
      <tr>
        <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Del.asp?id=<%=rs("id")%>" ONCLICK="javascript:return confirm('��ʾ�������Ҫɾ������ͼƬ��')">ɾ������ͼƬ</a></td>
      </tr>
      <tr>
        <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">��Ʊ����<%=rs("hit")%></td>
      </tr>
      <tr>
        <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">&nbsp;</td>
      </tr>
    </table>
    <%
	rs.MoveNext
	pages=pages-1
	end if
	%></td>
    <td width="25%"><%if not rs.eof then%>
      <table width="200" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
        <tr>
          <td width="100" rowspan="4" align="center" valign="middle" bgcolor="#efefef"><img src="../UpLoad/upLoadImages/<%=rs("url")%>" width="100" height="100" onload ='DrawImage(this)' /><br />
          <%=rs("name")%></td>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Edit.asp?id=<%=rs("id")%>">�޸�ͼƬ��Ϣ</a></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Del.asp?id=<%=rs("id")%>" onclick="javascript:return confirm('��ʾ�������Ҫɾ������ͼƬ��')">ɾ������ͼƬ</a></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">��Ʊ����<%=rs("hit")%></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">&nbsp;</td>
        </tr>
      </table>
    <%
	rs.MoveNext
	pages=pages-1
	end if
	%></td>
    <td width="25%"><%if not rs.eof then%>
      <table width="200" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
        <tr>
          <td width="100" rowspan="4" align="center" valign="middle" bgcolor="#efefef"><img src="../UpLoad/upLoadImages/<%=rs("url")%>" width="100" height="100" onload ='DrawImage(this)' /><br />
          <%=rs("name")%></td>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Edit.asp?id=<%=rs("id")%>">�޸�ͼƬ��Ϣ</a></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Del.asp?id=<%=rs("id")%>" onclick="javascript:return confirm('��ʾ�������Ҫɾ������ͼƬ��')">ɾ������ͼƬ</a></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">��Ʊ����<%=rs("hit")%></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">&nbsp;</td>
        </tr>
      </table>
    <%
	rs.MoveNext
	pages=pages-1
	end if
	%></td>
    <td width="25%"><%if not rs.eof then%>
      <table width="200" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
        <tr>
          <td width="100" rowspan="4" align="center" valign="middle" bgcolor="#efefef"><img src="../UpLoad/upLoadImages/<%=rs("url")%>" width="100" height="100" onload ='DrawImage(this)' /><br />
          <%=rs("name")%></td>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Edit.asp?id=<%=rs("id")%>">�޸�ͼƬ��Ϣ</a></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef"><a href="Photo_Del.asp?id=<%=rs("id")%>" onclick="javascript:return confirm('��ʾ�������Ҫɾ������ͼƬ��')">ɾ������ͼƬ</a></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">��Ʊ����<%=rs("hit")%></td>
        </tr>
        <tr>
          <td width="100" height="20" align="left" valign="middle" bgcolor="#efefef">&nbsp;</td>
        </tr>
      </table>
    <%
	rs.MoveNext
	pages=pages-1
	end if
	%></td>
  </tr>
<%
'pages = pages - 1
'rs.MoveNext
Loop
End if
rs.Close
Set rs = Nothing 
%> 		
  
  <tr>
    <td height="20" colspan="4" align="left" valign="middle">��ҳ��
<%
For i =1 to allpages
txt = ""
txt = txt &  "<a href=" & "?" &  "page=" & i & "&type="&Request("type")&">"
if i = Cint(Page) then txt = txt &  "<font color='bb0000'>"
txt = txt &  (i) 
if i = Cint(Page) then txt = txt &  "</font>"
txt = txt &  "</a> &nbsp;"
Response.Write(txt)
Next	
%>	</td>
  </tr>
</table>
</body>
</html>
