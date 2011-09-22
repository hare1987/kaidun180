<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style>

<%if session("pf_admin_name")="admin" and  session("pf_admin_jb")="0" then '超级管理员%>

<div id="left">
		<dl>
			<dt>管理员操作</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">修改密码</a>&nbsp;&nbsp;&nbsp;<a href="pf_admin.asp">管理员管理</a>
			  </div>
			</dd>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="oprate.asp">操作日志</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">注&nbsp;&nbsp;&nbsp; 销</a></div>
			</dd>
		</dl>
		
		 <dl>
			<dt>首页信息管理</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp">活动回顾</a>&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">游戏下载</a></div></dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">合作伙伴</a>&nbsp;&nbsp;&nbsp;<a href="uploadfile.asp">首页广告</a></div></dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_index_contact.asp?id=1">联系凯顿</a>&nbsp;&nbsp;&nbsp;<a href="pf_bulletin.asp?id=1">公告管理</a></div></dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_class.asp">开班管理</a></div>
		   </dd>
                        		</dl>
		
		<dl>
<dt>凯顿简介</dt>
			        <dd>
			          <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">凯顿介绍</a>&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">特色理念</a> </div>
			        </dd>
					<dd>
					  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">凯顿月之星</a></div>
				   </dd>
		</dl>
		
		<dl>
		     <dt>年度班</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1" class="style1">ABCbakery</a>&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1" class="style1">LA</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1" class="style1">ESL</a></div>
						</dd>
		</dl>
		
		<dl>
		     <dt>特色班</dt>
			     		<dd><div align="left">&nbsp;<a href="pf_c1.asp?id=1" class="style1">Phonic Magic</a>&nbsp;&nbsp;<a href="pf_c2.asp?id=1" class="style1">Sing  Chant</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;<a href="pf_c3.asp?id=1" class="style1">Reading House</a></div>
						</dd>
		</dl>
        
        	<dl>
		     <dt>星级考</dt>
			     	<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1" class="style1">Star Test</a></div>
						</dd>
		</dl>
        
        	<dl>
		     <dt>其他班</dt>
			     			<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1" class="style1">Hip</a></div>
						   </dd>
		</dl>
		
		<dl>
			<dt>校区介绍</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=2">徐汇田林校</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=3">黄浦书城校</a></div>  </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=4">浦东金桥校</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=5">闵行莘庄校</a></div> </dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc5.asp?id=6">虹口东宝校</a>		&nbsp;&nbsp;<a href="pf_sc6.asp?id=7">长宁虹桥校</a></div>  
                          						  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc7.asp?id=8">松江九亭校</a>		&nbsp;&nbsp;<a href="pf_sc8.asp?id=9">宝山大华校</a></div> 
		  </dd>
		</dl>
		
		 <dl>
			<dt>活动管理</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yyhd.asp">活动管理</a></div> </dd>
		</dl>

		<dl>
		<dt>招贤纳士</dt>
		 <dd>
		   <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">人才招聘</a></div>
		 </dd>
		</dl>

		<dl>
			<dt>新 闻 频 道</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">添加新闻</a> 
			    &nbsp;&nbsp;&nbsp;<a href="pf_news.asp">管理新闻</a></div>
			</dd>
		</dl>
		
		<dl>
			<dt>预约咨询</dt>
			<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yy_order.asp">在线预约</a></div></dd>
			<dt>&nbsp;</dt>
			<dd>
			  <div align="left"></div>
		  </dd>
			<dd>
			  <div align="left"></div>
		  </dd>
		</dl>
</div>
<%end if%>


