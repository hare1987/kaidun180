<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<script language="JavaScript"> 
<!-- 
//ͼƬ���������� 
var flag=false; 
function DrawImage(ImgD){ 
 var image=new Image(); 
 var iwidth = 120;  //��������ͼƬ��� 
 var iheight = 120;  //��������ͼƬ�߶� 
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
<link href="../Admin/images/admin_STYLE.css" rel="stylesheet" type="text/css" />
<link href="../Images/default.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%if Request("path")="" then
Response.Write "��ͼƬ<br>"
else
%>
<img src="../Upload/UploadImages/<%=Request("path")%>" alt="ͼƬ,���������������˵��ͼƬδ�ҵ�" onload = "DrawImage(this);"/>
<%end if%>
<br />
<a href="upload_pic.asp" target="_self">[�����ϴ�]</a>
</body>
</html>
