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
                        <li class="style11"><a href="contact.asp">联系方式</a></li>
                     </ul>
                  </div>
               </div>

     <script language="javascript">
function form1_onsubmit(){
    if (gf.name.value ==""){
	   alert("请填写宝宝的姓名!");
	   gf.name.focus();
	   return false;	
	}
    if (gf.age.value ==""){
	   alert("请填写宝宝的年龄!");
	   gf.age.focus();
	   return false;	
	}
    if (gf.Fname.value ==""){
	   alert("请填写您的姓名!");
	   gf.Fname.focus();
	   return false;	
	}
    if (gf.tel.value ==""){
	   alert("请填写您的联系电话!");
	   gf.tel.focus();
	   return false;	
	}
     if (gf.tel.value == "" || gf.tel.value.length <11 ||  gf.tel.value.length > 12  ||  isNaN(gf.tel.value)){
	 alert("请正确填写联系电话!");
	 gf.tel.value = "";
	 gf.tel.focus();
	 return false;	 
	 }
     if (gf.email.value == ""){
	 alert("请填写电子信箱!");
	 gf.email.focus();
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

<div class="contents">
			<div class="content">
				<div class="title">在 线 预 约</div>
                              <P> <style type="text/css"><!--.style2 {	font-family: Arial, Helvetica, sans-serif;	font-size: 16px;	line-height: 150%;}--></style></P>
<form method="post" action="save.asp?action=gf"  name="gf" id="gf" onSubmit="return form1_onsubmit()">
                          <table width="100%"  border="0" cellpadding="0" cellspacing="1">
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
                            <tr >
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>电子邮箱：&nbsp;&nbsp;</div></td>
                              <td height="35"><div align="left">
                                <input name="email" type="text" id="email"  onBlur="return validateEmail();">
                              </div></td>
                              <td height="35">&nbsp;</td>
                              <td height="35"><div align="left"></div></td>
                            </tr>
                            <tr>
                              <td height="35"><div align="right"><span class="style7">*&nbsp;</span>选择校区：&nbsp;&nbsp;</div></td>
                              <td height="35" colspan="3"><div align="left">
  <input type="radio" name="school" value="徐汇田林校">徐汇田林校 
  <input type="radio" name="school" value="黄浦书城校">黄浦书城校
  <input type="radio" name="school" value="浦东金桥校">浦东金桥校
  <input type="radio" name="school" value="闵行莘庄校">闵行莘庄校<br />
  <input type="radio" name="school" value="虹口东宝校">虹口东宝校
  <input type="radio" name="school" value="长宁虹桥校">长宁虹桥校
  <input type="radio" name="school" value="松江九亭校">松江九亭校
  <input type="radio" name="school" value="宝山大华校">宝山大华校</div></td>
                              </tr>
                            <tr>
                              <td><div align="right">活动选项：&nbsp;&nbsp;</div></td>
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
		</div>
		</div>  
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->