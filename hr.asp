<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã���ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt; ������ʿ&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">�� �� �� ʿ</li>
                     </ul>
                  </div>
               </div>
         <div class="contents">
			<div class="content">
				<div class="title">������ʿ</div>

<table width="100%" height="198"  border="0" align="left" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="12">&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td width="3%" rowspan="8">&nbsp;</td>
                          <td width="97%" height="12"><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="news-list">
                            <tr>
                              <%
								Set rs = Server.CreateObject("adodb.recordset")
								sql = "select * from pf_recruitment where pf_recruitment_area='�ܲ�' order by id desc"
								rs.Open sql,conn,1,1
								if rs.recordcount=0 then
							  %>
                              <td height="30" colspan="2" class="STYLE15"><div align="left">�ܲ�</td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">����ְλ�ṩ</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">�ܲ�</span>
              <% Do While Not rs.eof%>
              <%
										if  month(rs("pf_recruitment_date")) <10  then
	    									m = 0 &  month(rs("pf_recruitment_date"))
										else
	    									m = month(rs("pf_recruitment_date"))
    									end if
										if  day(rs("pf_recruitment_date")) <10  then
	    									d = 0 &  day(rs("pf_recruitment_date"))
										else
	   										d = day(rs("pf_recruitment_date"))
    									end if
									  %>
  </div></td>
  </tr>
  <tr>
    <td height="30"  td class="date">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]��</td>
    <td>��<a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </td>
    <td>[ <%=rs("pf_recruitment_area")%> ]</td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			%>
  <%end if%>
                          </table>
                          
                          
                          
                            <p></p></td>
                        </tr>
                        <tr>
                          <td><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
								Set rs = Server.CreateObject("adodb.recordset")
								sql = "select * from pf_recruitment where pf_recruitment_area='����У��' order by id desc"
								rs.Open sql,conn,1,1
								if rs.recordcount=0 then
							  %>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">����У��</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">����ְλ�ṩ</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">����У��</span>
              <% Do While Not rs.eof%>
              <%
										if  month(rs("pf_recruitment_date")) <10  then
	    									m = 0 &  month(rs("pf_recruitment_date"))
										else
	    									m = month(rs("pf_recruitment_date"))
    									end if
										if  day(rs("pf_recruitment_date")) <10  then
	    									d = 0 &  day(rs("pf_recruitment_date"))
										else
	   										d = day(rs("pf_recruitment_date"))
    									end if
									  %>
  </div></td>
  </tr>
  <tr>
    <td height="30"  td class="date">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]��</td>
    <td>��<a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </td>
    <td>[ <%=rs("pf_recruitment_area")%> ]</td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			%>
  <%end if%>
                          </table>
                            <p></p></td>
                        </tr>
                        <tr>
                          <td><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
									Set rs = Server.CreateObject("adodb.recordset")
									sql = "select * from pf_recruitment where pf_recruitment_area='ݷׯУ��' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
							    %>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">ݷׯУ��</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">����ְλ�ṩ</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">ݷׯУ��</span>
              <%Do While Not rs.eof%>
              <%
											if  month(rs("pf_recruitment_date")) <10  then
	    									m = 0 &  month(rs("pf_recruitment_date"))
											else
	    									m = month(rs("pf_recruitment_date"))
    										end if
											if  day(rs("pf_recruitment_date")) <10  then
	    									d = 0 &  day(rs("pf_recruitment_date"))
											else
	   										d = day(rs("pf_recruitment_date"))
    										end if
										%>
  </div></td>
  </tr>
    <tr>
    <td height="30"  td class="date">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]��</td>
    <td>��<a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </td>
    <td>[ <%=rs("pf_recruitment_area")%> ]</td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			  %>
  <%end if%>
                          </table>
                            <p>&nbsp;</p>
                            <p></p></td>
                        </tr>
                        <tr>
                          <td><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
									Set rs = Server.CreateObject("adodb.recordset")
									sql = "select * from pf_recruitment where pf_recruitment_area='���У��' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">���У��</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">����ְλ�ṩ</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">���У��</span>
              <%Do While Not rs.eof%>
              <%
											if  month(rs("pf_recruitment_date")) <10  then
	    										m = 0 &  month(rs("pf_recruitment_date"))
											else
	    										m = month(rs("pf_recruitment_date"))
    										end if
											if  day(rs("pf_recruitment_date")) <10  then
	    										d = 0 &  day(rs("pf_recruitment_date"))
											else
	   											d = day(rs("pf_recruitment_date"))
    										end if
										%>
  </div></td>
  </tr>
  <tr>
    <td height="30"  td class="date">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]��</td>
    <td>��<a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </td>
    <td>[ <%=rs("pf_recruitment_area")%> ]</td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			  %>
  <%end if%>
                          </table>
                            <p>&nbsp;</p>
                            <p></p></td>
                        </tr>
                        <tr>
                          <td><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
									Set rs = Server.CreateObject("adodb.recordset")
									sql = "select * from pf_recruitment where pf_recruitment_area='���У��' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">���У��</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">����ְλ�ṩ</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">���У��</span>
              <%Do While Not rs.eof%>
              <%
											if  month(rs("pf_recruitment_date")) <10  then
	    										m = 0 &  month(rs("pf_recruitment_date"))
											else
	    										m = month(rs("pf_recruitment_date"))
    										end if
											if  day(rs("pf_recruitment_date")) <10  then
	    										d = 0 &  day(rs("pf_recruitment_date"))
											else
	   											d = day(rs("pf_recruitment_date"))
    										end if
										%>
  </div></td>
  </tr>
  <tr>
    <td height="30"  td class="date">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]��</td>
    <td>��<a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </td>
    <td>[ <%=rs("pf_recruitment_area")%> ]</td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			  %>
  <%end if%>
                          </table>
                            <p>&nbsp;</p>
                            <p></p></td>
                        </tr>
                        <tr>
                          <td><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
									Set rs = Server.CreateObject("adodb.recordset")
									sql = "select * from pf_recruitment where pf_recruitment_area='����У��' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">����У��</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">����ְλ�ṩ</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">����У��</span>
              <%Do While Not rs.eof%>
              <%
											if  month(rs("pf_recruitment_date")) <10  then
	    										m = 0 &  month(rs("pf_recruitment_date"))
											else
	    										m = month(rs("pf_recruitment_date"))
    										end if
											if  day(rs("pf_recruitment_date")) <10  then
	    										d = 0 &  day(rs("pf_recruitment_date"))
											else
	   											d = day(rs("pf_recruitment_date"))
    										end if
										%>
  </div></td>
  </tr>
  <tr>
    <td height="30"  td class="date">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]��</td>
    <td>��<a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </td>
    <td>[ <%=rs("pf_recruitment_area")%> ]</td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			  %>
  <%end if%>
                          </table>
                            <p>&nbsp;</p></td>
                        </tr>
                        <tr>
                          <td>
                            <table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                              <tr>
                                <%
									Set rs = Server.CreateObject("adodb.recordset")
									sql = "select * from pf_recruitment where pf_recruitment_area='�ֶ�У��' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                                <td height="30" colspan="2"><div align="left">
                                    <span class="STYLE15">�ֶ�У��</span> </td>
                              </tr>
                              <tr class="bodyfont1">
                                <td height="30"  class="dd1"><div align="left">����ְλ�ṩ</div></td>
                                <td></td>
                              </tr>
                              <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">�ֶ�У��</span>
              <%Do While Not rs.eof%>
              <%
											if  month(rs("pf_recruitment_date")) <10  then
	    										m = 0 &  month(rs("pf_recruitment_date"))
											else
	    										m = month(rs("pf_recruitment_date"))
    										end if
											if  day(rs("pf_recruitment_date")) <10  then
	    										d = 0 &  day(rs("pf_recruitment_date"))
											else
	   											d = day(rs("pf_recruitment_date"))
    										end if
										%>
  </div></td>
  </tr>
  <tr>
    <td height="30"  td class="date">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]��</td>
    <td>��<a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </td>
    <td>[ <%=rs("pf_recruitment_area")%> ]</td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			  %>
  <%end if%>
                            </table></td>
                        </tr>
                        <tr>
                          <td><p>&nbsp;</p>
							<p>&nbsp;</p>
							<p>&nbsp;</p>							</td>
                        </tr>
                        
                    </table>
                    </div>
                    </div>
                    
              
                    
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->
