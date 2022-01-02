<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <h3 id=c3>Login WoC</h3>
    <hr>
<style>
table {border-collapse:collapse}
td {border:1px solid white;}
body{
background-image:url(data:image/jpeg;base64,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);
}
#c3,#c5{
		color:white;
	font-family:fantasy;
	font-size:30px;
	background-color : black;
}
#t1{
	color:white;
	font-family:fantasy;
}
</style>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body align=center>
<%-- <jsp:include page="header.jsp" /> --%>
<form method=POST action='login_check.jsp' id=frmLogin>
<table align=center id=t1>
<tr><td>ID</td><td><input type=text name=userid></td></tr>
<tr><td>PW</td><td><input type=text name=passcode></td></tr>
<tr><td colspan=2><input type=submit value='로그인'>&nbsp;
				  <input type=button value='home' id=home>
				  <input type=button value='회원가입' id=signon></td></tr>			  
				  </table></form>
<hr>
<h4 id=c5>World of Cannon</h4>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.on('click','#signon',function(){
	document.location='signon.jsp';
})
.on('click','#home',function(){
	document.location='home.jsp';
})
.on('submit','#frmLogin',function(){ //form에 id 지정해줘서 사용하면 true일때 form지정주소로 넘어가고 fale일때 안넘어가게 할 수 있음
	if($('input[name=userid]').val()==''){
	    alert('ID를적으세요');
	        return false;
	   }if($('input[name=passcode]').val()==''){
	       alert('비밀번호를적으세요');
	        return false;
	   }if($('input[name=userid]').val()!==id){
		   alert('ID가 일치하지 않습니다.');
		   return false;
	   }if($('input[name=passcode]').val()==pass){
		   alert('password가 일치하지 않습니다.');
		   return false;
	   }
	   return true;
})
</script>
</html>