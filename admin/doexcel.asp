<HTML>
<HEAD>
<meta content="text/html; charset=gb2312" http-equiv="Content-Type">  
<TITLE>����EXCEL�ļ�</TITLE>  
</HEAD>  
<body>  
<!--#include file="pf_conn.asp"-->
<%
  dim salesno
  'salesno="05-Gi-9874"
  salesno=request("salesno")
  response.Write(salesno)
  dim  rs,sql,filename,fs,myfile,x
  Set fs = server.CreateObject("scripting.filesystemobject")  
  '--�������������ɵ�EXCEL�ļ������µĴ��  
  filename = Server.MapPath("ԤԼ�Ǽ�.xls")  
  '--���ԭ����EXCEL�ļ����ڵĻ�ɾ����  
  if fs.FileExists(filename) then
   fs.DeleteFile(filename)  
  end if
  '--����EXCEL�ļ�
  set myfile = fs.CreateTextFile(filename,true)
  Set rs = Server.CreateObject("ADODB.Recordset")
  '--�����ݿ��а�����ŵ�EXCEL�е����ݲ����  
  sql = "select id as ���,name as ����,sex as �Ա�,age as ����,birth as ����,Fname as �ҳ�����,tel as �绰,email as ��������,school as У��,hd as �,regtime as ԤԼʱ�� from Pf_buy"  
  rs.Open sql,conn,1,3

  if rs.EOF and rs.BOF then
  
      	set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "����ԤԼ�Ǽ�����ʧ��"
		rsop.update
		rsop.close
		set rsop = nothing 
 
      response.Write "<script language=javascript>alert('��������!');window.close();</script>"
	  response.End()
  else
   dim strLine,responsestr  
   strLine=""
   For each x in  rs.fields
    strLine = strLine & x.name & chr(9)
   Next
   '--�����������д��EXCEL  
   myfile.writeline strLine
   Do while Not rs.EOF  
    strLine=""
    for each x in  rs.Fields  
     strLine = strLine & x.value & chr(9)  
    next
    '--���������д��EXCEL  
    myfile.writeline strLine
    rs.MoveNext
   loop

  rs.Close  
  set  rs  =  nothing
   
     	set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "����ԤԼ�Ǽ�����"
		rsop.update
		rsop.close
		set rsop = nothing
   
    response.Write "<script language=javascript>alert('���ݵ����ɹ�!');</script><meta http-equiv=refresh content=0;URL=ԤԼ�Ǽ�.xls>;"
	 End If
%>
