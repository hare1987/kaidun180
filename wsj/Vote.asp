<!--#include file="Inc/conn.asp"-->
<%
'///���ͶƱ����
sql="Select info from Mu where id=4"
set t=conn.execute(sql)
if t(0)="��" then
	Response.write "<script language='javascript'>alert('ͶƱ�ѹر�');history.go(-1);</script>"
	Response.End()
end if

function getip() '��ÿͻ���IP
	getip=Request.ServerVariables("REMOTE_ADDR") 
end function

function cip(ip,id,vt) '���ָ��IP��ָ�������Ƿ�Ͷ��ָ��ID��Ʊ
	sql="Select * from vote where ip='"&ip&"' and pid="&id&" and vtime=#"&vt&"#"
	'Response.Write(sql)
	'Response.End()
	Set rs2=conn.execute(sql)
	if not rs2.eof then 
		cip=true
	else
		cip=false
	end if
end function

sub jip(ip,vt,id) '��¼ͶƱ��Ϣ
	sql="Insert into vote(ip,vtime,pid) values('"&ip&"',#"&vt&"#,"&id&")"
	conn.execute(sql)
end sub

sub delip(vt) 'ɾ��ָ��ʱ��֮ǰ��ͶƱ��Ϣ
	sql="delete from vote where vtime<#"&vt&"#"
	conn.execute(sql)
end sub

'==========================================
id=Request("id")
if id="" or id=null or not isnumeric(id) then
	Response.write "<script language='javascript'>alert('��������');history.go(-1);</script>"
	Response.End()
end if
call delip(date()) 'ɾ��ǰһ���ͶƱ����

ip=getip() '��ÿͻ�IP
if cip(ip,id,date())=true then '���ָ��IP�ڽ����Ƿ��ָ����IDͶ��Ʊ
	Response.write "<script language='javascript'>alert('����IP"&ip&"�ڽ����Ѿ�������ͼƬͶƱ�����ܼ���ͶƱ��');history.go(-1);</script>"
	Response.End()
end if

set rs=server.createobject("adodb.recordset")
rs.Open "Select * from photo where id="&id,conn,1,3
if rs.eof then
	Response.write "<script language='javascript'>alert('��������');history.go(-1);</script>"
	Response.End()
else
rs("hit")=rs("hit")+1
rs.update
end if

rs.Close
Set rs=nothing

call jip(ip,date(),id) '��¼ͶƱ��Ϣ

Response.Redirect("Vote_do.asp?id="&id)
%>
