<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	if(request.getParameter("userid").equals("qhrms") && 
	   request.getParameter("passcode").equals("human123")){
		request.setAttribute("userid","qhrms");
		request.setAttribute("passcode","human123");
		RequestDispatcher rd=request.getRequestDispatcher("home.jsp"); //no querystring allowed
		rd.forward(request,response);
	}else{
		RequestDispatcher rd=request.getRequestDispatcher("signon.jsp"); //register로 이동
		rd.forward(request,response);
	}
%>
<%--Comment 자바 코드 종료--%>
<%--다시 HTML Tag 시작--%>
<script>
</script>