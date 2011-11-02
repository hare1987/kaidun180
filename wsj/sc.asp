<!-- #include file="Inc/Conn.asp" -->
<!-- #include file="Inc/Function.asp" -->
<%
if Request.QueryString("Action")="ok" then
url=Trim(Request.Form("img"))
info=Trim(Request.Form("info"))
name=Trim(Request.Form("name"))
user=Trim(Request.Form("user"))
school=Trim(Request.Form("school"))
tea=Trim(Request.Form("tea"))
qq=Trim(Request.Form("qq"))
mail=Trim(Request.Form("mail"))

if name="" or url="" then
	Response.Write("请勿尝试非法操作！")
	Response.End()
end if

set rs=Server.CreateObject("Adodb.recordset")
sql="select * from Photo"
rs.open sql,conn,1,3
rs.Addnew
rs("name")=name
rs("user")=user
rs("info")=format_content(info)
rs("url")=url
rs("tea")=tea
rs("qq")=qq
rs("mail")=mail
rs("school")=school
rs("ok")=0
rs("a1")=Trim(Request.Form("a1"))
rs("a2")=Trim(Request.Form("a2"))
rs("a3")=Trim(Request.Form("a3"))
rs("a4")=Trim(Request.Form("a4"))
rs.Update
rs.Close
Response.Write ("<script>alert('报名成功,请等待管理员审核！');location.href='rqbb.asp';</script>")
end if
%>
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
.STYLE40 {color: #FF0000}
.style41 {color: #FFFFFF}
.style42 {
	color: #FF6600;
	font-weight: bold;
}
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
      <td height="14"><img src="images/topline.jpg" width="1003" height="100"></td>
    </tr>
    <tr>
      <td height="229" valign="top" background="images/leftline.jpg"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><div align="right"><span class="style42"><a href="sc.asp"><font color="#FF6600">我要报名&gt;&gt;&gt;</font></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            </div>
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" >
              <form id="form1" name="form1" action="?Action=ok" method="post" onsubmit="return Validator.Validate(this,3)" >
                <tbody>
                  <tr >
                    <td width="115" height="30" align="left" valign="middle"><div align="center"><span class="style41">宝宝姓名</span></div></td>
                    <td width="344" height="30" align="left" valign="middle">&nbsp;
                        <input name="name" id="name" size="30" maxlength="20" datatype="Require" msg="不能为空" />
                        *</td>
                    <td width="108" height="30" align="left" valign="middle"><div align="center"><span class="style41">宝宝性别</span></div></td>
                    <td width="328" height="30" align="left" valign="middle">&nbsp;
                        <input name="user" id="user" size="30" maxlength="20" datatype="Require" msg="不能为空" />
                        *</td>
                  </tr>
                  <tr >
                    <td height="30" align="left" valign="middle"><div align="center"><span class="style41">宝宝年龄</span></div></td>
                    <td height="30" align="left" valign="middle">&nbsp;
                        <input id="school" size="30" name="school" datatype="Require" msg="不能为空" />
                        *</td>
                    <td height="30" align="left" valign="middle"><div align="center"><span class="style41">出生年月</span></div></td>
                    <td height="30" align="left" valign="middle">&nbsp;
                        <input name="tea" id="tea" size="30" maxlength="20" datatype="Require" msg="不能为空" />
                        *</td>
                  </tr>
                  <tr >
                    <td height="30" align="left" valign="middle"><div align="center"><span class="style41">家长姓名</span></div></td>
                    <td height="30" align="left" valign="middle">&nbsp;
                        <input name="qq" id="qq" size="30" maxlength="10" /></td>
                    <td height="30" align="left" valign="middle"><div align="center"><span class="style41">联系电话</span></div></td>
                    <td height="30" align="left" valign="middle">&nbsp;
                        <input name="mail" id="mail" size="30" maxlength="50"  /></td>
                  </tr>
                  <tr >
                    <td height="30" align="left" valign="middle"><div align="center"><span class="style41">电子邮箱</span></div></td>
                    <td height="30" align="left" valign="middle">&nbsp;
                        <input name="a4" id="a4" size="30" maxlength="50"></td>
                    <td height="30" align="left" valign="middle"><div align="center"><span class="style41">所在校区</span></div></td>
                    <td height="30" align="left" valign="middle">&nbsp;
                     <input name="a3" id="a3" size="30" maxlength="50"></td>
                  </tr>
                  <tr >
                    <td height="30" align="left" valign="middle"><div align="center"><span class="style41">宝宝说明</span></div></td>
                    <td height="30" colspan="3" align="left" valign="middle">&nbsp;</td>
                  </tr>
                  <tr >
                    <td height="25" align="left" valign="middle">&nbsp;</td>
                    <td height="25" colspan="3" align="left" valign="middle">&nbsp;
                        <textarea id="info" name="info" rows="10" cols="95" datatype="Require" msg="不能为空"></textarea>
                        *</td>
                  </tr>
                  <tr >
                    <td height="36" align="left" valign="middle"><div align="center"><span class="style41">照&nbsp;&nbsp;&nbsp;&nbsp;片</span></div></td>
                    <td height="36" colspan="3" align="left" valign="middle">&nbsp;&nbsp;
                        <iframe allowTransparency="true" src='manage/upload/upload_pic2.asp' name='i2' width="350" height="25" scrolling="No" frameborder="0" id="i2"></iframe>
                        *请先上传图片后再提交。图片宽度最好不要超过800像素。
                        <div class="sup" id="sup"></div></td>
                  </tr>
                  <tr align="center" >
                    <td height="36" colspan="4" valign="middle"><p class="STYLE4 STYLE30">
                        <input name="img" type="hidden" id="img" datatype="Require" msg="不能为空"/>
                        <input type="submit" name="Submit" value=" 提 交 " />
                    </p></td>
                  </tr>
                </tbody>
              </form>
            </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="18"><img src="images/bottomline.jpg" width="1003" height="100"></td>
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
  <script>
  /*************************************************
	Validator v1.05
	code by 我佛山人
	wfsr@msn.com
*************************************************/
 Validator = {
	Require : /.+/,
	Email : /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
	Phone : /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/,
	Mobile : /^((\(\d{2,3}\))|(\d{3}\-))?13\d{9}$/,
	Url : /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/,
	IdCard : "this.IsIdCard(value)",
	Currency : /^\d+(\.\d+)?$/,
	Number : /^\d+$/,
	Zip : /^[1-9]\d{5}$/,
	QQ : /^[1-9]\d{4,8}$/,
	Integer : /^[-\+]?\d+$/,
	Double : /^[-\+]?\d+(\.\d+)?$/,
	English : /^[A-Za-z]+$/,
	Chinese :  /^[\u0391-\uFFE5]+$/,
	Username : /^[a-z]\w{3,}$/i,
	UnSafe : /^(([A-Z]*|[a-z]*|\d*|[-_\~!@#\$%\^&\*\.\(\)\[\]\{\}<>\?\\\/\'\"]*)|.{0,5})$|\s/,
	IsSafe : function(str){return !this.UnSafe.test(str);},
	SafeString : "this.IsSafe(value)",
	Filter : "this.DoFilter(value, getAttribute('accept'))",
	Limit : "this.limit(value.length,getAttribute('min'),  getAttribute('max'))",
	LimitB : "this.limit(this.LenB(value), getAttribute('min'), getAttribute('max'))",
	Date : "this.IsDate(value, getAttribute('min'), getAttribute('format'))",
	Repeat : "value == document.getElementsByName(getAttribute('to'))[0].value",
	Range : "getAttribute('min') < (value|0) && (value|0) < getAttribute('max')",
	Compare : "this.compare(value,getAttribute('operator'),getAttribute('to'))",
	Custom : "this.Exec(value, getAttribute('regexp'))",
	Group : "this.MustChecked(getAttribute('name'), getAttribute('min'), getAttribute('max'))",
	ErrorItem : [document.forms[0]],
	ErrorMessage : ["以下原因导致提交失败：\t\t\t\t"],
	Validate : function(theForm, mode){
		var obj = theForm || event.srcElement;
		var count = obj.elements.length;
		this.ErrorMessage.length = 1;
		this.ErrorItem.length = 1;
		this.ErrorItem[0] = obj;
		for(var i=0;i<count;i++){
			with(obj.elements[i]){
				var _dataType = getAttribute("dataType");
				if(typeof(_dataType) == "object" || typeof(this[_dataType]) == "undefined")  continue;
				this.ClearState(obj.elements[i]);
				if(getAttribute("require") == "false" && value == "") continue;
				switch(_dataType){
					case "IdCard" :
					case "Date" :
					case "Repeat" :
					case "Range" :
					case "Compare" :
					case "Custom" :
					case "Group" : 
					case "Limit" :
					case "LimitB" :
					case "SafeString" :
					case "Filter" :
						if(!eval(this[_dataType]))	{
							this.AddError(i, getAttribute("msg"));
						}
						break;
					default :
						if(!this[_dataType].test(value)){
							this.AddError(i, getAttribute("msg"));
						}
						break;
				}
			}
		}
		if(this.ErrorMessage.length > 1){
			mode = mode || 1;
			var errCount = this.ErrorItem.length;
			switch(mode){
			case 2 :
				for(var i=1;i<errCount;i++)
					this.ErrorItem[i].style.color = "red";
			case 1 :
				alert(this.ErrorMessage.join("\n"));
				this.ErrorItem[1].focus();
				break;
			case 3 :
				for(var i=1;i<errCount;i++){
				try{
					var span = document.createElement("SPAN");
					span.id = "__ErrorMessagePanel";
					span.style.color = "red";
					this.ErrorItem[i].parentNode.appendChild(span);
					span.innerHTML = this.ErrorMessage[i].replace(/\d+:/,"*");
					}
					catch(e){alert(e.description);}
				}
				this.ErrorItem[1].focus();
				break;
			default :
				alert(this.ErrorMessage.join("\n"));
				break;
			}
			return false;
		}
		return true;
	},
	limit : function(len,min, max){
		min = min || 0;
		max = max || Number.MAX_VALUE;
		return min <= len && len <= max;
	},
	LenB : function(str){
		return str.replace(/[^\x00-\xff]/g,"**").length;
	},
	ClearState : function(elem){
		with(elem){
			if(style.color == "red")
				style.color = "";
			var lastNode = parentNode.childNodes[parentNode.childNodes.length-1];
			if(lastNode.id == "__ErrorMessagePanel")
				parentNode.removeChild(lastNode);
		}
	},
	AddError : function(index, str){
		this.ErrorItem[this.ErrorItem.length] = this.ErrorItem[0].elements[index];
		this.ErrorMessage[this.ErrorMessage.length] = this.ErrorMessage.length + ":" + str;
	},
	Exec : function(op, reg){
		return new RegExp(reg,"g").test(op);
	},
	compare : function(op1,operator,op2){
		switch (operator) {
			case "NotEqual":
				return (op1 != op2);
			case "GreaterThan":
				return (op1 > op2);
			case "GreaterThanEqual":
				return (op1 >= op2);
			case "LessThan":
				return (op1 < op2);
			case "LessThanEqual":
				return (op1 <= op2);
			default:
				return (op1 == op2);            
		}
	},
	MustChecked : function(name, min, max){
		var groups = document.getElementsByName(name);
		var hasChecked = 0;
		min = min || 1;
		max = max || groups.length;
		for(var i=groups.length-1;i>=0;i--)
			if(groups[i].checked) hasChecked++;
		return min <= hasChecked && hasChecked <= max;
	},
	DoFilter : function(input, filter){
return new RegExp("^.+\.(?=EXT)(EXT)$".replace(/EXT/g, filter.split(/\s*,\s*/).join("|")), "gi").test(input);
	},
	IsIdCard : function(number){
		var date, Ai;
		var verify = "10x98765432";
		var Wi = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
		var area = ['','','','','','','','','','','','北京','天津','河北','山西','内蒙古','','','','','','辽宁','吉林','黑龙江','','','','','','','','上海','江苏','浙江','安微','福建','江西','山东','','','','河南','湖北','湖南','广东','广西','海南','','','','重庆','四川','贵州','云南','西藏','','','','','','','陕西','甘肃','青海','宁夏','新疆','','','','','','台湾','','','','','','','','','','香港','澳门','','','','','','','','','国外'];
		var re = number.match(/^(\d{2})\d{4}(((\d{2})(\d{2})(\d{2})(\d{3}))|((\d{4})(\d{2})(\d{2})(\d{3}[x\d])))$/i);
		if(re == null) return false;
		if(re[1] >= area.length || area[re[1]] == "") return false;
		if(re[2].length == 12){
			Ai = number.substr(0, 17);
			date = [re[9], re[10], re[11]].join("-");
		}
		else{
			Ai = number.substr(0, 6) + "19" + number.substr(6);
			date = ["19" + re[4], re[5], re[6]].join("-");
		}
		if(!this.IsDate(date, "ymd")) return false;
		var sum = 0;
		for(var i = 0;i<=16;i++){
			sum += Ai.charAt(i) * Wi[i];
		}
		Ai +=  verify.charAt(sum%11);
		return (number.length ==15 || number.length == 18 && number == Ai);
	},
	IsDate : function(op, formatString){
		formatString = formatString || "ymd";
		var m, year, month, day;
		switch(formatString){
			case "ymd" :
				m = op.match(new RegExp("^((\\d{4})|(\\d{2}))([-./])(\\d{1,2})\\4(\\d{1,2})$"));
				if(m == null ) return false;
				day = m[6];
				month = m[5]*1;
				year =  (m[2].length == 4) ? m[2] : GetFullYear(parseInt(m[3], 10));
				break;
			case "dmy" :
				m = op.match(new RegExp("^(\\d{1,2})([-./])(\\d{1,2})\\2((\\d{4})|(\\d{2}))$"));
				if(m == null ) return false;
				day = m[1];
				month = m[3]*1;
				year = (m[5].length == 4) ? m[5] : GetFullYear(parseInt(m[6], 10));
				break;
			default :
				break;
		}
		if(!parseInt(month)) return false;
		month = month==0 ?12:month;
		var date = new Date(year, month-1, day);
        return (typeof(date) == "object" && year == date.getFullYear() && month == (date.getMonth()+1) && day == date.getDate());
		function GetFullYear(y){return ((y<30 ? "20" : "19") + y)|0;}
	}
 }
    </script>
</body>
</html>
