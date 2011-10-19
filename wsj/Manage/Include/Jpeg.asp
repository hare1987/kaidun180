<%
'参数说明
'path1源图片路径包括图片的名称
'path2缩略图的路径包括图片的名称
'tp_width要生成缩略图的最大宽度
'tp_height要生成缩略图的最大高度
'调用aspjpeg path1,path2,tp_width,tp_height

function aspjpeg(path1,path2,tp_width,tp_height)
'------------生成缩略图
Set Jpeg = Server.CreateObject("Persits.Jpeg")
Path = Server.MapPath(trim(path1))
set fso=server.createobject("scripting.filesystemobject") 
if fso.fileexists(Path)=true then
Jpeg.Open Path
Jpeg.Width =Jpeg.OriginalWidth
Jpeg.Height =Jpeg.OriginalHeight
max_width=tp_width
max_height=tp_height
if Jpeg.OriginalWidth>max_width then
Jpeg.Width =max_width
Jpeg.Height =Jpeg.OriginalHeight * (Jpeg.Width / Jpeg.OriginalWidth)
if Jpeg.Height>max_height then
Jpeg.Height=max_height
Jpeg.Width =Jpeg.OriginalWidth * (Jpeg.Height / Jpeg.OriginalHeight)
end if
else
if Jpeg.OriginalHeight>max_height then
Jpeg.Height=max_height
Jpeg.Width =Jpeg.OriginalWidth * (Jpeg.Height / Jpeg.OriginalHeight)
end if
end if
Jpeg.Canvas.Font.Color = &H666666 ' 白色
Jpeg.Canvas.Font.Family = "Arial, Helvetica, sans-serif"
if Jpeg.Width<=80 then 
Jpeg.Canvas.Font.size = 12 '文字大小
else
Jpeg.Canvas.Font.size = 14 '文字大小
end if
Jpeg.Canvas.Font.Bold = true '是否加粗
'Jpeg.Canvas.Font.BkMode = "Opaque"'文字背景(Opaque不透明,transparence透明)
Jpeg.Canvas.Font.Quality = 2'//水印文字的清晰度，从0～4，变换不是很大，建议用2或3。
Jpeg.Canvas.Font.ShadowColor = &Hffffff '//水印文字的阴影色彩。
Jpeg.Canvas.Font.ShadowXoffset = 1 '//水印文字阴影向右偏移的像素值，输入负值则向左偏移。
Jpeg.Canvas.Font.ShadowYoffset = 1 '//水印文字阴影向下偏移的像素值，输入负值则向右偏移。
this_x=1
if Jpeg.Width>80 then this_x=(Jpeg.Width-80)/2
if this_x<0 then this_x=1
this_y=Jpeg.Height*6/8
Jpeg.Canvas.Print this_x,this_y, "通用图片投票系统"'x,y坐标与水印文字

if fso.fileexists(Server.MapPath(trim(path2)))=false then
Jpeg.Save Server.MapPath(trim(path2))'生成缩略图并加水印
Set Jpeg = Nothing
'aspjpeg_shuiyin path1
end if

end if 

end function
%>