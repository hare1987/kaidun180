<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">

<div class="crumbs">
                  <div class="inner">
     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt;<a href="item.asp">��ɫ��</a>&nbsp;&gt;Phonic Magic Cards</span>
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
				<div class="title">��ĸƴ��ǿЧ����� Magic Phonics /5 level</div>
                  <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
                                  				  <%
				  set rs =server.CreateObject("adodb.recordset")
				  rs.open "select * from  pf_custom",conn,1,1
				  %>
<p><span style="color:#A72589; font-size:18px;">�γ�����</span></p>
<p>
�γ�Ϊ�����������������ã�������������Ϸ�ú���ѧ�����ſ��֡������ĸƴ������ֱ��ʽ���䷨���ú�����ȷ��ѧϰ������������Ӵǻ�������<BR>�ڿζ���:7-12���ͯ<BR>
</p>

<TABLE class="list-table" border=0 cellSpacing=0 cellPadding=0 width="100%" bgColor=#02a1ec>
<TBODY>
<TR bgColor=#ff9933>
<TD height=35 width=50>
���</TD>
<TD height=35 width=100>
��������</TD>
<TD height=35 width=200>
�̲�</TD>
<TD height=35 width=300>
�Ͽ�ʱ��</TD>
</TR>
<TR bgColor=#fff3c3>
<TD height=35 width=80>
��ĸƴ��</TD>
<TD height=35>
<P align=left>7-12��</P></TD>
<TD height=35>
Magic Phonic Card <br />����+�쿨+�̿�+�ƿ�+�Ͽ�
</TD>
<TD height=35>
ÿ��2��ʱ��һ��1�� 45����/��ʱ��<br />�ܼƣ�24��ʱ 3 ����һ��</TD>
</TR>
</TBODY>
</TABLE>
<P><SPAN style="color:#A72589; font-size:18px;">�ڿη�ʽ��</SPAN><BR></P>
<p>���м���ʦ�ڿΡ�</P>
 <p> <SPAN style="color:#A72589; font-size:18px;">�γ�Ŀ��:</SPAN><BR></p><p>��Ȼ�����������������������ɡ�ϣ������򵥵ķ�ʽ����С������Ⲣѧϰ���ø��ӵ���ĸƴ�����򣬲����ٵ��������Ķ������ϡ� </P>
<p><SPAN style="color:#A72589; font-size:18px;">��ע��</SPAN><br /></p>
<p>1. ÿ�ڽ̲İ���ѧ��������CD�����Ա�+CD<BR>
2. һ�಻����15ѧ��</p>
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