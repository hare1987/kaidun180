<%
'����˵��
'path1ԴͼƬ·������ͼƬ������
'path2����ͼ��·������ͼƬ������
'tp_widthҪ��������ͼ�������
'tp_heightҪ��������ͼ�����߶�
'����aspjpeg path1,path2,tp_width,tp_height

function aspjpeg(path1,path2,tp_width,tp_height)
'------------��������ͼ
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
Jpeg.Canvas.Font.Color = &H666666 ' ��ɫ
Jpeg.Canvas.Font.Family = "Arial, Helvetica, sans-serif"
if Jpeg.Width<=80 then 
Jpeg.Canvas.Font.size = 12 '���ִ�С
else
Jpeg.Canvas.Font.size = 14 '���ִ�С
end if
Jpeg.Canvas.Font.Bold = true '�Ƿ�Ӵ�
'Jpeg.Canvas.Font.BkMode = "Opaque"'���ֱ���(Opaque��͸��,transparence͸��)
Jpeg.Canvas.Font.Quality = 2'//ˮӡ���ֵ������ȣ���0��4���任���Ǻܴ󣬽�����2��3��
Jpeg.Canvas.Font.ShadowColor = &Hffffff '//ˮӡ���ֵ���Ӱɫ�ʡ�
Jpeg.Canvas.Font.ShadowXoffset = 1 '//ˮӡ������Ӱ����ƫ�Ƶ�����ֵ�����븺ֵ������ƫ�ơ�
Jpeg.Canvas.Font.ShadowYoffset = 1 '//ˮӡ������Ӱ����ƫ�Ƶ�����ֵ�����븺ֵ������ƫ�ơ�
this_x=1
if Jpeg.Width>80 then this_x=(Jpeg.Width-80)/2
if this_x<0 then this_x=1
this_y=Jpeg.Height*6/8
Jpeg.Canvas.Print this_x,this_y, "ͨ��ͼƬͶƱϵͳ"'x,y������ˮӡ����

if fso.fileexists(Server.MapPath(trim(path2)))=false then
Jpeg.Save Server.MapPath(trim(path2))'��������ͼ����ˮӡ
Set Jpeg = Nothing
'aspjpeg_shuiyin path1
end if

end if 

end function
%>