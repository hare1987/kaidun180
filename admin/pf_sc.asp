<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pf_conn.asp"-->
<!--#include file="pf_function.asp"-->
<!--#include file="pf_session.asp"-->
<%
If request.Form("submit") = "ȷ�����" Then
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from pf_sc"
    rs.Open sql, conn, 1, 3
    rs.addnew
  	rs("sc_name")=request.Form("pf_sc_name")
	rs("sc_address")=request.Form("pf_sc_address")
	rs("sc_bus")=request.Form("pf_sc_bus")
	rs("sc_tel")=request.Form("pf_sc_tel")
	rs("sc_link")=request.Form("sc_link")
    rs("sc_about") = request.Form("content2")
	rs("sc_p_logo")=request.Form("pf_uploadfile")
	rs("sc_p_map")=request.Form("pf_uploadfile2")
    rs.update
    Call close_rs
		
		set rsop = server.CreateObject("adodb.recordset")
		rsop.open "select * from pf_oprate",conn,1,3
		rsop.addnew
		rsop("pf_op_name") = session("pf_admin_name")
		rsop("pf_op_sources") = "���У��:"&request.Form("sc_name")
		rsop.update
		rsop.close
		set rsop = nothing
	
	
    Call close_conn
    Call infohref("��ӳɹ���", "pf_sc.asp")
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ٶ�ͯ����ѧУ</title>
<link href="pf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--#include file="pf_top.asp"-->
<div id="content">
	<!--#include file="pf_left.asp"-->
	<div id="right">
		<div class="right_title">
			<h1>У������</h1>
			
		</div>
		<div class="right_body">
			<table>
					<tr>
					<th >У��</th>
                    <th>�绰</th>
                    <th >��ַ</th>
						<th width="90">�޸Ĳ���</th>
					</tr>
					<%
sql = "select * from pf_sc order by sc_num asc"
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
If rs.EOF Then
    response.Write "�������ţ�"
Else
    rs.PageSize = 20
    allpage = rs.RecordCount
    iPageSize = rs.PageSize
    maxpage = rs.PageCount
    page = request("page")
    If Not IsNumeric(page) Or page = "" Then
        page = 1
    Else
        page = CInt(page)
    End If
    If page<1 Then
        page = 1
    ElseIf page>maxpage Then
        page = maxpage
    End If
    rs.AbsolutePage = Page
    If page = maxpage Then
        x = allpage - (maxpage -1) * iPageSize
    Else
        x = iPageSize
    End If
    For i = 1 To x
%>
					<tr align="center">
				           <tr><td ><%=rs("sc_name")%></td>
                            <td ><%=rs("sc_tel")%></td>
                            <td ><%=rs("sc_address")%></td>
                            <td>[<a href="pf_sc_modify.asp?id=<%=rs("sc_num")%>">�޸�</a>] [<a href="pf_sc_delete.asp?id=<%=rs("sc_num")%>&opname=<%=rs("sc_name")%>" onclick="return confirm('ȷ��Ҫɾ������Ϣ��ɾ���󽫲��ɻָ���')">ɾ��</a>]</td>
					</tr>
					<%
		rs.movenext
		Next
		Call close_rs
		Call close_conn
End If 
		%>
			<%call pcfinal_page%>
            </table>
	</div>
    <div class="right_title">
			<h1>�������У</h1>
			
		</div>
		<div class="right_body">
		  <table>
            <form method="post" name="pcfinal" id="pcfinal">
              <tr>
                <td align="center">ѧУ���ƣ�</td>
                <td><input type="text" name="pf_sc_name"  size="60" />
                    <span class="red">����</span> </td>
              </tr>
              <tr>
                <td align="center">ѧУ��ַ��</td>
                <td><input name="pf_sc_address" type="text" id="pf_sc_address"  size="60" /></td>
              </tr>
              <tr>
                <td align="center">ѧУ��ͨ��</td>
                <td><input name="pf_sc_bus" type="text" id="pf_sc_bus" size="60" /></td>
              </tr>
              <tr>
                <td width="80" align="center">ѧУ�绰��</td>
                <td><input type="text" name="pf_sc_tel"  size="60" /></td>
              </tr>
              <tr>
						<td align="center">���ӵ�ַ��</td>
						<td>
							<input type="text" name="sc_link" size="70"/>
							<span class="red">����</span> </td>
					</tr>
              <tr>
                <td rowspan="4" align="center">ѧУ��ͼ��</td>
                <td><input type="text" name="pf_uploadfile"  size="40" />
                    <span class="red">������LogoͼƬ��ַ����ֱ���ϴ���</span> </td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td><input type="text" name="pf_uploadfile2"  size="40" />
                <span class="red">������MapͼƬ��ַ����ֱ���ϴ���</span></td>
              </tr>
              <tr>
                <td><iframe src="pf_upload.asp" width="600" height="25" scrolling="Auto" frameborder="0"></iframe></td>
              </tr>
              <tr>
                <td align="center">ѧУ��飺</td>
                <td rowspan="2"><textarea name="content2" style="display:none"></textarea>
                    <iframe id="eWebEditor1" src="ewebeditor/eWebEditor.asp?id=content2&amp;style=standard" frameborder="0" scrolling="No" width="700" height="350"></iframe>                ? </td>
              </tr>
              <tr>
                <td align="center">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2" align="center"><input type="submit" name="submit" class="submit_button" value="ȷ�����" />                </td>
              </tr>
            </form>
          </table>
		</div>
      </div>
	<div class="clear"></div>
</div>
<!--#include file="pf_bottom.asp"-->
</body>
</html>
