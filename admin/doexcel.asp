<HTML>
<HEAD>
<meta content="text/html; charset=gb2312" http-equiv="Content-Type">  
<TITLE>生成EXCEL文件</TITLE>  
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
  '--假设你想让生成的EXCEL文件做如下的存放  
  filename = Server.MapPath("预约登记.xls")  
  '--如果原来的EXCEL文件存在的话删除它  
  if fs.FileExists(filename) then
   fs.DeleteFile(filename)  
  end if
  '--创建EXCEL文件
  set myfile = fs.CreateTextFile(filename,true)
  Set rs = Server.CreateObject("ADODB.Recordset")
  '--从数据库中把你想放到EXCEL中的数据查出来  
  sql = "select id as 编号,name as 姓名,sex as 性别,age as 年龄,birth as 生日,Fname as 家长姓名,tel as 电话,email as 电子信箱,school as 校区,hd as 活动,regtime as 预约时间 from Pf_buy"  
  rs.Open sql,conn,1,3

  if rs.EOF and rs.BOF then
  
      	set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "导出预约登记数据失败"
		rsop.update
		rsop.close
		set rsop = nothing 
 
      response.Write "<script language=javascript>alert('暂无数据!');window.close();</script>"
	  response.End()
  else
   dim strLine,responsestr  
   strLine=""
   For each x in  rs.fields
    strLine = strLine & x.name & chr(9)
   Next
   '--将表的列名先写入EXCEL  
   myfile.writeline strLine
   Do while Not rs.EOF  
    strLine=""
    for each x in  rs.Fields  
     strLine = strLine & x.value & chr(9)  
    next
    '--将表的数据写入EXCEL  
    myfile.writeline strLine
    rs.MoveNext
   loop

  rs.Close  
  set  rs  =  nothing
   
     	set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "导出预约登记数据"
		rsop.update
		rsop.close
		set rsop = nothing
   
    response.Write "<script language=javascript>alert('数据导出成功!');</script><meta http-equiv=refresh content=0;URL=预约登记.xls>;"
	 End If
%>
