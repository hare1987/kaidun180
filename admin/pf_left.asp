<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style>

<%if session("pf_admin_name")="admin" and  session("pf_admin_jb")="0" then '��������Ա%>

<div id="left">
		<dl>
			<dt>����Ա����</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">�޸�����</a>&nbsp;&nbsp;&nbsp;<a href="pf_admin.asp">����Ա����</a>
			  </div>
			</dd>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="oprate.asp">������־</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">ע&nbsp;&nbsp;&nbsp; ��</a></div>
			</dd>
		</dl>
		
		 <dl>
			<dt>��ҳ��Ϣ����</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp">��ع�</a>&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">��Ϸ����</a></div></dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">�������</a>&nbsp;&nbsp;&nbsp;<a href="uploadfile.asp">��ҳ���</a></div></dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_index_contact.asp?id=1">��ϵ����</a>&nbsp;&nbsp;&nbsp;<a href="pf_bulletin.asp?id=1">�������</a></div></dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_class.asp">�������</a></div>
		   </dd>
                        		</dl>
		
		<dl>
<dt>���ټ��</dt>
			        <dd>
			          <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">���ٽ���</a>&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">��ɫ����</a> </div>
			        </dd>
					<dd>
					  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">������֮��</a></div>
				   </dd>
		</dl>
		
		<dl>
		     <dt>��Ȱ�</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1" class="style1">ABCbakery</a>&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1" class="style1">LA</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1" class="style1">ESL</a></div>
						</dd>
		</dl>
		
		<dl>
		     <dt>��ɫ��</dt>
			     		<dd><div align="left">&nbsp;<a href="pf_c1.asp?id=1" class="style1">Phonic Magic</a>&nbsp;&nbsp;<a href="pf_c2.asp?id=1" class="style1">Sing  Chant</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;<a href="pf_c3.asp?id=1" class="style1">Reading House</a></div>
						</dd>
		</dl>
        
        	<dl>
		     <dt>�Ǽ���</dt>
			     	<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1" class="style1">Star Test</a></div>
						</dd>
		</dl>
        
        	<dl>
		     <dt>������</dt>
			     			<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1" class="style1">Hip</a></div>
						   </dd>
		</dl>
		
		<dl>
			<dt>У������</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=2">�������У</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=3">�������У</a></div>  </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=4">�ֶ�����У</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=5">����ݷׯУ</a></div> </dd>
						<dd>
						  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc5.asp?id=6">��ڶ���У</a>		&nbsp;&nbsp;<a href="pf_sc6.asp?id=7">��������У</a></div>  
                          						  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc7.asp?id=8">�ɽ���ͤУ</a>		&nbsp;&nbsp;<a href="pf_sc8.asp?id=9">��ɽ��У</a></div> 
		  </dd>
		</dl>
		
		 <dl>
			<dt>�����</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yyhd.asp">�����</a></div> </dd>
		</dl>

		<dl>
		<dt>������ʿ</dt>
		 <dd>
		   <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">�˲���Ƹ</a></div>
		 </dd>
		</dl>

		<dl>
			<dt>�� �� Ƶ ��</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">�������</a> 
			    &nbsp;&nbsp;&nbsp;<a href="pf_news.asp">��������</a></div>
			</dd>
		</dl>
		
		<dl>
			<dt>ԤԼ��ѯ</dt>
			<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yy_order.asp">����ԤԼ</a></div></dd>
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


