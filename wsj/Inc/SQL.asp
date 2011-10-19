<% 
Dim Query_Badword,Form_Badword,f_i,Err_Message,Err_Web,f_name

'------定义部份  头----------------------------------------------------------------------

Err_Message = 1		'处理方式：1=提示信息,2=转向页面,3=先提示再转向

Err_Web = "Default.Asp"	'出错时转向的页面

Query_Badword="'∥and∥select∥update∥chr∥delete∥%20from∥;∥insert∥master.∥set∥chr(37)"     

'在这部份定义get非法参数,使用"∥"号间隔     

'----- 对 get query 值 的过滤.

if request.QueryString<>"" then
Chk_badword=split(Query_Badword,"∥")
FOR EACH Query_Name IN Request.QueryString
for f_i=0 to ubound(Chk_badword)
If Instr(LCase(request.QueryString(Query_Name)),Chk_badword(f_i))<>0 Then
Select Case Err_Message
  Case "1"
Response.Write "<Script Language=JavaScript>alert('传参错误！参数 "&f_name&" 的值中包含非法字符串！\n\n请不要在参数中出现：and update delete ; insert mid master 等非法字符！');window.close();</Script>"
  Case "2"
Response.Write "<Script Language=JavaScript>location.href='"&Err_Web&"'</Script>"
  Case "3"
Response.Write "<Script Language=JavaScript>alert('传参错误！参数 "&f_name&"的值中包含非法字符串！\n\n请不要在参数中出现：and update delete ; insert mid master 等非法字符！');location.href='"&Err_Web&"';</Script>"
End Select
Response.End
End If
NEXT
NEXT
End if
%>