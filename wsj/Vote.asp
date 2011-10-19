<!--#include file="Inc/conn.asp"-->
<%
'///检测投票开关
sql="Select info from Mu where id=4"
set t=conn.execute(sql)
if t(0)="关" then
	Response.write "<script language='javascript'>alert('投票已关闭');history.go(-1);</script>"
	Response.End()
end if

function getip() '获得客户端IP
	getip=Request.ServerVariables("REMOTE_ADDR") 
end function

function cip(ip,id,vt) '检测指定IP，指定日期是否投过指定ID的票
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

sub jip(ip,vt,id) '记录投票信息
	sql="Insert into vote(ip,vtime,pid) values('"&ip&"',#"&vt&"#,"&id&")"
	conn.execute(sql)
end sub

sub delip(vt) '删除指定时间之前的投票信息
	sql="delete from vote where vtime<#"&vt&"#"
	conn.execute(sql)
end sub

'==========================================
id=Request("id")
if id="" or id=null or not isnumeric(id) then
	Response.write "<script language='javascript'>alert('参数错误');history.go(-1);</script>"
	Response.End()
end if
call delip(date()) '删除前一天的投票数据

ip=getip() '获得客户IP
if cip(ip,id,date())=true then '检测指定IP在今天是否给指定的ID投过票
	Response.write "<script language='javascript'>alert('您的IP"&ip&"在今日已经给这张图片投票，不能继续投票！');history.go(-1);</script>"
	Response.End()
end if

set rs=server.createobject("adodb.recordset")
rs.Open "Select * from photo where id="&id,conn,1,3
if rs.eof then
	Response.write "<script language='javascript'>alert('参数错误');history.go(-1);</script>"
	Response.End()
else
rs("hit")=rs("hit")+1
rs.update
end if

rs.Close
Set rs=nothing

call jip(ip,date(),id) '记录投票信息

Response.Redirect("Vote_do.asp?id="&id)
%>
