<div class="left_bar">
                <!-- End: #kaidun_notices -->
                <div id="contact_kaidun">
                    <ul>
<form  name="yx"  onsubmit="return checkregform()" method="post" action="save.asp?action=gf">
<li>宝宝姓名:<input type="text"  style="width:105px" id="name" name="name"></li>
<li>宝宝年龄:<select style="width:100px" id="lngsex" name="age">
<option value="2.5">2.5</option>
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

                <div id="latest_news" class="box">
                   <em><img src="images/slice_30.png" /></em>
                   <!--
                <h3> <div class="inner"><span><a href="news.asp" title=""><img src="images/btn-more.png"/></a></span></div></h3>-->
                    <ul  class="corner_bottom">
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
            </div>