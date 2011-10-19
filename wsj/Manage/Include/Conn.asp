<%
   dim connstr,datapath,conn
   datapath="../DataBase/Db.mdb"
   connstr="Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.mappath(datapath)
   Set conn=Server.CreateObject("ADODB.Connection")
   conn.open connstr

%>