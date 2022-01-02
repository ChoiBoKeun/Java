<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session = "true" %>
<% 
String userid=(String)session.getAttribute("userid");
String passcode=(String)session.getAttribute("passcode");
String jspfile=null;
if(request.getParameter("userid").equals(userid)&&
   request.getParameter("passcode").equals(passcode)){
// 	Cookie c=new Cookie("id",userid);
// 	c.setMaxAge(365*24*60*60);
// 	response.addCookie(c);
session.setAttribute("userid",userid);
session.setAttribute("passcode",passcode);
// 	request.getRequestDispatcher("home.jsp").forward(request,response);
	jspfile="home.jsp";
}else {
//     request.getRequestDispatcher("login.jsp").forward(request,response);
    jspfile="login.jsp";
 }//
%>
<jsp:forward page="<%=jspfile %>" />	