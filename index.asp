<!-- #include file = "top.asp"-->      
 <div id="main">
 <!-- #include file = "left.asp"-->  
            <!-- End: #left -->
            <div class="right">
            <div class="center1">
                <div id="index_slides">
         <script type=text/javascript>
var pic_width=530; //ͼƬ���
var pic_height=280; //ͼƬ�߶�
var button_pos=4; //��Ťλ�� 1�� 2�� 3�� 4��
var stop_time=5000; //ͼƬͣ��ʱ��(1000Ϊ1����)
var show_text=0; //�Ƿ���ʾ���ֱ�ǩ 1��ʾ 0����ʾ
var txtcolor="000000"; //����ɫ
var bgcolor="DDDDDD"; //����ɫ
var imag=new Array();
var link=new Array();
var text=new Array();
imag[1]="images/fla1.jpg";
link[1]="http://www.kaidun180.com/sd/index.htm";
text[1]="���ٶ�ͯ����ѧУ";
imag[2]="images/fla2.jpg";
link[2]="http://www.kaidun180.com/";
text[2]="���ٶ�ͯ����ѧУ";
imag[3]="images/fla3.jpg";
link[3]="http://www.kaidun180.com/";
text[3]="���ٶ�ͯ����ѧУ";
imag[4]="images/fla4.jpg";
link[4]="http://www.kaidun180.com/";
text[4]="���ٶ�ͯ����ѧУ"
imag[5]="images/fla5.jpg";
link[5]="http://www.kaidun180.com/";
text[5]="���ٶ�ͯ����ѧУ"
imag[6]="images/fla6.jpg";
link[6]="http://www.kaidun180.com/";
text[6]="���ٶ�ͯ����ѧУ"

