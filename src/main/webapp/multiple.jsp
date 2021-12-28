<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중선택</title>
</head>
<body>
<form method="POST" action="multiple_bk.jsp">
<input type=checkbox name=item value='신발'>신발<br>
<input type=checkbox name=item value='가방'>가방<br>
<input type=checkbox name=item value='벨트'>벨트<br>
<input type=checkbox name=item value='모자'>모자<br>
<input type=checkbox name=item value='시계'>시계<br>
<input type=checkbox name=item value='반지'>반지<br>
<input type=submit value='전송'>&nbsp;&nbsp;
<input type=reset value='Reset'>
</form>
</body>
</html>