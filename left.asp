<div class="left_bar">
                <!-- End: #kaidun_notices -->
                <div id="contact_kaidun" class="box">
                   <em class="icon"><img src="images/icons/dianhua.png" /></em>
  <h3 class="corner_it"><div class="inner">免费试听课预约</div></h3>
                    <ul>
                        <li class="telphone">预约电话:4006-117-668</li>
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
<option value="虹口东宝校">虹口东宝校</option>
<option value="长宁虹桥校">长宁虹桥校</option>
<option value="松江九亭校">松江九亭校</option>
<option value="宝山大华校">宝山大华校</option>
</select>
</li>
<li>家长手机:<input type="text"  style="width:105px" id="tel" name="tel"></li>
<div align="center"><input type="submit" value="预约" /></div>
</form></ul>

                </div><!-- End: #contact_kaidun -->

             <div class="bar_connection">
                    <span class="t corner_bottom"></span>
                    <img src="images/icons/bar_connection.png" />
                </div>
                <div class="bar_connection1 corner_top"></div>

                <div id="latest_news" class="box">
                   <em class="icon"><img src="images/icons/news.png" /></em>
                   <h3 class="corner_it">
                     <div class="inner"><span><a href="news.asp" title="">MORE </a></span>最新资讯</div></h3>
                    <ul>
                    <%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 5 * from pf_news order by ID desc"
rs.open sql,conn,1,1
if  rs.eof or rs.bof then
%>
                    暂无资讯!
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
                    <h3 class="corner_it"><div class="inner"><span><a href="#" title="">MORE</a></span>在线测试</div></h3>
                    <ul class="corner_bottom">
          
                    </ul>
                </div>
            </div>