<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;<a href="item.asp">��ɫ��</a>&nbsp;&gt;Sing & Chant</span>
                             <ul>
                        <li class="style6">��ɫ��</li>
                        <li class="style11"><a href="year.asp">��Ȱ�</a></li>
                        <li class="style11"><a href="star.asp">�Ǽ���</a></li>
                        <li class="style11"><a href="other.asp">������</a></li>                    
                      </ul>
                  </div>
               </div>

<div class="contents">
			<div class="content">
				<div class="title">�׶����а� Sing&amp;Chant /5 level</div>
                  <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>

  <p><span style="color:#A72589; font-size:18px;">�γ�����</span><BR>�ÿγ�����׶����úö��� ģ������ǿ��������衢���������Ͽڵ��ص㣬ʹ�������ڳ�����ѧϰ��������� <BR>
�ڿζ���:3-6���ͯ<BR>
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
<P align=center><STRONG>���<BR></STRONG></P></TD>
<TD height=35 width=182>
<P align=center><STRONG>��������<BR></STRONG></P></TD>
<TD height=35 width=225>
<P align=center><STRONG>�̲�<BR></STRONG></P></TD>
<TD height=35 width=185>
<P align=center><STRONG>�Ͽ�ʱ��<BR></STRONG></P></TD></TR>
<TR bgColor=#fff3c3>
<TD height=35 width=123>
<P class=style4 align=center>�׶����ﳪ�а�</P></TD>
<TD height=35>
<P align=center>δ���Ͷ���������γ�</P></TD>
<TD height=35>
<DIV align=left><SPAN class=style4><SPAN class=style4>Sing &amp; Chat </SPAN><BR></DIV></TD>
<TD height=35>
<DIV align=left>ÿ��2��ʱ��һ��1��45����/��ʱ���ܼƣ�24��ʱ3 ����һ��<BR></DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<P><SPAN style="color:#A72589; font-size:18px;">�ڿη�ʽ��</SPAN><br />���м���ʦ�ڿΡ�</P>
<P><SPAN style="color:#A72589; font-size:18px;">�γ�Ŀ��:</SPAN><BR>
ͨ������ķ�ʽ���캢�ӽ��������ѧϰ��ز��������еĻ�����Ȥ�ĸ������ú������鳪��ѧ����Ŀ��־��顣 </P>
<p><SPAN style="color:#A72589; font-size:18px;">��ע��</SPAN> �̲İ�������ѧ������+CD</p>
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