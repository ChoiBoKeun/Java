<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request methods</title>
</head>
<body>
<%= "getContextPath ["+request.getContextPath()+"]" %><br>
<%= "getMethod ["+request.getMethod()+"]" %><br>
<%= "getRequestURL ["+request.getRequestURL()+"]" %><br>
<%= "getRequestURI ["+request.getRequestURI()+"]" %><br>
<%= "***getQueryString ["+request.getQueryString()+"]" %><br>
<%= "getSession(true) ["+request.getSession(true)+"]" %><br>
<%= "***getRequestDispatcher('03_dec.jsp')["+request.getRequestDispatcher("03_dec.jsp")+"]" %><br>
<%= "**getRemoteHost ["+request.getRemoteHost()+"]" %><br>
<%= "**getRemoteAddr ["+request.getRemoteAddr()+"]" %><br>
<%= "**getSession ["+request.getSession()+"]" %><br>
<%= "getServerName ["+request.getServerName()+"]" %><br>
<%= "getProtocol ["+request.getProtocol()+"]" %><br>
<%--getQueryString 은 주소창 맨뒤에 ?~~ 에서 ~~부분이 출력된다
 	request.getParameter();
 	request.getParameterValues();
 	request.getParameterNames();--%>
</body>
</html>