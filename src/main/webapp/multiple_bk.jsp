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
String[] arItem = request.getParameterValues("item");
String outstr="";
if(arItem==null) {
   outstr+="선택된게 없습니다.";
}else {
   outstr+="선택결과<br>";
   for(int i=0; i<arItem.length; i++) {
      outstr+=arItem[i]+"<br>";
   }
}
out.println(outstr);
	%>
</body>
</html>