<%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from advertising order by pf_sort"
rs.open sql,conn,1,3
if  rs.eof or rs.bof then
%>
                    ÔÝÎÞÍ¨Öª!
<%
else
i = 1
do while not rs.eof  or rs.bof
%>
imag[i]="<%=rs("pf_link_name")%>";
<%
i = i + 1
if i > 2 then  exit do
rs.movenext
loop
end if
rs.close
set rs = nothing
%> 