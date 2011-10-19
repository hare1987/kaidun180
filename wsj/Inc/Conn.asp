<!-- #include file="sql.asp" -->
<%
   dim connstr,datapath,conn
   datapath="Manage/DataBase/Db.mdb"
   connstr="Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.mappath(datapath)
   Set conn=Server.CreateObject("ADODB.Connection")
   conn.open connstr
%>