<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>

<%
if(session != null) session.invalidate();
response.sendRedirect("./intro.jsp");
%>


<%
 
// 1: 기존의 세션 데이터를 모두 삭제
    session.invalidate();
  // 2: 로그인 페이지로 이동시킴. 
    response.sendRedirect("./intro.jsp"); 
    
%>