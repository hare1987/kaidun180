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
         <div id="backto_top">Back to top.</div>

 <div id="footer">
            <div class="inner">
                <p>Copyrgiht &copy; 2011 上海凯顿儿童美语 All Rights Reserved. 地址：徐家汇苍梧路10号三栋306 联系电话：4006-117-668</p>
            </div>
        </div><!-- End: #footer -->
        </div><!-- End: #container -->
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
               $('marquee').marquee();	
            });
        </script>

 <!--<script type='text/javascript' src='javascripts/firebug-lite-compressed.js'></script>-->
    </body>
</html>
