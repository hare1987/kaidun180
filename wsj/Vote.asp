<!--#include file="Inc/conn.asp"-->

<%
If request.Form("submit") = "ͶƱ" Then

if trim(session("validateCode")) <> trim(Request("txt_check")) then
ErrorMessage = "��������ȷ����֤��"
response.write(" <script>alert('"&ErrorMessage&"');history.go(-1);</script>")
response.end
end if 
	'///���ͶƱ����
sql="Select info from Mu where id=4"
set t=conn.execute(sql)
if t(0)="��" then
	Response.write "<script language='javascript'>alert('ͶƱ�ѹر�');location.href='rqbb.asp' ;</script>"
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

id=Request("id")
if id="" or id=null or not isnumeric(id) then
response.write(" <script>alert('"&ErrorMessage&"');location.href='rqbb.asp' </script>")
	Response.End()
end if
call delip(date()) 'ɾ��ǰһ���ͶƱ����

ip=getip() '��ÿͻ�IP
if cip(ip,id,date())=true then '���ָ��IP�ڽ����Ƿ��ָ����IDͶ��Ʊ
	Response.write "<script language='javascript'>alert('����IP"&ip&"�ڽ����Ѿ�������ͼƬͶƱ�����ܼ���ͶƱ��');location.href='rqbb.asp' ;</script>"
	Response.End()
end if

set rs=server.createobject("adodb.recordset")
rs.Open "Select * from photo where id="&id,conn,1,3
if rs.eof then
	Response.write "<script language='javascript'>alert('��������');location.href='rqbb.asp' ;</script>"
	Response.End()
else
rs("hit")=rs("hit")+1
rs.update
end if

rs.Close
Set rs=nothing

call jip(ip,date(),id) '��¼ͶƱ��Ϣ

Response.Redirect("Vote_do.asp?id="&id)
End If

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������ʥҹ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #000000;
	color:#FFF;
}
body,td,th {
	font-size: 12px;
}
.STYLE40 {color: #FF0000}
.style41 {color: #FFFFFF}
-->
</style></head>

<body>
<div align="center" style="text-align:center;margin:0 auto;">
  <table width="1003" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="381" background="images/top.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="66" background="images/center.jpg"><img src="images/menu.jpg" width="1003" height="96" border="0" usemap="#Map2"></td>
    </tr>
    <tr>
      <td height="14"><img src="images/topline.jpg" width="1003" height="100"></td>
    </tr>
    <tr>
      <td height="229" valign="top" background="images/leftline.jpg">
			<table  align="center">
            <h2>ͶƱ��֤</h2>
			<form method="post" action="Vote.asp?id=<%=Request("id")%>" id="login">
					<tr>
					<td align="center" style="font-size:15px;">��֤��:</td>
					<td>
<input name="txt_check" type="text" size=6 maxlength=4 class="input"> 
<img src="checkcode.asp " alt="��֤��,�������?����ˢ����֤��" height="15" style="cursor : pointer;" onClick="this.src='checkcode.asp?t='+(new Date().getTime());" > 
</td>
<td>*��������֤����ͶƱ</td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" name="submit" class="submit_button" value="ͶƱ" />
					</td>
				</tr>
			</form>
              </table>
              </td>
            
<tr>
      <td height="18"><img src="images/bottomline.jpg" width="1003" height="100"></td>
    </tr>
  </table>
</div>
<map name="Map">
  <area shape="circle" coords="857,136,57" href="rqbb.asp">
</map>
<map name="Map2">
  <area shape="rect" coords="708,3,962,89" href="pgcj.asp">
  <area shape="rect" coords="375,3,647,91" href="rqbb.asp">
  <area shape="rect" coords="50,7,311,92" href="index.asp">
</map>
</body>
</html>