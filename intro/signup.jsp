<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="./signup.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="./script.js"></script>
<script type="text/javascript">
	function idCheck(id){
		frm = document.regForm;
		if(id == ""){
			alert("아이디를 입력해 주세요.");
			frm.id.focus();
			return ;
		}
		url = "idCheck.jsp?id=" + id;
		window
		.open(url, "IDCHECK", "width=300,height=150");
	}
</script>
</head>
<body onLoad="regFrm.id.focus()">
<%@include file="../include/header.jsp"%>
<form name = "regFrm" action="signup_action.jsp" method="post">
    <fieldset>

      <h1 id="signup">회원가입</h1>
      <p>아이디 : <input class="tx" type="text" name="id" placeholder="아이디 입력" /></p>
      <input type="button" value="ID중복확인" onClick="idCheck(this.form.id.value)">
      <p>비밀번호 : <input class="tx" type="password" name="pwd" placeholder="비밀번호 입력" /></p>
      <p>비밀번호 확인 : <input class="tx" type="password" name="repwd" placeholder="비밀번호 확인" /></p>
      <p>회원이름 : <input class="tx" type="text" name="mem_name" placeholder="본인 이름 입력" /></p>

      <p> 회원의 성별은? <br>
        <input class="rd" type="radio" name="mem_gender" value="M" checked="checked" />남자
        <input class="rd" type="radio" name="mem_gender" value="W" />여자
      </p>
      
      <p>아이이름 : <input class="tx" type="text" name="baby_name" placeholder="아이 이름 입력" /></p>
     
      <p> 아이의 성별은? <br>
        <input class="rd" type="radio" name="baby_gender" value="M" checked="checked" />남자
        <input class="rd" type="radio" name="baby_gender" value="W" />여자
      </p>
      
      <p>현재 아이의 연령대는? <input class="tx" type="text" name="age" placeholder="나이 입력" />(개월)
      </p>

      <p>현재 아이의 키, 몸무게를 입력해주세요. (카우프 지수 측정용)<br>
        <input class="tx"type="text" name="height" placeholder="키 입력" />cm
      <input class="tx" type="text" name="weight" placeholder="몸무게 입력" />kg</p>

      <p>아이의 아토피 유무를 체크해주세요.<br>
        <input class="rd" type="radio" name="skin" value=0 checked="checked" />무
        <input class="rd" type="radio" name="skin" value=1 />유
      </p>

      <p>아이가 가지고 있는 알레르기에 대해 체크해주세요.<br>
        <input class="ch" type="checkbox" name="allergy" value="땅콩" />땅콩
        <input class="ch" type="checkbox" name="allergy" value="계란" />계란
        <input class="ch" type="checkbox" name="allergy" value="복숭아" />복숭아
        <input class="ch" type="checkbox" name="allergy" value="갑각류" />갑각류
        <input class="ch" type="checkbox" name="allergy" value="우유" />우유 
       	<input class="ch" type="checkbox"/>기타 <input class="tx" type="text" name="allergy" placeholder="알레르기를 입력해주세요." />
      </p>

      <p><button onclick="inputcheck()"/>완료!</p>
    </fieldset>
  </form>
</body>
</html>