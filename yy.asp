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
                     </ul>
                  </div>
               </div>
<div class="contents">
			<div class="content">
				<div class="title">����ԤԼ</div>
                              <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
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
     if (document.gf.tel.value == "" || document.gf.tel.value.length <11 ||  document.gf.tel.value.length > 12  ||  isNaN(document.gf.tel.value)){
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
						<form method="post" action="save.asp?action=yy"  name="gf" id="gf" onSubmit="return form1_onsubmit()">
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
  <input type="radio" name="hd" value="ABCbakery">
&nbsp;<span class="style4">ABCbakery</span>&nbsp;
<input type="radio" name="hd" value="Language Arts">
<span class="style4">Language Arts</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                  <input type="radio" name="class" value="Hip Hip Hooray">
&nbsp;<span class="style4">Hip Hip Hooray</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                  <input type="radio" name="class" value="ESL">
&nbsp;<FONT color=#000000><span class="style4">ESL</span><br>
<br>
<input type="radio" name="hd" value="Star Test">
&nbsp;<span class="style4">Star Test</span>&nbsp;&nbsp;&nbsp;
<input type="radio" name="hd" value="Phonic Magic Cards">
<span class="style4">Phonic Magic Cards</span> &nbsp;&nbsp;&nbsp;
<input type="radio" name="hd" value="Sing  Chant">
&nbsp;<span class="style4">Sing &amp; Chant</span>
&nbsp;
<input name="hd" type="radio" value="Reading House">
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