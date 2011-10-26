<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<script src="javascripts/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="javascripts/jquery.pngFix.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script type="text/javascript">
            $(document).ready(function(){
               $(document).pngFix(); 	
            });
        </script>
        <meta name="author" content="kaidun" />
<title>
<%=title%>凯顿儿童美语,儿童美语，幼儿美语，少儿美语!
</title>
        <link href="stylesheets/reset.css" media="screen, projection" rel="stylesheet" type="text/css" /> 
        <link href="stylesheets/screen.css" media="screen, projection" rel="stylesheet" type="text/css" />   
        <% current_theme = session("current_theme")
			if current_theme = "" then
				current_theme = "yellow"
			end if
		%>
        <link id="theme_css" href="stylesheets/<%= current_theme %>.css" media="screen, projection" rel="stylesheet" type="text/css" />
</script>
    </head>
    <body>
        <div id="container">
        <div id="top_bar">
           <div id="top_menus">
               <ul>
                   <li ><a class="corner_bottom" href="#" title="在线水平测试">在线水平测试</a></li>
                   <li ><a class="corner_bottom" href="school.asp" title="分校找寻">分校找寻</a></li>
                   <li ><a class="corner_bottom" href="#" title="">加入最爱</a></li>
                   <li ><a class="corner_bottom" href="regsiter.asp" title="">免费活动预约</a></li>
               </ul>
           </div><!-- End: #top_menus -->
           <!--    <div id="top_notice">
          <div class="inner">
              <ul>
                                  <%
set rs = server.CreateObject("adodb.recordset")
sql = "select  * from bulletin where id=1"
rs.open sql,conn,1,1
%>
           <li style="padding-top:50px; padding-left:45px;"><%=rs("b_content")%></li>
           	<%
rs.close
set rs = nothing
				%>
               </ul>             
              </div>
           </div>--> 
            <div id="style_choosing">
                <div id="backto_home"><a href="/">回首页</a></div>
                <span id="yellow_style" class="style_btn" theme='yellow' title="黄"></span>
                <span id="red_style"    class="style_btn" theme='red' title="粉红"></span>
                <span id="blue_style"   class="style_btn" theme='blue' title="粉蓝"></span>
                <span class="tip">What color do you like?</span>
            </div><!-- End: #style_choosing -->
        </div><!-- #End: #top_bar -->
        <div id="nav">
            <div class="inner"></div>
            <div id="flash"> 
             <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="970" height="345">
              <param name="movie" value="images/nav.swf" />
              <param name="quality" value="high" />
              <param name="wmode" value="transparent" />
              <embed src="images/nav.swf" width="970" height="345" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
            </object>
            </div>
        </div><!-- End: #nav -->
      <div id="slogan">
            <div class="inner">
               <marquee loop="-1" scrollamount="3" scrolldelay="1000"　behavior="scroll" direction="left" >
                     <div class="inner2">
                  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>   
                  <span> <%=rs("slogan")%></span>
                  <%
				  rs.close
				  set rs = nothing
				  %>
                 </div>
                 </marquee>
            </div>
        </div><!-- End: #slogan -->