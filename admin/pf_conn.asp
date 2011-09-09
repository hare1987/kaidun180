<%
'Set conn = server.CreateObject("adodb.connection")
'conn.connectionstring = "Provider = Microsoft.Jet.OLEDB.4.0;Data Source="&server.mapPath("../data/pcfinal.mdb")
'conn.Open
%>
<%
	db="../data/pcfinal.mdb"
	Set conn = Server.CreateObject("ADODB.Connection")
	connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
	conn.Open connstr
%>
