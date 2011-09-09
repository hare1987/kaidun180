<%
if session("pf_admin_name")<>"" then
else
	call infohref("非法进入网站后台！请登录！","index.asp")
end if
%>