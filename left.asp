<div class="left_bar">
                <!-- End: #kaidun_notices -->
                <div id="contact_kaidun" class="box">
                   <em class="icon"><img src="images/icons/dianhua.png" /></em>
  <h3 class="corner_it"><div class="inner">���������ԤԼ</div></h3>
                    <ul>
                        <li class="telphone">ԤԼ�绰:4006-117-668</li>
<form  name="yx"  onsubmit="return checkregform()" method="post" action="save.asp">
<li>��������:<input type="text" class="in_txt" style="width:105px" id="name" name="name"></li>
<li>��������:<select style="width:42px" id="lngsex" name="age">
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
<li>ԤԼУ��:<select style="width:100px" id="school" name="school">
<option value="1">�������У</option>
<option value="2">�������У</option>
<option value="3">�ֶ�����У</option>
<option value="4">����ݷׯУ</option>
<option value="5">��ڶ���У</option>
<option value="6">��������У</option>
<option value="7">�ɽ���ͤУ</option>
<option value="8">��ɽ��У</option>
</select>
</li>
<li>��ϵ�绰:<input type="text" class="in_txt" style="width:105px" id="tel" name="tel"></li>
<div align="center"><input type="submit" name="" value="ԤԼ" /></div>
</form></ul>

                </div><!-- End: #contact_kaidun -->

             <div class="bar_connection">
                    <span class="t"></span>
                    <img src="images/icons/bar_connection.png" />
                </div>
                <div class="bar_connection1"></div>

                <div id="latest_news" class="box">
                   <em class="icon"><img src="images/icons/news.png" /></em>
                   <h3 class="corner_it">
                     <div class="inner"><span><a href="news.asp" title="">MORE </a></span>������Ѷ</div></h3>
                    <ul>
                    <%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 5 * from pf_news order by pf_news_date desc"
rs.open sql,conn,1,1
if  rs.eof or rs.bof then
%>
                    ������Ѷ!
<%
else
do while not rs.eof  or rs.bof
%>
                        <li><a href="newsinfo.asp?id=<%=rs("id")%>" title="<%=rs("pf_news_name")%>"><%=left(replace(trim(rs("pf_news_name")),"<br>",""),13)%></a></li>
                    <%
rs.movenext
loop
end if
rs.close
set rs = nothing
%> 
        
                    </ul>
                </div><!-- End: #latest_news -->
         <div id="online_test" class="box">
                   <em id="pen"><img src="images/icons/pen.png" /></em>
                    <h3 class="corner_it"><div class="inner"><span><a href="#" title="">MORE</a></span>���߲���</div></h3>
                    <ul>
                        
                    </ul>
                </div>
            </div>