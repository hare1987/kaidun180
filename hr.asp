<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 招贤纳士&nbsp;&nbsp;</span>
                     <ul>
                        <li class="style6">招 贤 纳 士</li>
                     </ul>
                  </div>
               </div>
         <div class="contents">
			<div class="content">
				<div class="title">招贤纳士</div>

<table width="100%" height="198"  border="0" align="left" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="12">&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td width="3%" rowspan="10">&nbsp;</td>
                          <td width="97%" height="12"><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
								Set rs = Server.CreateObject("adodb.recordset")
								sql = "select * from pf_recruitment where pf_recruitment_area='总部' order by id desc"
								rs.Open sql,conn,1,1
								if rs.recordcount=0 then
							  %>
                              <td height="30" colspan="2" class="STYLE15"><div align="left">总部</td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">总部</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
								sql = "select * from pf_recruitment where pf_recruitment_area='徐汇田林校' order by id desc"
								rs.Open sql,conn,1,1
								if rs.recordcount=0 then
							  %>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">徐汇田林校</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">徐汇田林校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
									sql = "select * from pf_recruitment where pf_recruitment_area='黄浦书城校' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
							    %>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">黄浦书城校</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">黄浦书城校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
									sql = "select * from pf_recruitment where pf_recruitment_area='浦东金桥校' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">浦东金桥校</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">浦东金桥校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
									sql = "select * from pf_recruitment where pf_recruitment_area='闵行莘庄校' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">闵行莘庄校</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">闵行莘庄校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
									sql = "select * from pf_recruitment where pf_recruitment_area='虹口东宝校' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">虹口东宝校</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">虹口东宝校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
									sql = "select * from pf_recruitment where pf_recruitment_area='长宁虹桥校' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                                <td height="30" colspan="2"><div align="left">
                                    <span class="STYLE15">长宁虹桥校</span> </td>
                              </tr>
                              <tr class="bodyfont1">
                                <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                                <td></td>
                              </tr>
                              <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">长宁虹桥校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
                          <td><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
								Set rs = Server.CreateObject("adodb.recordset")
								sql = "select * from pf_recruitment where pf_recruitment_area='松江九亭校' order by id desc"
								rs.Open sql,conn,1,1
								if rs.recordcount=0 then
							  %>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">松江九亭校</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">松江九亭校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
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
                        <tr><td><table width="90%" height="0" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyfont">
                            <tr>
                              <%
									Set rs = Server.CreateObject("adodb.recordset")
									sql = "select * from pf_recruitment where pf_recruitment_area='宝山大华校' order by id desc"
									rs.Open sql,conn,1,1
									if rs.recordcount=0 then
								%>
                              <td height="30" colspan="2"><div align="left">
                                  <span class="STYLE15">宝山大华校</span> </td>
                            </tr>
                            <tr class="bodyfont1">
                              <td height="30"  class="dd1"><div align="left">暂无职位提供</div></td>
                              <td></td>
                            </tr>
                            <%else%>
  <td height="30" colspan="2"><div align="left"><span class="STYLE15">宝山大华校</span>
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
  <tr class="bodyfont1">
    <td height="30"  class="dd1"><div align="left">[ <%=year(rs("pf_recruitment_date"))&"-"&m&"-"&d%> ]　　                    &gt;&gt; <a href="<%=rs("pf_recruitment_link")%>" target="_blank" > <%=rs("pf_recruitment_name")%> </a> </div></td>
    <td align="right"  class="dd1"><div align="right">[ <%=rs("pf_recruitment_area")%> ]</div></td>
  </tr>
  <%
								rs.MoveNext
								Loop
								rs.Close
								Set rs = nothing
			      			  %>
  <%end if%>
                          </table>						</td>
                        </tr>
                        
                        <tr>
                        <td></td>

                        
                        </tr>
                            
                            
                            
                                                      
                    </table>

                    </div>
                    </div>
                    
              
                    
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->
