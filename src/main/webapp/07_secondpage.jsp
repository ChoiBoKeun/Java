<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	secondPage.jsp<br>
하나의 PAGE 속성:${pageScope.name}<br>
하나의 REQUEST속성:${requestScope.name}<br>
하나의 SESSION속성:${sessionScope.name}<br>
하나의 APPLICATION 속성:${applicationScope.name}<br>
<a href="07_thirdpage.jsp?name=${requestScope.name}">또다른 페이지(third page)</a>
</body>
</html>