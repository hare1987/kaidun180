<!-- #include file="Include/Login_Conn.asp" -->
<!-- #include file="Include/Chk.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="Images/default.css" rel="stylesheet" type="text/css" />
<link href="images/admin_STYLE.css" rel="stylesheet" type="text/css" />
<script language="JavaScript"> 
<!-- 
//图片按比例缩放 
var flag=false; 
function DrawImage(ImgD){ 
 var image=new Image(); 
 var iwidth = 80;  //定义允许图片宽度 
 var iheight = 80;  //定义允许图片高度 
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
  ImgD.alt=image.width+"×"+image.height; 
  } 
 else{ 
  if(image.height>iheight){   
  ImgD.height=iheight; 
  ImgD.width=(image.width*iheight)/image.height;   
  }else{ 
  ImgD.width=image.width;   
  ImgD.height=image.height; 
  } 
  ImgD.alt=image.width+"×"+image.height; 
  } 
 } 
}  
//--> 
</script> 

</head>

<body>
<table width="100%%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="left" valign="middle" bgcolor="#efefef" class="title">报名管理</td>
  </tr>
  <tr>
    <td height="20" align="center" valign="middle">&nbsp;</td>
  </tr>
<%
SQL="Select * from Photo where ok=0 order by id desc"
set rs=server.createobject("Adodb.Recordset")
rs.open SQL,conn,1,1
dim i,bgc
if not rs.eof then
pages = 10 '定义每页显示的记录数
rs.pageSize = pages '定义每页显示的记录数
allPages = rs.pageCount'计算一共能分多少页
page = Request.QueryString("page")'通过浏览器传递的页数
'if语句属于基本的排错处理
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
    <td><table width="100%%" border="0" cellpadding="0" cellspacing="1" bgcolor="#ffffff">
          <tr>
            <td width="79" rowspan="4" align="center" valign="middle" bgcolor="#efefef"><p><a href="Upload/Uploadimages/<%=rs("url")%>" target="_blank"><img src="Upload/Uploadimages/<%=rs("url")%>" border="0" onload ='DrawImage(this)' /></a><br />
            </p>          </td>
            <td height="25" align="left" valign="middle" bgcolor="#efefef">宝宝姓名</td>
            <td height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("name")%></td>
            <td height="25" align="left" valign="middle" bgcolor="#efefef">宝宝性别</td>
            <td height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("user")%></td>
            <td width="60" rowspan="4" align="center" valign="middle" bgcolor="#efefef"><a href="Photo_Edit.asp?id=<%=rs("id")%>"></a>
            <table width="100%" border="0" cellspacing="1" cellpadding="0">
              <tr>
                <td height="20" align="center" valign="middle"><%if rs("ok")=0  then%><a href="Bm_Sh.asp?id=<%=rs("id")%>" ONCLICK="javascript:return confirm('提示：您真的要通过审核这样图片吗？')">审核</a><%else%>已审核<%end if%></td>
              </tr>
              <tr>
                <td height="20" align="center" valign="middle"><a href="bm_Del.asp?id=<%=rs("id")%>" ONCLICK="javascript:return confirm('提示：您真的要删除这张图片吗？')">删除</a></td>
              </tr>
            </table>          
            <a href="bm_Del.asp?id=<%=rs("id")%>"></a></td>
          </tr>
        <tr>
        <td width="71" height="25" align="left" valign="middle" bgcolor="#efefef">宝宝年龄</td>
        <td width="259" height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("school")%></td>
        <td width="63" height="25" align="left" valign="middle" bgcolor="#efefef">出生日期</td>
        <td width="258" height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("tea")%></td>
        </tr>
      <tr>
        <td width="71" height="25" align="left" valign="middle" bgcolor="#efefef">家长姓名</td>
        <td height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("qq")%></td>
        <td height="25" align="left" valign="middle" bgcolor="#efefef">联系电话</td>
        <td height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("mail")%></td>
      </tr>
      <tr>
        <td width="71" height="25" align="left" valign="middle" bgcolor="#efefef">电子邮箱</td>
        <td height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("a4")%></td>
        <td height="25" align="left" valign="middle" bgcolor="#efefef">所在校区</td>
        <td height="25" align="left" valign="middle" bgcolor="#efefef"><%=rs("a3")%></td>
      </tr>
      
    </table></td>
  </tr>
<%
pages = pages - 1
rs.MoveNext
Loop
End if
rs.Close
Set rs = Nothing 
%> 		
  
  <tr>
    <td height="20" align="left" valign="middle">分页：
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
%>	</td>
  </tr>
</table>
</body>
</html>