//�ɱ༭���ݽ���
var swf_height=show_text==1?pic_height+20:pic_height;
var pics="", links="", texts="";
for(var i=1; i<imag.length; i++){
	pics=pics+("|"+imag[i]);
	links=links+("|"+link[i]);
	texts=texts+("|"+text[i]);
}
pics=pics.substring(1);
links=links.substring(1);
texts=texts.substring(1);
document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cabversion=6,0,0,0" width="'+ pic_width +'" height="'+ swf_height +'">');
document.write('<param name="movie" value="images/focus.swf">');
document.write('<param name="quality" value="high"><param name="wmode" value="opaque">');
document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&pic_width='+pic_width+'&pic_height='+pic_height+'&show_text='+show_text+'&txtcolor='+txtcolor+'&bgcolor='+bgcolor+'&button_pos='+button_pos+'&stop_time='+stop_time+'">');
document.write('<embed src="images/focus.swf" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&pic_width='+pic_width+'&pic_height='+pic_height+'&show_text='+show_text+'&txtcolor='+txtcolor+'&bgcolor='+bgcolor+'&button_pos='+button_pos+'&stop_time='+stop_time+'" quality="high" width="'+ pic_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
document.write('</object>');
</script>	
                </div><!-- End: #index_slides -->
                <div class="clear"></div>
                <div id="kaidun_month_star" class="box">
                   <em class="icon"><img src="images/icons/star.png" /></em>
        <h3 class="corner_it"><div class="inner"><span><a href="stars.asp" title="">MORE</a></span>������֮��</div></h3>
<div id="colee_left" style="overflow:hidden; width:100%; padding-bottom:5px;">
<table cellpadding="0" cellspacing="0" border="0">
<tr><td id="colee_left1" valign="top" align="center">
<table cellpadding="2" cellspacing="0" border="0">
<tr align="center">
              <%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 5 * from  pf_ms where  pf_link_style='������֮��'order by ID asc"
rs.open sql,conn,1,1
do while not rs.eof or rs.bof
%>
<td style="padding:10px;"><p><img src="<%=rs("pf_uploadfile")%>"><%=rs("pf_link_name")%></p></td>
  <%
rs.movenext
loop
rs.close
set rs = nothing
%>
</tr>
</table>
</td>
<td id="colee_left2" valign="top" align="center"></td>
</tr>
</table>
</div>
<script>
//ʹ��divʱ���뱣֤colee_left2��colee_left1����ͬһ����.
var speed=30//�ٶ���ֵԽ���ٶ�Խ��
var colee_left2=document.getElementById("colee_left2");
var colee_left1=document.getElementById("colee_left1");
var colee_left=document.getElementById("colee_left");
colee_left2.innerHTML=colee_left1.innerHTML
function Marquee3(){
if(colee_left2.offsetWidth-colee_left.scrollLeft<=0)//offsetWidth �Ƕ���Ŀɼ����
colee_left.scrollLeft-=colee_left1.offsetWidth//scrollWidth �Ƕ����ʵ�����ݵĿ��������߿��
else{
colee_left.scrollLeft++
}
}
var MyMar3=setInterval(Marquee3,speed)
colee_left.onmouseover=function() {clearInterval(MyMar3)}
colee_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
</script>
<!--��������������-->
</div>
                <div class="clear"></div>
              <div id="kaidun_news" class="box" style="padding-bottom:5px;">
                   <em class="icon"><img src="images/icons/xingxing.png" /></em>
                    <h3 class="corner_it"><div class="inner"><span><a href="class.asp">MORE </a></span>���¿�����Ϣ</div></h3>
                    <ul>
                    <table bgcolor="#FFFFFF" width="460" class="list-table" style="margin-top:10px;">
                    <tbody><tr>
													<td width="130" align="center"  height="25">��������</td>
													<td width="130" align="center"  height="25">�Ͽ�ʱ��</td>
													<td width="100" align="center"  height="25">��������</td>
													<td width="100" align="center"  height="25">�Ͽεص�</td>					

												  </tr>
 
  <%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from  class order by ID desc"
rs.open sql,conn,1,1
do while not rs.eof or rs.bof
%>
		                                      <tr>
		                                        <td width="130" align="center"  height="20"><%=rs("class_name")%></td>
		                                        <td width="130" align="center"  height="20"><%=rs("class_time")%></td>
												<td width="100" align="center"  height="18"><%=rs("class_date")%></td>
		                                        <td width="100" align="center"  height="20"><%=rs("class_address")%></td>
                                                </tr>

  <%
rs.movenext
loop
rs.close
set rs = nothing
%>
		                                      
		                                   
 
		                                      		                                      
                  </tbody>
                  
</table>
                        
                    </ul>
                </div>
                
              <div class="clear"></div>
            </div><!-- End: #center1 -->
            <div class="right_bar">
                <div id="preview_video" class="box">
                <script type="text/javascript">

var swf_width=201
var swf_height=172
var texts='���ٶ�ͯ�������'
var files='five.flv'
document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ swf_width +'" height="'+ swf_height +'">');
document.write('<param name="movie" value="images/vcastr22.swf"><param name="quality" value="high"><param name="wmode" value="transparent" />');
document.write('<param name="IsAutoPlay" value="1" />');
document.write('<param name="menu" value="false"><param name="allowFullScreen" value="true" />');
document.write('<param name="FlashVars" value="vcastr_file='+files+'&vcastr_title='+texts+'&IsAutoPlay=1">');
document.write('<embed src="images/vcastr22.swf" allowFullScreen="true" FlashVars="vcastr_file='+files+'&vcastr_title='+texts+'" menu="false" quality="high" width="'+ swf_width +'" height="'+ swf_height +'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'); document.write('</object>'); 
 </script>
                </div><!-- End: #preview_video -->
                <div id="kaidun_activity" class="box">
                   <em class="icon"><img src="images/icons/huodong.png" /></em>
                    <h3 class="corner_it"><div class="inner"><span><a href="hdmore.asp">MORE </a></span>���ٻ</div></h3>
                    <ul>
                    <%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 3 *  from  pf_hd  order by ID desc"
rs.open sql,conn,1,1
i = 1
do while not rs.eof or rs.bof
%>
                        <li><a href="hdinfo.asp?id=<%=rs("id")%>" title="<%=rs("pf_link_name")%>"><%=left(replace(trim(rs("pf_link_name")),"<br>",""),13)%></a></li>
                        <%
i = i + 1
rs.movenext
loop
rs.close
set rs = nothing
%>
                    </ul>
                </div><!-- End: #online_test -->
                <div id="game_donwload" class="box">
                   <em class="icon"><img src="images/icons/game.png" /></em>
                    <h3 class="corner_it"><div class="inner"><span><a href="game.asp">MORE </a></span>��Ϸ����</div></h3>
                    <ul>
                                        <%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_game order by pf_link_order desc"
rs.open sql,conn,1,1
if  rs.eof or rs.bof then
%>
  ������Ϸ!
  <%
else
i = 1
do while not rs.eof  or rs.bof
%>
                        <li><a href="game_play.asp?id=<%=rs("id")%>" title="<%=rs("pf_link_name")%>" target="_blank"><%=left(replace(trim(rs("pf_link_name")),"<br>",""),13)%></a></li>
            <%
i = i + 1
if i > 5 then  exit do
rs.movenext
loop
end if
rs.close
set rs = nothing
%>             
                    </ul>
                </div><!-- End: #game_donwload -->
                <!-- End: #company_partenter -->

            </div><!-- End: #right -->
            </div>
        </div><!-- End: #main -->

        <div class="clear"></div>

       <!--#include file = "bottom.asp" -->