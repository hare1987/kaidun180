<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>奇妙万圣夜</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #000000;
}
body,td,th {
	font-size: 12px;
}
#tbody {width:400px;margin:-10px auto;}
-->
</style></head>

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
          <td height="136" colspan="2">&nbsp;</td>
          </tr>
        <tr>
          <td width="41">&nbsp;</td>
          <td width="962" valign="top"><table width="86%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>

	    <table   border="0" cellpadding="0" cellspacing="0" align="right" style="margin-top:50px;">
          <tr>
            <td><div align="right"><img src="images/cp/s1.jpg" alt="" width="340" height="240" id="mainphoto" rel="images/cp/s1.jpg" name="#" /></div></td>
            </tr>
                                   <tr>
            <td>  
            <div id="tbody" align="right" style="width:340px;">
  <img src="images/goleft.gif" width="0" height="0" id="goleft" />
      <img src="images/goright.gif" width="0" height="0" id="goright" />
      <div id="photos">
        <div id="showArea" style="width:330px;">
          <img src="images/cp/s1.jpg" alt="" width="165" height="98" rel="images/cp/s1.jpg" name="#" />
		  <img src="images/cp/s2.jpg" alt="" width="165" height="98" rel="images/cp/s2.jpg" name="#" /><br>
		  <img src="images/cp/s3.jpg" alt="" width="165" height="98" rel="images/cp/s3.jpg" name="#" />
		  <img src="images/cp/s4.jpg" alt="" width="165" height="98" rel="images/cp/s4.jpg" name="#" /><br>
        </div>
      </div>
  </div>
            </td>
            </tr>
        </table>

  <script language="javascript" type="text/javascript">
var browse = window.navigator.appName.toLowerCase();
var MyMar;
var speed = 1; //速度，越大越慢
var spec = 1; //每次滚动的间距, 越大滚动越快
var minOpa = 100; //滤镜最小值
var maxOpa = 100; //滤镜最大值
var spa = 2; //缩略图区域补充数值
var w = 0;
spec = (browse.indexOf("microsoft") > -1) ? spec : ((browse.indexOf("opera") > -1) ? spec*10 : spec*20);
function $(e) {return document.getElementById(e);}
function goleft() {$('photos').scrollLeft -= spec;}
function goright() {$('photos').scrollLeft += spec;}
function setOpacity(e, n) {
    if (browse.indexOf("microsoft") > -1) e.style.filter = 'alpha(opacity=' + n + ')';
    else e.style.opacity = n/100;
}
$('goleft').style.cursor = 'pointer';
$('goright').style.cursor = 'pointer';
$('mainphoto').onmouseover = function() {setOpacity(this, maxOpa);}
$('mainphoto').onmouseout = function() {setOpacity(this, minOpa);}
$('mainphoto').onclick = function() {location = this.getAttribute('name');}
$('goleft').onmouseover = function() {this.src = 'images/goleft2.gif'; MyMar=setInterval(goleft, speed);}
$('goleft').onmouseout = function() {this.src = 'images/goleft.gif'; clearInterval(MyMar);}
$('goright').onmouseover = function() {this.src = 'images/goright2.gif'; MyMar=setInterval(goright,speed);}
$('goright').onmouseout = function() {this.src = 'images/goright.gif'; clearInterval(MyMar);}
window.onload = function() {
    setOpacity($('mainphoto'), minOpa);
    var rHtml = '';
    var p = $('showArea').getElementsByTagName('img');
    for (var i=0; i<p.length; i++) {
        w += parseInt(p[i].getAttribute('width')) + spa;
        setOpacity(p[i], minOpa);
        p[i].onclick = function() {location = this.getAttribute('name');}
        p[i].onmouseover = function() {
            setOpacity(this, maxOpa);
            $('mainphoto').src = this.getAttribute('rel');
            $('mainphoto').setAttribute('name', this.getAttribute('name'));
            setOpacity($('mainphoto'), maxOpa);
        }
        p[i].onmouseout = function() {
            setOpacity(this, minOpa);
            setOpacity($('mainphoto'), minOpa);
        }
        rHtml += '<img src="' + p[i].getAttribute('rel') + '" width="0" height="0" alt="" />';
    }
    $('showArea').style.width = parseInt(w) + 'px';
    var rLoad = document.createElement("div");
    $('photos').appendChild(rLoad);
    rLoad.style.width = "1px";
    rLoad.style.height = "1px";
    rLoad.style.overflow = "hidden";
    rLoad.innerHTML = rHtml;
}
</script>
</td>
              </tr>
            
          </table></td>
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
</body>
</html>
