<div class="left_bar">
                <div id="kaidun_notices" class="box">
                   <em class="icon"><img src="images/icons/laba.png" /></em>
                    <h3 class="corner_it"><div class="inner"><span><a href="notice.asp" title="">MORE </a></span>����֪ͨ</div></h3>
                    <ul>
                    
<%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_news where pf_news_category ='����֪ͨ' order by pf_news_date desc"
rs.open sql,conn,1,3
if  rs.eof or rs.bof then
%>
                    ����֪ͨ!
<%
else
i = 1
do while not rs.eof  or rs.bof
%>
<li><a href="noticeinfo.asp?id=<%=rs("id")%>" title="<%=rs("pf_news_name")%>"><%=left(replace(trim(rs("pf_news_name")),"<br>",""),13)%></a></li>
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
                </div><!-- End: #kaidun_notices -->
                <div id="contact_kaidun" class="box">
                   <em class="icon"><img src="images/icons/dianhua.png" /></em>
                    <h3 class="corner_it"><div class="inner">��ϵ����</div></h3>
                    <ul>
                        <li class="telphone">�������ԤԼ��4006-117-668</li>
                        <li class="hotline">�����绰��021-64360479</li>
                        <li class="fax">�����绰��021-64360489</li>
                        <li class="email">���䣺kaidun180@126.com</li>
                    </ul>
                </div><!-- End: #contact_kaidun -->

             <div class="bar_connection">
                    <span class="t"></span>
                    <img src="images/icons/bar_connection.png" />
                </div>
                <div class="bar_connection1"></div>

                <div id="latest_news" class="box">
                   <em class="icon"><img src="images/icons/news.png" /></em>
                   <h3 class="corner_it">
                     <div class="inner"><span><a href="news.asp" title="">MORE </a></span>������Ϣ</div></h3>
                    <ul>
                    <%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 5 * from pf_news where pf_news_category ='������Ѷ' order by pf_news_date desc"
rs.open sql,conn,1,1
if  rs.eof or rs.bof then
%>
                    ������Ѷ!
<%
else
k = 0
do while not rs.eof  or rs.bof
%>
                        <li><a href="newsinfo.asp?id=<%=rs("id")%>" title="<%=rs("pf_news_name")%>"><%=left(replace(trim(rs("pf_news_name")),"<br>",""),13)%></a></li>
                    <%
k = k + 1
if k > 14 then  exit do
rs.movenext
loop
end if
rs.close
set rs = nothing
%> 
        
                    </ul>
                </div><!-- End: #latest_news -->
            </div>