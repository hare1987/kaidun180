<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;<a href="item.asp">特色班</a>&nbsp;&gt;Sing & Chant</span>
                             <ul>
                        <li class="style6">特色班</li>
                        <li class="style11"><a href="year.asp">年度班</a></li>
                        <li class="style11"><a href="star.asp">星级考</a></li>
                        <li class="style11"><a href="other.asp">其他班</a></li>                    
                      </ul>
                  </div>
               </div>

<div class="contents">
			<div class="content">
				<div class="title">幼儿唱诵班 Sing&amp;Chant /5 level</div>
                  <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>

  <p><span style="color:#A72589; font-size:18px;">课程内容</span><BR>该课程针对幼儿活泼好动， 模仿能力强，美语儿歌、歌曲朗朗上口的特点，使孩子们在唱玩中学习流利的美语。 <BR>
授课对象:3-6岁儿童<BR>
  </p>
  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
<TR>
<TD width="4%">&nbsp;</TD>
<TD width="96%">
<TABLE class=t_table border=0 cellSpacing=1 cellPadding=0 width="100%" bgColor=#02a1ec>
<TBODY>
<TR bgColor=#ff9933>
<TD height=35 width=123>
<P align=center><STRONG>班别<BR></STRONG></P></TD>
<TD height=35 width=182>
<P align=center><STRONG>招生对象<BR></STRONG></P></TD>
<TD height=35 width=225>
<P align=center><STRONG>教材<BR></STRONG></P></TD>
<TD height=35 width=185>
<P align=center><STRONG>上课时数<BR></STRONG></P></TD></TR>
<TR bgColor=#fff3c3>
<TD height=35 width=123>
<P class=style4 align=center>幼儿美语唱诵班</P></TD>
<TD height=35>
<P align=center>未曾就读其他美语课程</P></TD>
<TD height=35>
<DIV align=left><SPAN class=style4><SPAN class=style4>Sing &amp; Chat </SPAN><BR></DIV></TD>
<TD height=35>
<DIV align=left>每次2课时，一周1次45分钟/课时，总计：24课时3 个月一期<BR></DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<P><SPAN style="color:#A72589; font-size:18px;">授课方式：</SPAN><br />由中籍老师授课。</P>
<P><SPAN style="color:#A72589; font-size:18px;">课程目标:</SPAN><BR>
通过唱歌的方式带领孩子进入美语的学习天地并藉由书中的活泼有趣的歌曲，让孩子体验唱歌学美语的快乐经验。 </P>
<p><SPAN style="color:#A72589; font-size:18px;">备注：</SPAN> 教材包含进口学生用书+CD</p>
<p><IMG border=0 src="images/z6.png" width=215 height=118></A></p>



				  <%
				  rs.close
				  set rs = nothing
				  %>
          	</div>
		</div>
 </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->