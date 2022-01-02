<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuGudan</title>
</head>
<body>
<%
//내장객체 (request/out)
int dan=Integer.parseInt(request.getParameter("dan"));
for (int i=1; i<10; i++){
	out.println(dan+"x"+i+"="+(dan*i)+"<br>");
}//
%>
</body>
</html>