<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="right">
  <div class="crumbs">
                  <div class="inner">
                     <span class="current">��ǰλ�ã�<a href="index.asp">�� ҳ</a>&nbsp;&gt; ����ԤԼ&nbsp;&nbsp</span>
                     <ul>
                        <li class="style6">����ԤԼ</li>
                        <li class="style11"><a href="contact.asp">��ϵ��ʽ</a></li>
                     </ul>
                  </div>
               </div>
 <div class="box">
      <div class="m">  
<script language="javascript">
function form1_onsubmit(){
    if (gf.name.value ==""){
	   alert("����д����������!");
	   gf.name.focus();
	   return false;	
	}
    if (gf.age.value ==""){
	   alert("����д����������!");
	   gf.age.focus();
	   return false;	
	}
    if (gf.Fname.value ==""){
	   alert("����д��������!");
	   gf.Fname.focus();
	   return false;	
	}
    if (gf.tel.value ==""){
	   alert("����д������ϵ�绰!");
	   gf.tel.focus();
	   return false;	
	}
     if (gf.tel.value == "" || gf.tel.value.length <11 ||  gf.tel.value.length > 12  ||  isNaN(gf.tel.value)){
	 alert("����ȷ��д��ϵ�绰!");
	 gf.tel.value = "";
	 gf.tel.focus();
	 return false;	 
	 }
     if (gf.email.value == ""){
	 alert("����д��������!");
	 gf.email.focus();
	 return false;	 
	 }
	 
	 
	 var ok=document.getElementsByName("class");
     if (ok[0].checked == true){
	 //alert(ok[0].value);
	 }else if(ok[1].checked == true){
	 //alert(ok[1].value);
	 }
	 else if(ok[2].checked == true){
	 //alert(ok[1].value);
	 }else if(ok[3].checked == true){
	 //alert(ok[1].value);
	 }else if(ok[4].checked == true){
	 //alert(ok[1].value);
	 }else if(ok[5].checked == true){
	 //alert(ok[1].value);
	 }else if(ok[6].checked == true){
	 //alert(ok[1].value);
	 }else if(ok[7].checked == true){
	 //alert(ok[1].value);
	 }else{
	 alert('��ѡ��γ�');
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
						<form method="post" action="save.asp"  name="gf" id="gf" onSubmit="return form1_onsubmit()">
                          <table width="100%"  border="0" cellpadding="0" cellspacing="1">
                            <tr>
                              <td height="30" colspan="4"><div align="center" class="style6">�� �� Ԥ Լ</div></td>
                              </tr>
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
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>�������䣺&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="email" type="text" id="email"  onBlur="return validateEmail();">
                              </div></td>
                              <td height="35"><input name="school" type="hidden" id="school" value="<%=request("school")%>"></td>
                              <td height="35"><div align="left"></div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>ѡ��γ̣�&nbsp;&nbsp;</div></td>
                              <td height="35" colspan="3"><div align="left">
  <br>
  <input type="radio" name="class" value="ABCbakery">
&nbsp;<span class="style4">ABCbakery</span>&nbsp;
<input type="radio" name="class" value="Language Arts">
<span class="style4">Language Arts</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                  <input type="radio" name="class" value="Hip Hip Hooray">
&nbsp;<span class="style4">Hip Hip Hooray</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                  <input type="radio" name="class" value="ESL">
&nbsp;<FONT color=#000000><span class="style4">ESL</span><br>
<br>
<input type="radio" name="class" value="Star Test">
&nbsp;<span class="style4">Star Test</span>&nbsp;&nbsp;&nbsp;
<input type="radio" name="class" value="Phonic Magic Cards">
<span class="style4">Phonic Magic Cards</span> &nbsp;&nbsp;&nbsp;
<input type="radio" name="class" value="Sing  Chant">
&nbsp;<span class="style4">Sing &amp; Chant</span>
&nbsp;
<input name="class" type="radio" value="Reading House">
&nbsp;<span class="style4">&nbsp;Reading House</span></FONT></div></td>
                              </tr>
                            <tr>
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
                        </div></div>
                      </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->