<%if session("pf_admin_name")<>"admin" and  session("pf_admin_jb")="0" then '����Ա%>
<div id="left">
		<dl>
			<dt>����Ա����</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">�޸�����</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">ע&nbsp;&nbsp;&nbsp; ��</a>
			  </div>
			</dd>
		</dl>
		
		 <dl>
			<dt>��ҳ��Ϣ����</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp?id=1">�����</a>&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">��Ϸ����</a></div>  </dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">��������</a></div></dd>
		</dl>
		
		<dl>
			<dt>���ټ��</dt>
			        <dd>
			          <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">���ٽ���</a>&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">��ɫ����</a> </div>
			        </dd>
					<dd>
					  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_zzjg.asp?id=1">��֯�ܹ�</a>&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">��ʦ�Ƽ�</a></div>
				   </dd>
		</dl>
		
		<dl>
		     <dt>���ٿγ�</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1" class="style1">ABCbakery</a>&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1" class="style1">LA</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1" class="style1">Hip</a>&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1" class="style1">ESL</a></div>
						</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1" class="style1">Star Test</a>&nbsp;&nbsp;&nbsp;<a href="pf_s6.asp?id=1" class="style1">���ڿγ�</a></div>
						</dd>
		</dl>
		
		<dl>
		     <dt>���ڿγ�</dt>
			     		<dd><div align="left">&nbsp;<a href="pf_c1.asp?id=1" class="style1">Phonic Magic</a>&nbsp;&nbsp;<a href="pf_c2.asp?id=1" class="style1">Sing  Chant</a></div> 
			     		</dd>
						<dd><div align="left">&nbsp;<a href="pf_c3.asp?id=1" class="style1">Reading House</a></div>
						</dd>
		</dl>
		
		<dl>
			<dt>У������</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=2">�������У</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=3">�������У</a></div>  
			     		</dd>
						<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=4">�ֶ�����У</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=5">����ݷׯУ</a></div> 
                        <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc5.asp?id=6">��ڶ���У</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc6.asp?id=7">��������У</a></div>
                        
                        <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_sc7.asp?id=8">�ɽ���ͤУ</a>&nbsp;&nbsp;&nbsp;<a href="pf_sc8.asp?id=9">��ɽ��У</a></div>
		  </dd>
						<dd>
						   
						</dd>
		</dl>
		
		 <dl>
			<dt>��ϵ����</dt>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_contact.asp?id=1">��ϵ����</a>&nbsp;&nbsp;&nbsp;<a href="pf_gf_order.asp">ԤԼ�Ǽ�</a></div> </dd>
			     		<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yyhd.asp">�����</a></div> </dd>
		</dl>

		<dl>
		<dt>������ʿ</dt>
		 <dd>
		   <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">�˲���Ƹ</a></div>
		 </dd>
		</dl>

		<dl>
			<dt>�� �� Ƶ ��</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">�������</a> 
			    &nbsp;&nbsp;&nbsp;<a href="pf_news.asp">��������</a></div>
			</dd>
		</dl>
		
		<dl>
			<dt>ԤԼ��ѯ</dt>
			<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_bm_order.asp">������ѯ</a>&nbsp;&nbsp;&nbsp;<a href="pf_yy_order.asp">����ԤԼ</a></div> </dd>
		</dl>
</div>
<%end if%>


