<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="right">
  <div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt; 在线预约&nbsp;&nbsp</span>
                     <ul>
                        <li class="style6">在线预约</li>
                     </ul>
                  </div>
               </div>
<div class="contents">
			<div class="content">
				<div class="title">在线预约</div>
                              <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
 <script language="javascript">
function form1_onsubmit(){
    if (document.gf.name.value ==""){
	   alert("请填写宝宝的姓名!");
	   document.gf.name.focus();
	   return false;	
	}
    if (document.gf.age.value ==""){
	   alert("请填写宝宝的年龄!");
	   document.gf.age.focus();
	   return false;	
	}
    if (document.gf.Fname.value ==""){
	   alert("请填写您的姓名!");
	   document.gf.Fname.focus();
	   return false;	
	}
     if (document.gf.tel.value == "" || document.gf.tel.value.length <11 ||  document.gf.tel.value.length > 12  ||  isNaN(document.gf.tel.value)){
	 alert("请正确填写联系电话!");
	 document.gf.tel.value = "";
	 document.gf.tel.focus();
	 return false;	 
	 }
     if (document.gf.email.value == ""){
	 alert("请填写电子信箱!");
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
	 alert('请选择意向校区');
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
      //alert("有效email地址!");   
      return   true;   
    }   
    else   
    {   
      alert("无效email地址!");   
      return   false;   
    }   
  }   
</script>
						<form method="post" action="save.asp?action=yy"  name="gf" id="gf" onSubmit="return form1_onsubmit()">
                          <table width="100%"  border="0" cellpadding="0" cellspacing="1">
                            <tr>
                              <td height="30" colspan="4"><div align="center" class="style6">在 线 预 约</div></td>
                              </tr>
                            <tr>
                              <td width="24%" height="35"><div align="right"> <span class="style7">*&nbsp;</span>宝宝姓名：&nbsp;&nbsp;</div></td>
                              <td width="26%" height="35"><div align="left">
                                <input name="name" type="text" id="name">
                              </div></td>
                              <td width="22%" height="35"><div align="right">宝宝性别：&nbsp;&nbsp;</div></td>
                              <td width="28%" height="35"><div align="left">
                                <input type="radio" name="sex" value="男"> 
                                男&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="sex" value="女">
                              &nbsp;女</div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>宝宝年龄：&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="age" type="text" id="age">
                              </div></td>
                              <td height="35"><div align="right">出生年月：&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="birth" type="text" id="birth" value="2007-01-01">
                              </div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>家长姓名：&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="Fname" type="text" id="Fname">
                              </div></td>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>联系电话：&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="tel" type="text" id="tel">
                              </div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>电子邮箱：&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="email" type="text" id="email"  onBlur="return validateEmail();">
                              </div></td>
                              <td height="35"><input name="school" type="hidden" id="school" value="<%=request("school")%>"></td>
                              <td height="35"><div align="left"></div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>选择课程：&nbsp;&nbsp;</div></td>
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
                                <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：带<span class="style7">*&nbsp;</span>为必填项</div></td>
                              </tr>
                            <tr>
                              <td height="35" colspan="4"><div align="center">
                                <input type="submit" name="Submit" value="提   交">
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="submit" name="Submit" value="重新填写">
                              </div></td>
                              </tr>
                          </table>
                        </form>
                        </div></div>
                      </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->