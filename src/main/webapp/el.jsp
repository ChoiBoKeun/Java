<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<%-- <c:set var="now" value="<%=new java.util.Date() %>" /> --%><jsp:useBean id="now" class="java.util.Date" />
default:<c:out value="${now}" /><br>
Korea KST:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br> <%--한국 평균시--%>
<fmt:timeZone value="GMT">
Korea GMT:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br> <%--그리니치 평균시--%>
</fmt:timeZone>
<fmt:timeZone value="GMT-8">
Korea GMT-8:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br> <%--그리니치 평균시-8--%>
</fmt:timeZone>
<%-- <fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"/> yyyy=년 MM=월 dd=일 hh=시 mm=분 ss=초 (정해진거임) --%>
<%-----------------catch-------------- --%>
<%-- <c:catch var="errmsg"> --%>
<%-- 	<c:out value="Hello World" /><br> --%>
<%-- 	<c:out value="Good Morning Vietname" /><br> --%>
<%-- 	<%=1/0 %><br> 에러메세지 띄우고 뒤에거 안하고 종료 --%>
<%-- 	<c:out value="GoodBye Yello Brick Road" /><br> --%>
<%-- </c:catch> --%>
<%-- Error:[<c:out value="${errmsg}" />] --%>
<%---------첫번째 코드(request,getParameter)--------- --%>
<%-- <% --%>
<!--  if(request.getParameter("color")==null){ -->
<%--  %> --%>
<!-- 	<span style="color:purple">parameter 없음</span> -->
<%-- <% --%>
<%-- <% --%>
<!--  } else if(request.getParameter("color").equals("1")){ -->
<%-- %> --%>
<!-- 		<span style="color:red">빨강</span> -->
<%-- <% --%>
<!--  } else if(request.getParameter("color").equals("2")){ -->
<%-- %> --%>
<!-- 		<span style="color:green">초록</span> -->
<%-- <% --%>
<!--  } else if(request.getParameter("color").equals("3")){ -->
<%-- %> --%>
<!-- 		<span style="color:blue">파랑</span> -->
<!--   }		 -->
<%-- %> --%>
<%---------두번째 코드(if,param,c:)--------- --%>
<%-- <c:if test="${param.color=='1'}" > --%>
<!-- 	<span style="color:red">빨강</span> -->
<%-- </c:if> --%>
<%-- <c:if test="${param.color=='2'}" > --%>
<!-- 	<span style="color:blue">파랑</span> -->
<%-- </c:if> --%>
<%-- <c:if test="${param.color=='3'}"> --%>
<!-- 	<span style="color:green">초록</span> -->
<%-- </c:if> --%>
<%-- <c:if test="${param.color==''}"> --%>
<!-- 	<span style="color:black">까망</span> -->
<%-- </c:if> --%>
<%-- <c:if test="${param.color==null}"> --%>
<!-- 	<span style="color:purple">parameter 없음</span> -->
<%-- </c:if> --%>
<%---------세번째 코드 (choose,when,otherwise)--------- --%>
<%-- <c:choose> --%>
<%-- 		<c:when test="${param.color=='1'}"> --%>
<%-- 		<c:if test=""> 사이에 추가 사용 가능--%>
<!-- 			<span style="color:red">빨강</span> -->
<%-- 		</c:when> --%>
<%-- 		<c:when test="${param.color=='2'}"> --%>
<!-- 			<span style="color:blue">파랑</span> -->
<%-- 		</c:when> --%>
<%-- 		<c:when test="${param.color=='3'}"> --%>
<!-- 			<span style="color:green">초록</span> -->
<%-- 		</c:when> --%>
<%-- 		<c:when test="${param.color==''}"> --%>
<!-- 			<span style="color:black">까망</span> -->
<%-- 		</c:when> --%>
<%-- 		<c:otherwise> --%>
<%-- 			<c:set var="n" value="otherwise 사이에 c:set,out사용가능" /> --%>
<%-- 			<c:out value="${n}" /><br> --%>
<!-- 			<span style="color:purple">parameter 없음</span> -->
<%-- 		</c:otherwise> --%>
<%-- </c:choose> --%>
<%---------네번째 코드 (forEach var,items)--------- --%>
</body>
</html>