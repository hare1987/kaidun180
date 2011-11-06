 <div id="bottom">
 <div id="b_left">
 <div id="egg">
             <span>
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="212" height="179">
        <param name="movie" value="images/dan.swf" />
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <embed src="images/dan.swf" width="190" height="160" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
      </object>
           </span>
        </div><!-- #End #dan -->
        </div>
        <div id="b_right">
        <div id="m_n">
<span style="color:#F48359; font:bold 13px 宋体">友情链接</span>：
    <%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_link order by pf_link_order asc"
rs.open sql,conn,1,1
if  rs.eof or rs.bof then
%>
  暂无通知!
  <%
else
i = 1
do while not rs.eof  or rs.bof
%>
<a href="<%=rs("pf_link_url")%>" title="<%=rs("pf_link_name")%>" target="_blank"><%=rs("pf_link_name")%></a> |
                  <%
i = i + 1
if i > 10 then  exit do
rs.movenext
loop
end if
rs.close
set rs = nothing
%>
<a href="link.asp">more</a>|
 </div>

 <div id="footer">
            <div class="inner">
                <p>Copyrgiht &copy; 2011 上海凯顿儿童美语 All Rights Reserved. 地址：徐家汇苍梧路10号三栋306 联系电话：4006-117-668</p>
            </div>
        </div><!-- End: #footer -->
        </div>
        </div><!-- End: #container -->
        <div id="www_qpsh_com" style="position:absolute;z-index: 10000;">
<!--链接地址--><a href="/wsj/" target="_blank">
<!--图片地址--><img src="images/wan.jpg" border="0">
</a>
</div>
<script> 
var x = 50,y = 60 
var xin = true, yin = true 
var step = 1 
var delay = 1
var obj=document.getElementById("www_qpsh_com") 
function floatwww_qpsh_com() { 
var L=T=0
//by www.qpsh.com
var R= document.body.clientWidth-obj.offsetWidth 
var B = document.body.clientHeight-obj.offsetHeight 
obj.style.left = x + document.body.scrollLeft 
obj.style.top = y + document.body.scrollTop 
x = x + step*(xin?1:-1) 
if (x < L) { xin = true; x = L} 
if (x > R){ xin = false; x = R} 
y = y + step*(yin?1:-1) 
if (y < T) { yin = true; y = T } 
if (y > B) { yin = false; y = B } 
} 
var itl= setInterval("floatwww_qpsh_com()", delay) 
obj.onmouseover=function(){clearInterval(itl)} 
obj.onmouseout=function(){itl=setInterval("floatwww_qpsh_com()", delay)} 
</script>
        
<script language="javascript"> 
function checkregform(){
    if (document.yx.name.value == ""){
	   alert("请填写宝宝的姓名!");
	   document.yx.name.focus();
	   return false;	
	}
     if (document.yx.tel.value == "" || document.yx.tel.value.length <11 ||  document.yx.tel.value.length >11 ||  isNaN(document.yx.tel.value)){
	 alert("请正确填写联系电话!");
	 document.yx.tel.value = "";
	 document.yx.tel.focus();
	 return false;	 
	 }

return true;
}

</script>

        <script src="javascripts/jquery.cookie.js" type="text/javascript"></script>
        <script src="javascripts/slides.min.jquery.js" type="text/javascript"></script>
        <script src="javascripts/jquery.marquee.js" type="text/javascript"></script>
        <script src="javascripts/jquery.corner.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){


                $(".style_btn").click(function(){
					var theme = $(this).attr("theme");						   
                    $("#theme_css").attr("href", "stylesheets/" + theme + ".css");
					$.get("set_theme.asp?theme="+theme);
                    $.cookie('current_theme', theme);
                });
                 $("#backto_top").click(function(){
                       jQuery('html, body').animate( { scrollTop: 0 }, 'slow' );
                });


                $(".corner_it").corner("6px");
				$(".corner_bottom").corner("bottom");
				$(".corner_inner").corner("round 8px").parent().css('padding', '8px').corner("round 14px");
				$(".corner_top").corner("top");				
                $('marquee').marquee();	
            });
        </script>

<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F72d863f517a2d1eb56c3692237cac8b6' type='text/javascript'%3E%3C/script%3E"));
</script>

 <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-24540458-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async 

= true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') 

+ '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, 

s);
  })();

</script>

    </body>
</html>
