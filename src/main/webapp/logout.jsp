<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page session = "true" %>
<%
// session.removeAttribute("userid");
// session.removeAttribute("passcode");
// request.removeAttribute("userid");
   session.invalidate(); //'모든' session attributes를 삭제(제거)
//    Cookie c = new Cookie("id",null); //쿠키 만들기
//    c.setMaxAge(0);   //쿠키의 수명 지정 365일 24번 60번 60초 =24시간
//    response.addCookie(c); //클라이언트에 쿠키화일 생성(화일로 쓰기)
   
//    Cookie c1 = new Cookie("passcode",null); //쿠키 만들기
//    c.setMaxAge(0);   //쿠키의 수명 지정 365일 24번 60번 60초 =24시간
//    response.addCookie(c1); //클라이언트에 쿠키화일 생성.(화일로 쓰기)
   
   response.sendRedirect("home.jsp");
%>