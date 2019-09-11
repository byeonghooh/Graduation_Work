<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="bebemamma.MemberMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	boolean result = mMgr.checkId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<br/><b><%=id%></b>
	<%
		if(result){
			out.println("는 이미 존재하는 ID입니다.<p/>");
		} else {
			out.println("는 사용가능한 ID입니다.<p/>");
		}
	%>
	<a href="#" onClick="self.close()">닫기</a>
	</div>

</body>
</html>