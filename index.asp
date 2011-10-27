<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
title="首页 - "
%>
<!-- #include file = "top.asp"-->      
 <div id="main">
 <!-- #include file = "left.asp"-->  
            <!-- End: #left -->
            <div class="right">
            <div class="center1">
                <div id="index_slides" class="corner_it">
         <script type=text/javascript>
var pic_width=530; //图片宽度
var pic_height=280; //图片高度
var button_pos=4; //按扭位置 1左 2右 3上 4下
var stop_time=5000; //图片停留时间(1000为1秒钟)
var show_text=0; //是否显示文字标签 1显示 0不显示
var txtcolor="000000"; //文字色
var bgcolor="DDDDDD"; //背景色
var imag=new Array();
var link=new Array();
var text=new Array();
<%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 10 * from advertising order by pf_sort"
rs.open sql,conn,1,3
if  rs.eof or rs.bof then
%>
                    暂无通知!
<%
else
i = 1
do while not rs.eof  or rs.bof
%>
imag[<%=i%>]="<%=rs("pf_uploadfile")%>";
link[<%=i%>]="<%=rs("pf_link")%>";
text[<%=i%>]="<%=rs("pf_link_name")%>";
<%

i = i + 1
if i > 10 then  exit do
rs.movenext
loop
end if
rs.close
set rs = nothing
%> 
//可编辑内容结束
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
                   <em><img src="images/slice_33.png" /><span><a href="stars.asp" title="">more</a></span></em>
<div id="colee_left" style="overflow:hidden; width:100%;">
<table cellpadding="0" cellspacing="0" border="0">
<tr><td id="colee_left1" valign="top" align="center">
<table cellpadding="2" cellspacing="0" border="0">
<tr align="center">
              <%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 15 * from  pf_ms where  pf_link_style='凯顿月之星'order by ID asc"
rs.open sql,conn,1,1
do while not rs.eof or rs.bof
%>
<td style="padding:10px;"><p><a href="tdetail.asp?id=<%=rs("id")%>" title="<%=rs("pf_link_name")%><%=rs("position")%>"><img src="<%=rs("pf_uploadfile")%>"></a></p></td>
  <%
rs.movenext
loop
rs.close
set rs = nothing
%>
</tr>
</table>
</td>
<td id="colee_left2" valign="top"></td>
</tr>
</table>
</div>
<script>
//使用div时，请保证colee_left2与colee_left1是在同一行上.
var speed=30//速度数值越大速度越慢
var colee_left2=document.getElementById("colee_left2");
var colee_left1=document.getElementById("colee_left1");
var colee_left=document.getElementById("colee_left");
colee_left2.innerHTML=colee_left1.innerHTML
function Marquee3(){
if(colee_left2.offsetWidth-colee_left.scrollLeft<=0)//offsetWidth 是对象的可见宽度
colee_left.scrollLeft-=colee_left1.offsetWidth//scrollWidth 是对象的实际内容的宽，不包边线宽度
else{
colee_left.scrollLeft++
}
}
var MyMar3=setInterval(Marquee3,speed)
colee_left.onmouseover=function() {clearInterval(MyMar3)}
colee_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
</script>
<!--向左滚动代码结束-->
</div>          
              <div class="clear"></div>
            </div><!-- End: #center1 -->
            <div class="right_bar">
                <div id="preview_video" class="box corner_it">
                <script type="text/javascript">

var swf_width=201
var swf_height=172
var texts='凯顿儿童美语儿歌'
var files='five.flv'
document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ swf_width +'" height="'+ swf_height +'">');
document.write('<param name="movie" value="images/vcastr22.swf"><param name="quality" value="high"><param name="wmode" value="transparent" />');
document.write('<param name="IsAutoPlay" value="1" />');
document.write('<param name="menu" value="false"><param name="allowFullScreen" value="true" />');
document.write('<param name="FlashVars" value="vcastr_file='+files+'&vcastr_title='+texts+'&IsAutoPlay=1">');
document.write('<embed src="images/vcastr22.swf" allowFullScreen="true" FlashVars="vcastr_file='+files+'&vcastr_title='+texts+'" menu="false" quality="high" width="'+ swf_width +'" height="'+ swf_height +'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'); document.write('</object>'); 
 </script>
                </div><!-- End: #preview_video -->

<div id="BDBridgeFixedWrap"></div>
                <div id="kaidun_activity" class="box" >
                <img  src="images/slice_29.png"/>
<h3><span><a href="hdmore.asp">more</a></span></h3>
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
                    <h3 class="corner_it"><div class="inner"><span><a href="game.asp">more</a></span>游戏下载</div></h3>
                    <ul class="corner_bottom">
                                        <%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_game order by pf_link_order desc"
rs.open sql,conn,1,1
if  rs.eof or rs.bof then
%>
  暂无游戏!
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