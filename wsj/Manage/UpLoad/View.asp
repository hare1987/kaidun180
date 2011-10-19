<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<script language="JavaScript"> 
<!-- 
//图片按比例缩放 
var flag=false; 
function DrawImage(ImgD){ 
 var image=new Image(); 
 var iwidth = 120;  //定义允许图片宽度 
 var iheight = 120;  //定义允许图片高度 
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
<link href="../Admin/images/admin_STYLE.css" rel="stylesheet" type="text/css" />
<link href="../Images/default.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%if Request("path")="" then
Response.Write "无图片<br>"
else
%>
<img src="../Upload/UploadImages/<%=Request("path")%>" alt="图片,如果您看到此文字说明图片未找到" onload = "DrawImage(this);"/>
<%end if%>
<br />
<a href="upload_pic.asp" target="_self">[重新上传]</a>
</body>
</html>
