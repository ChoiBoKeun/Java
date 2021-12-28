<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
%>
실명:<%=request.getParameter("name")%><br>
성별:<%=request.getParameter("gender") %><br>
비밀번호:<%=request.getParameter("passcode") %><br>
비밀번호확인:<%=request.getParameter("passcode1") %><br>
관심분야:
<%
String[] arInterest = request.getParameterValues("interest");
//    for(int i = 0; i < arInterest.length; i++) {
//       if(i==0) out.println(arInterest[i]);
//    }
       for(String area: arInterest){
    	   out.println(area+"<br>");
       }
%>
<input type=button id=btnLogin value='로그인가기'>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.ready(function(){
	setTimeout(function(){
		document.location='login.jsp';
	},3000)
});
</script>
</html>