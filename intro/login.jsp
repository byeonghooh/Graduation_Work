<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="./login.css" rel="stylesheet" type="text/css">
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../include/header.jsp"%>

  <form method="post" id="LoginForm" action="login_action.jsp">
      <div>
        <input type="text" id="loginId" name="loginId" placeholder="username">
        <input type="password" id="loginPw" name="loginPw" placeholder="password">
      </div>
      <button type="submit">로그인</button>
    <div id="signup">
      <p>Not registered?<a href="./signup.jsp">Create an account</a></p>
    </div>
  </form>
<%@include file="../include/footer.jsp"%>
</body>
</html>