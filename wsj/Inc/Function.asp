<%
function StrToNum(this_string)
    if isnull(this_string) then
        this_string=""
    end if
    this_string=trim("" & this_string)
    if isnumeric(this_string) then
        StrToNum=clng(this_string)
    else
        StrToNum=0
	end if	
end function

function str_replace(this_string)
        str_replace=""
        if isnull(this_string) then
           this_string=""
        else
           this_string=this_string
	end if
	str_replace=replace(replace(this_string," ","&nbsp;"),chr(10),"<br>")
end function

function trim(this_string)
        trim=""
        if isnull(this_string) then
           this_string=""
        else
           this_string=this_string
	    end if
	trim=replace(this_string," "," ")
end function

function trim_fun(this_string)
        trim_fun=""
        if isnull(this_string) then
           this_string=""
        else
           this_string=this_string
	    end if
	trim_fun=replace(this_string," ","")
end function

function strTrim(this_str1)
    if isnull(this_str1) or trim(this_str1)="" then
	    strtrim=""
	else
	    strtrim=trim("" & this_str1)
	end if
end function

function cint(this_string)
    if isnull(this_string) then
        this_string=""
    end if
    this_string=trim("" & this_string)
    if isnumeric(this_string) then
        cint=clng(this_string)
    else
        cint=0
	end if	
end function

function url_return(this_string,this_skip)
response.Write "<script language=JavaScript>"
response.Write "alert('"&this_string&"');"
response.Write "window.history.go("&this_skip&");"
response.Write "</script>"
response.end
end function

function url_go(this_string,this_rul)
response.Write "<script language=JavaScript>"
response.Write "alert('"&this_string&"');"
response.Write "window.location.href='"&this_rul&"';"
response.Write "</script>"
response.end
end function

function closewin()
response.Write "<script language=JavaScript>"
response.Write "window.close();"
response.Write "</script>"
response.end
end function

function PutAllRs(this_rs)
 for i=1 to this_rs.Fields.Count-1
  fieldname=this_rs.Fields(i).name
  fieldtype=this_rs.Fields(i).type
  tmp_str=format_content(request.form(fieldname))
 if tmp_str<>"" then
  if fieldtype=3 then
   if isnumeric(tmp_str) then
   this_rs(fieldname)=tmp_str
   else
   this_rs(fieldname)=0
   end if	
  elseif fieldtype=105 then
  if isdate(tmp_str) then
  this_rs(fieldname)=cdate(tmp_str)
  end if
  else
  this_rs(fieldname)=tmp_str
  end if	
 end if	
 next	
end function

function HTMLEncode(fString)
if not isnull(fString) then
    fString = replace(fString, CHR(62), "&gt;") '>
    fString = replace(fString, CHR(60), "&lt;") '<
    fString = Replace(fString, CHR(32), "&nbsp;")
    fString = Replace(fString, CHR(9), "&nbsp;")
    fString = Replace(fString, CHR(34), "&quot;")
    fString = Replace(fString, CHR(39), "&#39;")
	fString = Replace(fString, CHR(37), "") '%
    fString = Replace(fString, CHR(13), "")
    fString = Replace(fString, CHR(10) & CHR(10), "</P><P> ")
    fString = Replace(fString, CHR(10), "<BR> ")

    fString=ChkBadWords(fString)
    HTMLEncode = fString
end if
end function

function HTMLEncode_f(fString)
if not isnull(fString) then
    fString = replace(fString, "&gt;", CHR(62)) '>
    fString = replace(fString, "&lt;", CHR(60)) '<
    fString = Replace(fString, "&nbsp;", CHR(32))
    fString = Replace(fString, "&nbsp;", CHR(9))
    fString = Replace(fString, "&quot;", CHR(34))
    fString = Replace(fString, "&#39;", CHR(39))
    fString=ChkBadWords(fString)
    HTMLEncode_f = fString
end if
end function

function format_content(fString)
if not isnull(fString) then
    fString = replace(fString, CHR(62), "&gt;")
    fString = replace(fString, CHR(60), "&lt;")
    fString = Replace(fString, CHR(32), "&nbsp;")
    fString = Replace(fString, CHR(9), "&nbsp;")
    fString = Replace(fString, CHR(34), "&quot;")
    fString = Replace(fString, CHR(39), "&#39;")
    fString = Replace(fString, CHR(13), "")
	fString = Replace(fString, CHR(37), "")
    format_content = fString
end if
end function

function url_value(fString)
if not isnull(fString) then
 fString = replace(fString,"&", "%26")
 fString = replace(fString,"?", "%3F")  
 fString = replace(fString,"=", "%3D") 
 fString = replace(fString,"/", "%2F")  
 url_value=fString
end if
end function

function url_value_f(fString)
if not isnull(fString) then
 fString = replace(fString, "%26","&")
 fString = replace(fString, "%3F","?")  
 fString = replace(fString, "%3D","=") 
 fString = replace(fString, "%2F","/")   
 url_value_f=fString 
end if
end function

function ChkBadWords(fString)
    dim bwords,ii
    if not(isnull(BadWords) or isnull(fString)) then
		bwords = split(BadWords, "|")
		for ii = 0 to ubound(bwords)
			fString = Replace(fString, bwords(ii), string(len(bwords(ii)),"*")) 
		next
		ChkBadWords = fString
    end if
end function

function chkgrade(r) '根据入学年份判断目前所在年级，返回几年级,要求服务器的时间日期准确
	r=cint(r)
	if month(now())<8 then
		a=year(now())-r
	else
		a=year(now())-r+1
	end if
	Select case(a)
		case 1:chkgrade="一年级"
		case 2:chkgrade="二年级"
		case 3:chkgrade="三年级"
		case 4:chkgrade="四年级"
		case 5:chkgrade="五年级"
		case 6:chkgrade="六年级"
	End Select
end function

function chkgrade2(r) '根据入学年份判断目前所在年级，返回一个数字,要求服务器的时间日期准确
	r=cint(r)
	if month(now())<8 then
		chkgrade2=year(now())-r
	else
		chkgrade2=year(now())-r+1
	end if
end function
%>