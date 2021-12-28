<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<style>
table {border-collapse:collapse;}
td {border:1px solid blue;}
</style>
<body>
<form method=POST action='validate.jsp'>
<table>
<tr><td align=right>실명</td><td><input type=text name=name></td>
	<td align=right>성별</td><td><input type=radio name=gender value='남성'>남성
					<input type=radio name=gender value='여성'>여성</td>
</tr>
<tr><td align=right>아이디</td><td colspan=3><input type=text name=userid></td></tr>
<tr><td align=right>비밀번호</td><td><input type=password name=passcode></td>
	<td align=right>비밀번호확인</td><td><input type=password name=passcode1 id=passcode1></td></tr>
<tr><td align=right>관심분야:</td>
	<td colspan=3>
		<input type=checkbox name=interest value=politics>정치
		<input type=checkbox name=interest value=economics>경제
		<input type=checkbox name=interest value=social>사회<br>
		<input type=checkbox name=interest value=culture>문화
		<input type=checkbox name=interest value=arts>예술
		<input type=checkbox name=interest value=entertainment>연예<br>
		<input type=checkbox name=interest value=history>역사
		<input type=checkbox name=interest value=sports>스포츠
		<input type=checkbox name=interest value=etc>기타
		</td></tr>
<tr><td colspan=4 align=center>
	<input type=submit value='가입완료'>&nbsp;
	<input type=button value='취소' id=cancel>
</td></tr>
</table>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script> 
$(document)
.on('click','#cancel',function(){
	document.location='login.jsp';
})
// .on('submit',function(){
// 	if($('input[name=passcode1]').val()==''){ // -> name으로 할 경우
// 		alert('false');
// 		return false; //submit 취소된다
// 	} else {
// 		alert('true');
// 		return true;
// 	}
// })
//	if($('#passcode1').val()=='') { -> id로 할 경우
</script>
</html>