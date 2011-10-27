<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">      
	<meta name="author" content="kaidun" />
	<title>凯顿儿童美语学校欢迎您,儿童美语，幼儿美语，少儿美语!</title>
	<% current_theme = session("current_theme")
		if current_theme = "" then
			current_theme = "yellow"
		end if
	%>
	<link id="theme_css" href="stylesheets/<%= current_theme %>.css" media="screen, projection" rel="stylesheet" type="text/css" />
	<link href="stylesheets/style.css" rel="stylesheet" type="text/css" />
	<link href="stylesheets/image-slide.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">var _siteRoot='index.html',_root='index.html';</script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bgscripts.js"></script>
	<script type="text/javascript" src="js/jquery.floatobject.js"></script>
	<script type="text/javascript" src="js/swfobject.js"></script>
	<script>
	<!--
			$(document).ready(function(){						
					$("#rainbow-bubble").hide();
					$("#rainbow").click(function(){
						$("#rainbow-bubble").show();
					});
			
					$("#rainbow-bubble").click(function(){
						$(this).hide("active");
					});
				
					$("#contact-ways").makeFloat({x:"current",y:"current"});
			});
	//-->
	</script>
</head>
<body>
<div id="gradient">
<div id="container-body">
	<div id="contact-ways"  style="margin-top:60px">
		<a href="#"><img src="images/slice_19.jpg" /></a><a href="#"><img src="images/slice_22.jpg" /></a><a href="#"><img src="images/slice_24.jpg" /></a>
	</div>
	<!--#contact-ways END-->
	<div id="container">
		<div id="top">
            <table width="970" border="0" cellpadding="0" cellspacing="0">
		        <tr>
				    <td width="540" rowspan="2" >
						<table border="0" cellpadding="0" cellspacing="0" class="">
						<tr>
						<td width="40"><img src="images/top_home.png" /></td>
						<td width="32"><img src="images/top_theme_yellow.png" /></td>
						<td width="35"><img src="images/top_theme_pink.png" /></td>
						<td width="79"><img src="images/top_theme_blue.png" /></td>
						</tr>
						<tr><td colspan="4"><img src="images/top_theme_text.png" /></td></tr>
						</table>				    </td> 
					<td width="350" align="right" >
						<ul id="top_menus" >
						   <li class="item_1" ><a  href="#" title="在线水平测试">在线水平测试</a></li>
						   <li class="item_2"><a  href="school.asp" title="分校找寻">分校找寻</a></li>
						   <li class="item_3" ><a href="#" title="">加入最爱</a></li>
						   <li class="item_4" ><a href="regsiter.asp" title="">免费活动预约</a></li>
						</ul>					</td>    
		        </tr>
		        <tr>
		        	<td ></td>
		        </tr>
            </table>
		</div><!--#top END-->
	    <div id="rainbow-bubble"><img src="images/bubble.png" /></div>    
		<div id="rainbow">
			<div id="rainbow-inner"></div> 
			<script type="text/javascript">
			    <!--
			    var so = new SWFObject("images/focus.swf", "pageswf", "970", "345", "8", "#FFFFFF");
			    so.addParam("allowScriptAccess", "always");
			    so.addParam("wmode", "transparent");
			    so.write('rainbow-inner');
			    //-->
	        </script>	   
		<!-- #rainbow-inner END-->
		</div><!-- #rainbow END-->
		      
	    <div id="slogan">         
	        <marquee loop="-1" scrollamount="3" scrolldelay="1000" behavior="scroll" direction="left" >
	        	<div class="slogan-run">180天后，让孩子与老外轻松聊天半小时!</div>
	        </marquee>          
	    </div><!-- #slogan END-->
		
		<div id="main">
		<table width="970" border="0" cellpadding="0" cellspacing="0">
			<tr>
			  <td id="main-left" valign="top">
			 	 <div id="left_box">      
					<div id="contact_kaidun" >
				            <ul style="margin:13px;">
				                <form  name="yx"  onsubmit="return checkregform()" method="post" action="save.asp?action=gf">
				                <li>宝宝姓名:<input type="text"  style="width:105px" id="name" name="name"></li>
				                <li>宝宝年龄:<select style="width:42px" id="lngsex" name="age">
				                <option value="3">3</option>
				                <option value="4">4</option>
				                <option value="5">5</option>
				                <option value="6">6</option>
				                <option value="7">7</option>
				                <option value="8">8</option>
				                <option value="9">9</option>
				                <option value="10">10</option>
				                <option value="11">11</option>
				                <option value="12">12</option>
				                </select>
				                </li>
				                <li>预约校区:<select style="width:100px" id="school" name="school">
				                <option value="徐汇田林校">徐汇田林校</option>
				                <option value="黄浦书城校">黄浦书城校</option>
				                <option value="浦东金桥校">浦东金桥校</option>
				                <option value="闵行莘庄校">闵行莘庄校</option>
				                <option value="虹pngfix口东宝校">虹口东宝校</option>
				                <option value="长宁虹桥校">长宁虹桥校</option>
				                <option value="松江九亭校">松江九亭校</option>
				                <option value="宝山大华校">宝山大华校</option>
				                </select>
				                </li>
				                <li>家长手机:<input type="text"  style="width:105px" id="tel" name="tel"></li>
				                <div align="right"><input type="submit" value="预约"  class="btn"/></div>
				                </form></ul>
				        </div><!--#contact_kaidun END-->
				    <br/>
				        <div id="latest_news" > 
				            <img src="images/slice_30.png" />
						<ul  class="corner_bottom">                    
						<li><span class="colored-purple">1</span>test item</li>
						<li><span class="colored-purple">2</span>test item</li>
						<li><span class="colored-purple">3</span>test item</li>
						<li><span class="colored-purple">4</span>test item</li>  
						<li><span class="colored-purple">5</span>test item</li>                     
						</ul>
						<p align="right" style="margin-top:10px;"><a href="news.asp"><img src="images/btn-more.png" style="border:none; padding-right:10px;" /></a></p>
				     </div><!--#lastest_news END-->
				     <div id="online_test">    
				             <img src="images/slice_36.png" />
						<ul  class="corner_bottom">                    
						<li><span class="colored-pink">1</span>test item</li>
						<li><span class="colored-pink">2</span>test item</li>
						<li><span class="colored-pink">3</span>test item</li>
						<li><span class="colored-pink">4</span>test item</li>  
						<li><span class="colored-pink">5</span>test item</li>                     
						</ul>						
						<p align="right" style="margin-top:10px;"><a href="#"><img src="images/btn-more.png" style="border:none; padding-right:" /></a></p>
				    </div><!--#online_test END-->
			  </div>			</td>
			<td id="main-center" valign="top">
					<div id="header"><div class="wrap">
				       <div id="slide-holder">
				            <div id="slide-runner">
				                <a href=""><img id="slide-img-1" src="images/fla1.png" class="slide" alt="" /></a>
				                <a href=""><img id="slide-img-2" src="images/fla2.png" class="slide" alt="" /></a>
				                <a href=""><img id="slide-img-3" src="images/fla3.png" class="slide" alt="" /></a>
				                <a href=""><img id="slide-img-4" src="images/fla4.png" class="slide" alt="" /></a>
				                <a href=""><img id="slide-img-5" src="images/fla5.png" class="slide" alt="" /></a>
				                <a href=""><img id="slide-img-6" src="images/fla1.png" class="slide" alt="" /></a>
				                <a href=""><img id="slide-img-7" src="images/fla2.png" class="slide" alt="" /></a>
                                <div id="slide-controls">
                                 <p id="slide-desc" class="text"></p>
                                 <p id="slide-nav"></p>
				                 
				                </div> 				    		
                            </div>
				        	 
				        <!--content featured gallery here -->
				       </div>
				       <script type="text/javascript">
				        if(!window.slider) var slider={};slider.data=[{"id":"slide-img-1","client":"nature beauty","desc":"主题图书馆蕴藏丰富美语故事书"},{"id":"slide-img-2","client":"nature beauty","desc":"主题图书馆蕴藏丰富美语故事书"},{"id":"slide-img-3","client":"nature beauty","desc":"主题图书馆蕴藏丰富美语故事书"},{"id":"slide-img-4","client":"nature beauty","desc":"主题图书馆蕴藏丰富美语故事书"},{"id":"slide-img-5","client":"nature beauty","desc":"主题图书馆蕴藏丰富美语故事书"},{"id":"slide-img-6","client":"nature beauty","desc":"主题图书馆蕴藏丰富美语故事书"},{"id":"slide-img-7","client":"nature beauty","desc":"主题图书馆蕴藏丰富美语故事书"}];
				       </script>
				  </div></div><!--#header END-->
				    
					<div id="kaidun_month_star">
				    	<img src="images/slice_33.png" />
                        <table border="0" cellpadding="0" cellspacing="0" >
                        <tr>
                          <td width="350">细数2010，宝宝们四 月 家 长 俱 部五月家长俱部行程表细数2010，宝宝们四月家长行程细数2010，宝宝们四 月 家 长 俱 部五月家长俱部行程表细数2010，宝宝们四月家长行程。</td><td width="10"></td><td><img src="images/kaidun_month_star.png" style="border:#FFF 1px solid;" /></td></tr>
                        </table>    
                    </div><!--#kaidun_month_star END-->
				    <br/>
				    <div id="kaidun_new_class">
				    	<img src="images/slice_37.png" />
				        <table border="0" cellpadding="0" cellspacing="0">
                        <tr class="title list-background"><td>开班名称</td><td>上课时间</td><td>开班日期</td><td>上课地点</td></tr>
                        <tr><td>开班名称</td><td>9:00~12:00</td><td>2011/10/3</td><td>徐汇田林校</td></tr>
                        <tr class="list-background"><td>开班名称</td><td>9:00~12:00</td><td>2011/10/3</td><td>徐汇田林校</td></tr>
                        <tr><td>开班名称</td><td>9:00~12:00</td><td>2011/10/3</td><td>徐汇田林校</td></tr>
                        <tr class="list-background"><td>开班名称</td><td>9:00~12:00</td><td>2011/10/3</td><td>徐汇田林校</td></tr>
                        </table>
					</div><!--#kaidun_new_class END-->			</td>
			<td id="main-right" valign="top">
					<div id="preview_video" ></div><img src="images/video-bar.png" style="margin-bottom:10px;" /><!--#preview_video END-->
					<script type="text/javascript">
					<!--
					var so = new SWFObject("images/vcastr22.swf", "pageswf", "200", "170", "8", "#FFFFFF");
					so.addParam("allowScriptAccess", "always");
					so.addParam("wmode", "transparent");
					so.write('preview_video');
					//-->
					</script>               
			        <div id="kaidun_activity" >
			            <img src="images/slice_29.png" />
					<ul  class="corner_bottom">                    
					<li><span class="colored-orange">1</span>test item</li>
					<li><span class="colored-orange">2</span>test item</li>
					<li><span class="colored-orange">3</span>test item</li>
					<li><span class="colored-orange">4</span>test item</li>  
					<li><span class="colored-orange">5</span>test item</li>                     
					</ul>				    
			            <p align="right" style="margin-top:10px;"><a href="hdmore.asp"><img src="images/btn-more.png" style="border:none; padding-right:10px;" /></a></p>
			        </div><!--#kaidun_activity END-->				        
			        <div id="game_donwload" >               
			            <img src="images/slice_35.png" />
					<ul  class="corner_bottom">                    
					<li><span class="colored-green">1</span>test item</li>
					<li><span class="colored-green">2</span>test item</li>
					<li><span class="colored-green">3</span>test item</li>
					<li><span class="colored-green">4</span>test item</li>  
					<li><span class="colored-green">5</span>test item</li>                     
					</ul>				    
				    
			            <p align="right" style="margin-top:10px;"><a href="game.asp"><img src="images/btn-more.png" style="border:none; padding-right:10px;" /></a></p>
			        </div><!--#game_donwload END-->			</td>
		</tr>
		</table>
		<div id="footer">
			<table width="970" border="0" cellpadding="0" cellspacing="0" style="margin-top:30px">
				<tr>
					<td width="208" align="left">
						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="208" height="179" title="dan">
						<param name="movie" value="images/dan.swf" />
						<param name="quality" value="high" />
						<param name="wmode" value="transparent" />
						<embed src="images/dan.swf" quality="high" wmode="transparent" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="208" height="179"></embed>
						</object>					</td>
					<td width="762" valign="bottom"  style="padding-bottom:20px;">
						<table border="0" cellpadding="0" cellspacing="0">
							<tr><td><span style=" color: #855d5d; margin-right:20px;">企业夥伴</span></td>
							<td><img src="images/partner-iq365.png" style="margin-right:20px;" /></td>
							<td><img src="images/partner-kk.png" style="margin-right:20px;" /></td>
							<td><img src="images/partner-caves.png" /></td>
							</tr>
							<tr><td height="20"></td></tr>
						</table>
						<span style=" color: #855d5d; font-size:11px;  ">
						COPYRIGHT(C)2011 DARTPOINT TECHOLOGY.LTD.ALL RIGHT RESERVED  COPYRIGHT/上海凯顿儿童美语<br/>
						Deaign by/ I'm 台湾我我工作室</span>					</td>
				</tr>
			</table>
		</div><!--#footer END-->
		</div><!--#main END-->    
	</div>
	<!--#container END-->
</div><!--#container-body END-->
</div><!--#gradient END-->
<div id="bottom"></div>


<!--[if lt IE 7]>
<script type="text/javascript" src="js/pngfix/unitpngfix.js"></script>
<![endif]-->
</body>
</html>
