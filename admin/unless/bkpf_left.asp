<div id="left">
		<dl>
			<dt>����Ա����</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">�޸�����</a></div>
			</dd>
			<div align="left">
			    <%
				if session("pf_admin_name")="admin"or session("pf_admin_name")="zhy"then
			%>
		  </div>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_admin.asp">����Ա����</a></div>
			</dd>
			<div align="left">
			    <%  
				end if
			%>
	      </div>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="exit.asp">ע&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</a></div>
			</dd>
			<div align="left">
			  </dd>
		      </div>
		</dl>
		<dl>
			<dt>���ټ��</dt>
			             <dd>
			               <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">���ٽ���</a> </div>
			             </dd>
			     		<dd>
			     		  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_team.asp?id=1">ʦ���Ŷ�</a> </div>
			     		</dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">��ɫ����</a></div>
						</dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_zzjg.asp?id=1">��֯�ܹ�</a></div>
						</dd>
		</dl>
		<dl>
		     <dt>���ٿγ�</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1">��Ȱ�</a></div> </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1">��ɫ��</a></div></dd>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1">������</a> </div></dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1">�м���</a></div></dd>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1">�߼���</a></div> </dd>
		</dl>
		<dl>
			<dt>У������</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=1">����У��</a></div>  </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=1">���У��</a></div> </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=1">�ֶ�У��</a></div> </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=1">ݷׯУ��</a></div> </dd>
		</dl>
		 <dl>
			<dt>��ϵ����</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_contact.asp?id=1">��ϵ����</a></div> </dd>
		</dl>
		 <dl>
			<dt>��ҳ�����</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp?id=1">�����</a></div>  </dd>
		</dl>
		 <dl>
			<dt>��ʦ�Ƽ�</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">�����ʦ</a></div>  </dd>
		</dl>
		<dl>
		<dt>������ʿ</dt>
		 <dd>
		   <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">�˲���Ƹ</a> </div>
		 </dd>
		</dl>
		<dl>
				<dt>������Ŀ</dt>
				<dd>
				  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">��Ϸ����</a></div>
				</dd>
				<dd>
				  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">��������</a></div>
				</dd>
		</dl>
		<dl>
			<dt>�� �� Ƶ ��</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">�������</a> </div>
			</dd>
			<%
				if session("pf_admin_name")="admin"or session("pf_admin_name")="zhy"then
			%>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_news.asp">��������</a></div>
			</dd>
		   <%
				END IF
			%>
		</dl>
		<dl>
			<dt>��Ϣ����</dt>
			<dd><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="pf_gf_order.asp">ԤԼ�Ǽ�</a></div> </dd>
		</dl>
	</div>