<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>奇妙万圣夜</title>
<style type="text/css">
<!--
div,a{margin:0;padding:0;}img{border:0px;}
.imgsBox{overflow:hidden;width:380px;height:446px;}
.imgs a{display:block;width:380px;height:430px;}
.clickButton{background-color:#888888;width:380px;height:16px;position:relative;top:-1px;_top:-5px;}
.clickButton div{float:right;}
.clickButton a{background-color:#666;border-left:#ccc 2px solid;line-height:12px;height:16px;font-size:14px; font-weight:bold;float:left;padding:0 7px;text-decoration:none;color:#fff;}
.clickButton a.active,.clickButton a:hover{background-color:#d34600;}
-->
</style>

</head>

<body>
<div align="center">
  <table width="1003" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="381" background="images/top.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="66" background="images/center.jpg"><img src="images/menu.jpg" width="1003" height="96" border="0" usemap="#Map2"></td>
    </tr>
    <tr>
      <td height="353" background="images/center.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="670" valign="top" background="images/bottom.jpg"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="190" colspan="2">&nbsp;</td>
          </tr>
        <tr>
          <td width="1003" valign="top">
          <table   border="0" cellpadding="0" cellspacing="0" align="right" width="1003">
          <tr>
          <td width="540"></td>
           <td width="430" align="center">

<div class="imgsBox">
	<div class="imgs">
		<a href="#">
			<img id="pic" src="images/cp/01.jpg" width="380" height="430" />
		</a>
	</div>
	<div class="clickButton">
		<div>
			<a class="active" href="">1</a>
			<a class="" href="">2</a>
			<a class="" href="">3</a>
			<a class="" href="">4</a>
			<a class="" href="">5</a>
		</div>
	</div>
</div>
            </td>
            <td width="33"></td>
            </tr>
        </table>
      </td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
<map name="Map">
  <area shape="circle" coords="857,136,57" href="rqbb.asp">
</map>
<map name="Map2">
  <area shape="rect" coords="708,3,962,89" href="pgcj.asp">
  <area shape="rect" coords="375,3,647,91" href="rqbb.asp">
  <area shape="rect" coords="50,7,311,92" href="index.asp">
</map>
<script type="text/javascript" src="script/jquery-1.2.6.js"></script>
<script type="text/javascript">	
	$(document).ready(function(){	
		$(".clickButton a").attr("href","javascript:return false;");
		$(".clickButton a").each(function(index){			
			$(this).click(function(){
				changeImage(this,index);	
			});			
		});	
		autoChangeImage();		
	});

	function autoChangeImage(){
		for(var i = 0; i<=10000;i++){
			window.setTimeout("clickButton("+(i%5+1)+")",i*3000);			
		}
	}

	function clickButton(index){
		$(".clickButton a:nth-child("+index+")").click();
	}

	function changeImage(element,index){
		var arryImgs = ["images/cp/01.jpg","images/cp/01.jpg","images/cp/01.jpg","images/cp/01.jpg","images/cp/01.jpg"];
		$(".clickButton a").removeClass("active");
		$(element).addClass("active");
		$(".imgs img").attr("src",arryImgs[index]);
	}
</script>
</body>
</html>
