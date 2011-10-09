<div id="left">
		<dl>
			<dt>管理员操作</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">修改密码</a></div>
			</dd>
			<div align="left">
			    <%
				if session("pf_admin_name")="admin"or session("pf_admin_name")="zhy"then
			%>
		  </div>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_admin.asp">管理员管理</a></div>
			</dd>
			<div align="left">
			    <%  
				end if
			%>
	      </div>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="exit.asp">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</a></div>
			</dd>
			<div align="left">
			  </dd>
		      </div>
		</dl>
		<dl>
			<dt>凯顿简介</dt>
			             <dd>
			               <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">凯顿介绍</a> </div>
			             </dd>
			     		<dd>
			     		  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_team.asp?id=1">师资团队</a> </div>
			     		</dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">特色理念</a></div>
						</dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_zzjg.asp?id=1">组织架构</a></div>
						</dd>
		</dl>
		<dl>
		     <dt>凯顿课程</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1">年度班</a></div> </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1">特色班</a></div></dd>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1">初级班</a> </div></dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1">中级班</a></div></dd>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1">高级班</a></div> </dd>
		</dl>
		<dl>
			<dt>校区介绍</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=1">田林校区</a></div>  </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=1">书城校区</a></div> </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=1">浦东校区</a></div> </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=1">莘庄校区</a></div> </dd>
		</dl>
		 <dl>
			<dt>联系我们</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_contact.asp?id=1">联系我们</a></div> </dd>
		</dl>
		 <dl>
			<dt>首页活动新闻</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp?id=1">活动新闻</a></div>  </dd>
		</dl>
		 <dl>
			<dt>名师推荐</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">添加名师</a></div>  </dd>
		</dl>
		<dl>
		<dt>招贤纳士</dt>
		 <dd>
		   <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">人才招聘</a> </div>
		 </dd>
		</dl>
		<dl>
				<dt>其他栏目</dt>
				<dd>
				  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">游戏下载</a></div>
				</dd>
				<dd>
				  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">友情链接</a></div>
				</dd>
		</dl>
		<dl>
			<dt>新 闻 频 道</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">添加新闻</a> </div>
			</dd>
			<%
				if session("pf_admin_name")="admin"or session("pf_admin_name")="zhy"then
			%>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_news.asp">管理新闻</a></div>
			</dd>
		   <%
				END IF
			%>
		</dl>
		<dl>
			<dt>信息管理</dt>
			<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_gf_order.asp">预约登记</a></div> </dd>
		</dl>
	</div>