<%if session("pf_admin_name")<>"admin" and  session("pf_admin_jb")="0" then '管理员%>
<div id="left">
		<dl>
			<dt>管理员操作</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">修改密码</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">注&nbsp;&nbsp;&nbsp; 销</a>
			  </div>
			</dd>
		</dl>
		
		 <dl>
			<dt>首页信息管理</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp?id=1">活动新闻</a>&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">游戏下载</a></div>  </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">友情链接</a></div></dd>
		</dl>
		
		<dl>
			<dt>凯顿简介</dt>
			        <dd>
			          <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">凯顿介绍</a>&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">特色理念</a> </div>
			        </dd>
					<dd>
					  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_zzjg.asp?id=1">组织架构</a>&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">名师推荐</a></div>
				   </dd>
		</dl>
		
		<dl>
		     <dt>凯顿课程</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1" class="style1">ABCbakery</a>&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1" class="style1">LA</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1" class="style1">Hip</a>&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1" class="style1">ESL</a></div>
						</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1" class="style1">Star Test</a>&nbsp;&nbsp;&nbsp;<a href="pf_s6.asp?id=1" class="style1">短期课程</a></div>
						</dd>
		</dl>
		
		<dl>
		     <dt>短期课程</dt>
			     		<dd><div align="left">&nbsp;<a href="pf_c1.asp?id=1" class="style1">Phonic Magic</a>&nbsp;&nbsp;<a href="pf_c2.asp?id=1" class="style1">Sing  Chant</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;<a href="pf_c3.asp?id=1" class="style1">Reading House</a></div>
						</dd>
		</dl>
		
		<dl>
			<dt>校区介绍</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=2">徐汇田林校</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=3">黄浦书城校</a></div>  
			     		</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=4">浦东金桥校</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=5">闵行莘庄校</a></div> 
                        <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc5.asp?id=6">虹口东宝校</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc6.asp?id=7">长宁虹桥校</a></div>
                        
                        <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc7.asp?id=8">松江九亭校</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc8.asp?id=9">宝山大华校</a></div>
		  </dd>
						<dd>
						   
						</dd>
		</dl>
		
		 <dl>
			<dt>联系我们</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_contact.asp?id=1">联系我们</a>&nbsp;&nbsp;&nbsp;<a href="pf_gf_order.asp">预约登记</a></div> </dd>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yyhd.asp">活动管理</a></div> </dd>
		</dl>

		<dl>
		<dt>招贤纳士</dt>
		 <dd>
		   <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">人才招聘</a></div>
		 </dd>
		</dl>

		<dl>
			<dt>新 闻 频 道</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">添加新闻</a> 
			    &nbsp;&nbsp;&nbsp;<a href="pf_news.asp">管理新闻</a></div>
			</dd>
		</dl>
		
		<dl>
			<dt>预约咨询</dt>
			<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_bm_order.asp">在线咨询</a>&nbsp;&nbsp;&nbsp;<a href="pf_yy_order.asp">在线预约</a></div> </dd>
		</dl>
</div>
<%end if%>


<%if session("pf_admin_name")<>"admin" and  session("pf_admin_jb")="1" then '操作员%>
<%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from pf_admin where  pf_admin_name = '" & session("pf_admin_name") & "'"
rs.open sql,conn,1,1
session("pf_admin_qx") = rs("pf_admin_qx")
rs.close
set rs = nothing
%>

