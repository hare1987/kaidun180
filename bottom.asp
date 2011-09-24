<!--<div id="egg">
             <span>
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="212" height="179">
        <param name="movie" value="images/dan.swf" />
        <param name="quality" value="high" />
        <param name="wmode" value="transparent" />
        <embed src="images/dan.swf" width="190" height="160" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
      </object>
           </span>
        </div><!-- #End #dan --> -->

         <div id="backto_top">Back to top.</div>
<div id="company_partner" class="box">
                   <em class="icon"><img src="images/icons/partner.png" /></em>
                    <h3 class="corner_it"><div class="inner"><span><a href="link.asp">MORE </a></span>企业伙伴</div></h3>
      <ul class="corner_bottom">
                               <%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_link"
rs.open sql,conn,1,1
if  rs.eof or rs.bof then
%>
  暂无通知!
  <%
else
i = 1
do while not rs.eof  or rs.bof
%>
<li> 
<a href="<%=rs("pf_link_url")%>" title="<%=rs("pf_link_name")%>" target="_blank"><img src="<%=rs("pf_uploadfile")%>" border="0"></a>
</li>
                  <%
i = i + 1
if i > 10 then  exit do
rs.movenext
loop
end if
rs.close
set rs = nothing
%>
</ul>

                </div>
 <div id="footer" class="corner_it">
            <div class="inner">
                <p>Copyrgiht &copy; 2011 上海凯顿儿童美语 All Rights Reserved. 地址：徐家汇苍梧路10号三栋306 联系电话：4006-117-668</p>
            </div>
        </div><!-- End: #footer -->
        </div><!-- End: #container -->
        
        
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
                if($.cookie('current_theme') != null){
                    $("#theme_css").attr("href", "stylesheets/" + $.cookie('current_theme') + ".css");
                }

                $('#index_slides').slides({
                                preload: true,
                                preloadImage: 'images/loading.gif',
                                play: 5000,
                                pause: 2500,
                                hoverPause: true
                            });

                $(".style_btn").click(function(){
                    $("#theme_css").attr("href", "stylesheets/" + $(this).attr("theme") + ".css");
                    $.cookie('current_theme', $(this).attr("theme"));
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

 <!--<script type='text/javascript' src='javascripts/firebug-lite-compressed.js'></script>-->
    </body>
</html>
