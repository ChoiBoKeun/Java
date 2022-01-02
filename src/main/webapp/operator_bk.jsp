<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연산결과</title>
</head>
<body>
<%
String val1=request.getParameter("value1");
String val2=request.getParameter("value2");
String operator=request.getParameter("operator");
if(val1==null || val2==null || operator==null) {
	 return;
}
Double v1=Double.parseDouble(val1);
Double v2=Double.parseDouble(val2);
int result=0;
if(operator.equals("+")) { //부모파일에서 쓴 값들을 가져와서 사용 가능 test
	 result+=v1+v2;
} else if(operator.equals("-")) {
	 result+=v1-v2;
} else if(operator.equals("*")) {
	 result+=v1*v2;
} else if(operator.equals("/")) {
	 result+=v1/v2;
} else return;
//out.println("value1:"+val1+"<br>"+"value2:"+val2+"<br>"+"operator:"+operator+"<br>"+"result:"+result);
%>
value1:<%=val1 %><br>
value2:<%=val2 %><br>
operator:<%=operator %><br>
Result:<%=result %>
</body>
</html>