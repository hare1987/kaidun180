<div class="left_bar">
                <!-- End: #kaidun_notices -->
                <div id="contact_kaidun">
                    <ul>
<form  name="yx"  onsubmit="return checkregform()" method="post" action="save.asp?action=gf">
<li>��������:<input type="text"  style="width:105px" id="name" name="name"></li>
<li>��������:<select style="width:100px" id="lngsex" name="age">
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
<li>ԤԼУ��:<select style="width:100px" id="school" name="school">
<option value="�������У">�������У</option>
<option value="�������У">�������У</option>
<option value="�ֶ�����У">�ֶ�����У</option>
<option value="����ݷׯУ">����ݷׯУ</option>
<option value="��ڶ���У">��ڶ���У</option>
<option value="��������У">��������У</option>
<option value="�ɽ���ͤУ">�ɽ���ͤУ</option>
<option value="��ɽ��У">��ɽ��У</option>
</select>
</li>
<li>�ҳ��ֻ�:<input type="text"  style="width:105px" id="tel" name="tel"></li>
<div align="center"><input type="submit" value="ԤԼ" /></div>
</form></ul>

                </div><!-- End: #contact_kaidun -->

                <div id="latest_news" class="box">
                   <em><img src="images/slice_30.png" /><span><a href="news.asp" title="">more</a></span></em>
                    <ul  class="corner_bottom">
                    <%
set rs = server.CreateObject("adodb.recordset")
sql = "select top 5 * from pf_news order by ID desc"
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
            </div>