<%if session("pf_admin_name")<>"admin" and  session("pf_admin_jb")="1" then '����Ա%>
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
			<dt>�������</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">�޸�����</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">ע&nbsp;&nbsp;&nbsp; ��</a>
			  </div>
			</dd>
		</dl>
		
		 <dl>
			<dt>��ҳ��Ϣ����</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"�����") then %>&nbsp;&nbsp;&nbsp;<a href="pf_hd_index.asp?id=1">�����</a><%end if%><%if InStr(session("pf_admin_qx"),"��Ϸ����") then %>&nbsp;&nbsp;&nbsp;<a href="pf_game.asp">��Ϸ����</a><%end if%></div></dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"��������") then %>&nbsp;&nbsp;&nbsp;<a href="pf_link.asp">��������</a><%end if%><%if InStr(session("pf_admin_qx"),"��ҳ���") then %>&nbsp;&nbsp;&nbsp;<a href="uploadfile.asp">��ҳ���</a><%end if%></div></dd>
		</dl>
		
		<dl>
			<dt>���ټ��</dt>
			        <dd>
			          <div align="left"><%if InStr(session("pf_admin_qx"),"���ٽ���") then %>&nbsp;&nbsp;&nbsp;<a href="pf_about.asp?id=1">���ٽ���</a><%end if%><%if InStr(session("pf_admin_qx"),"��ɫ����") then %>&nbsp;&nbsp;&nbsp;<a href="pf_tsln.asp?id=1">��ɫ����</a> <%end if%></div>
			        </dd>
					<dd>
					  <div align="left"><%if InStr(session("pf_admin_qx"),"��֯�ܹ�") then %>&nbsp;&nbsp;&nbsp;<a href="pf_zzjg.asp?id=1">��֯�ܹ�</a><%end if%><%if InStr(session("pf_admin_qx"),"��ʦ�Ƽ�") then %>&nbsp;&nbsp;&nbsp;<a href="pf_ms_index.asp?id=1">��ʦ�Ƽ�</a><%end if%></div>
				   </dd>
		</dl>
		
		<dl>
		     <dt>���ٿγ�</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"ABCbakery") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s1.asp?id=1" class="style1">ABCbakery</a><%end if%><%if InStr(session("pf_admin_qx"),"LA") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s2.asp?id=1" class="style1">LA</a><%end if%></div> 
			     		</dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Hip") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s3.asp?id=1" class="style1">Hip</a><%end if%><%if InStr(session("pf_admin_qx"),"ESL") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s4.asp?id=1" class="style1">ESL</a><%end if%></div>
						</dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Star Test") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s5.asp?id=1" class="style1">Star Test</a><%end if%><%if InStr(session("pf_admin_qx"),"���ڿγ�") then %>&nbsp;&nbsp;&nbsp;<a href="pf_s6.asp?id=1" class="style1">���ڿγ�</a><%end if%></div>
						</dd>
		</dl>
		
		<dl>
		     <dt>���ڿγ�</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Phonic Magic") then %>&nbsp;<a href="pf_c1.asp?id=1" class="style1">Phonic Magic</a><%end if%><%if InStr(session("pf_admin_qx"),"S Chant") then %>&nbsp;&nbsp;<a href="pf_c2.asp?id=1" class="style1">Sing  Chant</a><%end if%></div> 
			     		</dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"Reading House") then %>&nbsp;<a href="pf_c3.asp?id=1" class="style1">Reading House</a><%end if%></div>
						</dd>
		</dl>
		
		<dl>
			<dt>У������</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"����У��") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc1.asp?id=2">����У��</a>
			     		    <%end if%><%if InStr(session("pf_admin_qx"),"���У��") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc2.asp?id=3">���У��</a>
			     		    <%end if%></div>  </dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"�ֶ�У��") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc3.asp?id=4">�ֶ�У��</a>
						    <%end if%><%if InStr(session("pf_admin_qx"),"ݷׯУ��") then %>&nbsp;&nbsp;&nbsp;<a href="pf_sc4.asp?id=5">ݷׯУ��</a>
						    <%end if%></div> </dd>
						<dd><div align="left"><%if InStr(session("pf_admin_qx"),"�ֶ�У��") then %>
						<a href="pf_sc3.asp?id=6">���У��</a>
						<%end if%>
						</div>
						</dd>
		</dl>
		
		 <dl>
			<dt>��ϵ����</dt>
			     		<dd><div align="left"><%if InStr(session("pf_admin_qx"),"��ϵ����") then %>&nbsp;&nbsp;&nbsp;<a href="pf_contact.asp?id=1">��ϵ����</a><%end if%><%if InStr(session("pf_admin_qx"),"�����") then %>&nbsp;&nbsp;&nbsp;<a href="pf_yyhd.asp">�����</a><%end if%></div> </dd>
		</dl>

		<dl>
		<dt>������ʿ</dt>
		 <dd>
		   <div align="left"><%if InStr(session("pf_admin_qx"),"�˲���Ƹ") then %>&nbsp;&nbsp;&nbsp;<a href="pf_recruitment.asp">�˲���Ƹ</a><%end if%></div>
		 </dd>
		</dl>

		<dl>
			<dt>�� �� Ƶ ��</dt>
			<dd>
			  <div align="left"><%if InStr(session("pf_admin_qx"),"�������") then %>&nbsp;&nbsp;&nbsp;<a href="pf_news_add.asp">�������</a> <%end if%>
			    <%if InStr(session("pf_admin_qx"),"��������") then %>&nbsp;&nbsp;&nbsp;<a href="pf_news.asp">��������</a><%end if%></div>
			</dd>
		</dl>
</div>
<%end if%>


<%if session("pf_admin_name")<>"admin" and  session("pf_admin_jb")="2" then '�۲�Ա%>

<div id="left">
		<dl>
			<dt>�������</dt>
			<dd>
			  <div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_admin_password.asp">�޸�����</a>&nbsp;&nbsp;&nbsp;<a href="exit.asp">ע&nbsp;&nbsp;&nbsp; ��</a></div>
			</dd>
		</dl>
		
		 <dl>
			<dt>���ݹ���</dt>
			     	<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_gf_order.asp">ԤԼ�Ǽ�</a>&nbsp;&nbsp;&nbsp;<a href="pf_bm_order.asp">������ѯ</a></div> </dd>
					<dd><div align="left">&nbsp;&nbsp;&nbsp;<a href="pf_yy_order.asp">����ԤԼ</a></div> </dd>
		</dl>

</div>
<%end if%>