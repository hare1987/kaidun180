<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">


<div class="right">
  <div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt; ��ѻԤԼ&nbsp;&nbsp</span>
                     <ul>
                        <li class="style6">��ѻԤԼ</li>
                     </ul>
                  </div>
               </div>

     <script language="javascript">
function form1_onsubmit(){
    if (document.gf.name.value ==""){
	   alert("����д����������!");
	   document.gf.name.focus();
	   return false;	
	}
    if (document.gf.age.value ==""){
	   alert("����д����������!");
	   document.gf.age.focus();
	   return false;	
	}
    if (document.gf.Fname.value ==""){
	   alert("����д��������!");
	   document.gf.Fname.focus();
	   return false;	
	}
     if (document.gf.tel.value == "" || document.gf.tel.value.length <11 ||  document.gf.tel.value.length > 11 ||  isNaN(document.gf.tel.value)){
	 alert("����ȷ��д��ϵ�绰!");
	 document.gf.tel.value = "";
	 document.gf.tel.focus();
	 return false;	 
	 }
     if (document.gf.email.value == ""){
	 alert("����д��������!");
	 document.gf.email.focus();
	 return false;	 
	 }
	 
	 
	 var ok=document.getElementsByName("school");
     if (ok[0].checked == true){
	 //alert(ok[0].value);
	 }else if(ok[1].checked == true){
	 //alert(ok[1].value);
	 }else  if(ok[2].checked == true){
	 //alert(ok[1].value);
	 }else if(ok[3].checked == true){
	 //alert(ok[1].value);
	 }else{
	 alert('��ѡ������У��');
	 return false;	 
	 }


return true;
}

</script>
<script language="javascript"> 
  function   validateEmail(emailStr)   
  {   
    emailStr = document.gf.email.value
    var   re=/^[\w.-]+@([0-9a-z][\w-]+\.)+[a-z]{2,3}$/i;   
    if(re.test(emailStr))   
    {   
      //alert("��Чemail��ַ!");   
      return   true;   
    }   
    else   
    {   
      alert("��Чemail��ַ!");   
      return   false;   
    }   
  }   
</script>

<div class="contents">
			<div class="content">
				<div class="title">��ѻԤԼ</div>
                              <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
<form method="post" action="save.asp?action=gf"  name="gf" id="gf" onSubmit="return form1_onsubmit()">
                          <table width="100%"  border="0" cellpadding="0" cellspacing="1">
                            <tr>
                              <td width="24%" height="35"><div align="right"> <span class="style7">*&nbsp;</span>����������&nbsp;&nbsp;</div></td>
                              <td width="26%" height="35"><div align="left">
                                <input name="name" type="text" id="name">
                              </div></td>
                              <td width="22%" height="35"><div align="right">�����Ա�&nbsp;&nbsp;</div></td>
                              <td width="28%" height="35"><div align="left">
                                <input type="radio" name="sex" value="��"> 
                                ��&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="sex" value="Ů">
                              &nbsp;Ů</div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>�������䣺&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="age" type="text" id="age">
                              </div></td>
                              <td height="35"><div align="right">�������£�&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="birth" type="text" id="birth" value="2007-01-01">
                              </div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>�ҳ�������&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="Fname" type="text" id="Fname">
                              </div></td>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>��ϵ�绰��&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="tel" type="text" id="tel">
                              </div></td>
                            </tr>
                            <tr >
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>�������䣺&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="email" type="text" id="email"  onBlur="return validateEmail();">
                              </div></td>
                              <td height="35">&nbsp;</td>
                              <td height="35"><div align="left"></div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>ѡ��У����&nbsp;&nbsp;</div></td>
                              <td height="35" colspan="3"><div align="left">
  <input type="radio" name="school" value="�������У">�������У 
  <input type="radio" name="school" value="�������У">�������У
  <input type="radio" name="school" value="�ֶ�����У">�ֶ�����У
  <input type="radio" name="school" value="����ݷׯУ">����ݷׯУ<br />
  <input type="radio" name="school" value="��ڶ���У">��ڶ���У
  <input type="radio" name="school" value="��������У">��������У
  <input type="radio" name="school" value="�ɽ���ͤУ">�ɽ���ͤУ
  <input type="radio" name="school" value="��ɽ��У">��ɽ��У</div></td>
                              </tr>
                            <tr>
                              <td><div align="right">�ѡ�&nbsp;&nbsp;</div></td>
                              <td colspan="3"><div align="left">
<%
set rs = server.CreateObject("adodb.recordset")
sql = "select * from  pf_hdyy"
rs.open sql,conn,1,1
if not rs.eof or bof then
i = 1
do while not rs.eof or rs.bof
%>
  <input type="radio" name="hd" value="<%=rs("pf_link_name")%>">
&nbsp;<SPAN style="line-height:300% "><%=rs("pf_link_name")%></SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
if i mod 4 = 0 then
%>
<br>
<%
end if
%>
<%
i = i + 1
rs.movenext
loop
end if
rs.close
set rs = nothing
%>
</div></td>
                              </tr>
                            <tr >
                              <td height="33" colspan="4">
                                <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ע����<span class="style7">*&nbsp;</span>Ϊ������</div></td>
                              </tr>
                            <tr>
                              <td height="35" colspan="4"><div align="center">
                                <input type="submit" name="Submit" value="��   ��">
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="submit" name="Submit" value="������д">
                              </div></td>
                              </tr>
                          </table>
                        </form>   
		</div>
		</div>  
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->