<div id="left">
		<dl>
			<dt>管理操作</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">修改密码</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">注&nbsp;&nbsp;&nbsp; 销</a>
			  </div>
			</dd>
		</dl>
		
		 <dl>
			<dt>首页信息管理</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"活动新闻") then %>&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp?id=1">活动新闻</a><%end if%><%if InStr(session("pf_admin_qx"),"游戏下载") then %>&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">游戏下载</a><%end if%></div></dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"友情链接") then %>&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">友情链接</a><%end if%><%if InStr(session("pf_admin_qx"),"首页广告") then %>&nbsp;&nbsp;&nbsp;<a href="uploadfile.asp">首页广告</a><%end if%></div></dd>
		</dl>
		
		<dl>
			<dt>凯顿简介</dt>
			        <dd>
			          <div align="left"><%if InStr(session("pf_admin_qx"),"凯顿介绍") then %>&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">凯顿介绍</a><%end if%><%if InStr(session("pf_admin_qx"),"特色理念") then %>&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">特色理念</a> <%end if%></div>
			        </dd>
					<dd>
					  <div align="left"><%if InStr(session("pf_admin_qx"),"组织架构") then %>&nbsp;&nbsp;&nbsp;<a href="pf_zzjg.asp?id=1">组织架构</a><%end if%><%if InStr(session("pf_admin_qx"),"名师推荐") then %>&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">名师推荐</a><%end if%></div>
				   </dd>
		</dl>
		
		<dl>
		     <dt>凯顿课程</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"ABCbakery") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1" class="style1">ABCbakery</a><%end if%><%if InStr(session("pf_admin_qx"),"LA") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1" class="style1">LA</a><%end if%></div> 
			     		</dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Hip") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1" class="style1">Hip</a><%end if%><%if InStr(session("pf_admin_qx"),"ESL") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1" class="style1">ESL</a><%end if%></div>
						</dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Star Test") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1" class="style1">Star Test</a><%end if%><%if InStr(session("pf_admin_qx"),"短期课程") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s6.asp?id=1" class="style1">短期课程</a><%end if%></div>
						</dd>
		</dl>
		
		<dl>
		     <dt>短期课程</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Phonic Magic") then %>&nbsp;<a href="pf_c1.asp?id=1" class="style1">Phonic Magic</a><%end if%><%if InStr(session("pf_admin_qx"),"S Chant") then %>&nbsp;&nbsp;<a href="pf_c2.asp?id=1" class="style1">Sing  Chant</a><%end if%></div> 
			     		</dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Reading House") then %>&nbsp;<a href="pf_c3.asp?id=1" class="style1">Reading House</a><%end if%></div>
						</dd>
		</dl>
		
		<dl>
			<dt>校区介绍</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"田林校区") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=2">田林校区</a>
			     		    <%end if%><%if InStr(session("pf_admin_qx"),"书城校区") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=3">书城校区</a>
			     		    <%end if%></div>  </dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"浦东校区") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=4">浦东校区</a>
						    <%end if%><%if InStr(session("pf_admin_qx"),"莘庄校区") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=5">莘庄校区</a>
						    <%end if%></div> </dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"浦东校区") then %>
						<a href="pf_sc3.asp?id=6">虹口校区</a>
						<%end if%>
						</div>
						</dd>
		</dl>
		
		 <dl>
			<dt>联系我们</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"联系我们") then %>&nbsp;&nbsp;&nbsp;<a href="pf_contact.asp?id=1">联系我们</a><%end if%><%if InStr(session("pf_admin_qx"),"活动管理") then %>&nbsp;&nbsp;&nbsp;<a href="pf_yyhd.asp">活动管理</a><%end if%></div> </dd>
		</dl>

		<dl>
		<dt>招贤纳士</dt>
		 <dd>
		   <div align="left"><%if InStr(session("pf_admin_qx"),"人才招聘") then %>&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">人才招聘</a><%end if%></div>
		 </dd>
		</dl>

		<dl>
			<dt>新 闻 频 道</dt>
			<dd>
			  <div align="left"><%if InStr(session("pf_admin_qx"),"添加新闻") then %>&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">添加新闻</a> <%end if%>
			    <%if InStr(session("pf_admin_qx"),"管理新闻") then %>&nbsp;&nbsp;&nbsp;<a href="pf_news.asp">管理新闻</a><%end if%></div>
			</dd>
		</dl>
</div>
<%end if%>


<%if session("pf_admin_name")<>"admin" and  session("pf_admin_jb")="2" then '观察员%>

<div id="left">
		<dl>
			<dt>管理操作</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">修改密码</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">注&nbsp;&nbsp;&nbsp; 销</a></div>
			</dd>
		</dl>
		
		 <dl>
			<dt>数据管理</dt>
			     	<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_gf_order.asp">预约登记</a>&nbsp;&nbsp;&nbsp;<a href="pf_bm_order.asp">在线咨询</a></div> </dd>
					<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yy_order.asp">在线预约</a></div> </dd>
		</dl>

</div>
<%end if%>