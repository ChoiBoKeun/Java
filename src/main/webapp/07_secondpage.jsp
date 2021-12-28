<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("secondPage.jsp<br>");
out.println("하나의 PAGE 속성:"+pageContext.getAttribute("name")+"<br>");
	out.println("하나의 REQUEST 속성:"+request.getAttribute("name")+"<br>");
	out.println("하나의 SESSION 속성:"+session.getAttribute("name")+"<br>");
	out.println("하나의 APPLICATION 속성:"+application.getAttribute("name")+"<br>");
	String hyper="07_thirdpage.jsp?name="+request.getAttribute("name");//
%>
<a href="<%=hyper%>">또다른 페이지(third page)</a>
</body>
</html>