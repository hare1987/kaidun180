<% 
Dim Query_Badword,Form_Badword,f_i,Err_Message,Err_Web,f_name

'------���岿��  ͷ----------------------------------------------------------------------

Err_Message = 1		'����ʽ��1=��ʾ��Ϣ,2=ת��ҳ��,3=����ʾ��ת��

Err_Web = "Default.Asp"	'����ʱת���ҳ��

Query_Badword="'��and��select��update��chr��delete��%20from��;��insert��master.��set��chr(37)"     

'���ⲿ�ݶ���get�Ƿ�����,ʹ��"��"�ż��     

'----- �� get query ֵ �Ĺ���.

if request.QueryString<>"" then
Chk_badword=split(Query_Badword,"��")
FOR EACH Query_Name IN Request.QueryString
for f_i=0 to ubound(Chk_badword)
If Instr(LCase(request.QueryString(Query_Name)),Chk_badword(f_i))<>0 Then
Select Case Err_Message
  Case "1"
Response.Write "<Script Language=JavaScript>alert('���δ��󣡲��� "&f_name&" ��ֵ�а����Ƿ��ַ�����\n\n�벻Ҫ�ڲ����г��֣�and update delete ; insert mid master �ȷǷ��ַ���');window.close();</Script>"
  Case "2"
Response.Write "<Script Language=JavaScript>location.href='"&Err_Web&"'</Script>"
  Case "3"
Response.Write "<Script Language=JavaScript>alert('���δ��󣡲��� "&f_name&"��ֵ�а����Ƿ��ַ�����\n\n�벻Ҫ�ڲ����г��֣�and update delete ; insert mid master �ȷǷ��ַ���');location.href='"&Err_Web&"';</Script>"
End Select
Response.End
End If
NEXT
NEXT
End if
%>