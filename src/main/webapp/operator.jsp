<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>
</head>
<body>
<form method="GET" action="operator_bk.jsp">
<table>
<tr><td>value1:</td><td><input type=text name=value1 id=value1></td></tr>
<tr><td>value2:</td><td><input type=text name=value2 id=value2></td></tr>
<tr><td>operator:</td><td><select size=4 multiple name=operator id=operator>
<option>+</option>
<option>-</option>
<option>*</option>
<option>/</option>
</td></tr></select>
<tr><td colspan=2 align=center>
		<input type=submit value="전송"><input type=reset value="Reset">
	</td></tr>
</table>
</form>
</body>
</html>