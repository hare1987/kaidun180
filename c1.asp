<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;<a href="item.asp">特色班</a>&nbsp;&gt;Phonic Magic Cards</span>
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
				<div class="title">字母拼读强效记忆班 Magic Phonics /5 level</div>
                  <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>
<p><span style="color:#A72589; font-size:18px;">课程内容</span></p>
<p>
课程为发音规则的整理和运用，搭配美语活动与游戏让孩子学的自信快乐。结合字母拼读法与直觉式记忆法，让孩子正确的学习发音与快速增加辞汇能力。<BR>授课对象:7-12岁儿童<BR>
</p>

<TABLE class="list-table" border=0 cellSpacing=0 cellPadding=0 width="100%" bgColor=#02a1ec>
<TBODY>
<TR bgColor=#ff9933>
<TD height=35 width=50>
班别</TD>
<TD height=35 width=100>
招生对象</TD>
<TD height=35 width=200>
教材</TD>
<TD height=35 width=300>
上课时数</TD>
</TR>
<TR bgColor=#fff3c3>
<TD height=35 width=80>
字母拼读</TD>
<TD height=35>
<P align=left>7-12岁</P></TD>
<TD height=35>
Magic Phonic Card <br />蓝卡+红卡+绿卡+黄卡+紫卡
</TD>
<TD height=35>
每次2课时，一周1次 45分钟/课时，<br />总计：24课时 3 个月一期</TD>
</TR>
</TBODY>
</TABLE>
<P><SPAN style="color:#A72589; font-size:18px;">授课方式：</SPAN><BR></P>
<p>由中籍老师授课。</P>
 <p> <SPAN style="color:#A72589; font-size:18px;">课程目标:</SPAN><BR></p><p>自然养成听音、辨音的能力养成。希望以最简单的方式，让小朋友理解并学习运用复杂的字母拼读规则，并快速的运用在阅读技巧上。 </P>
<p><SPAN style="color:#A72589; font-size:18px;">备注：</SPAN><br /></p>
<p>1. 每期教材包含学生翻卡、CD、测试本+CD<BR>
2. 一班不超过15学生</p>
<p><A href="bm.asp?class=Phonic Magic Cards"><IMG border=0 src="images/z6.png" width=215 height=118></A></p>
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