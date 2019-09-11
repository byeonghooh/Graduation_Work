<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- reactive web concerning code -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
<!-- <link href="main.css" rel="stylesheet" type="text/css" /> -->

<!-- bootstrap CSS 추가 -->
<link rel="stylesheet" href ="../css/bootstrap.min.css">

<!-- custom css 추가 -->
<link rel="stylesheet" href ="../css/custom.css">



<title>Insert title here</title>
</head>



<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp"> 우리 아기 이유식 리스트 </a>
		<button class = "navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
			<span class="navbar-toggler-icon"></span>	
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class = "navbar-nav mr-auto">
				<li class = "nav-item active">
					<a class="nav-link" href="index.jsp">메인 </a>
				</li>
				<li class = "nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
						회원관리
					</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="#">로그인</a>
						<a class="dropdown-item" href="window.scrollTo(0,0);">회원가입</a>
						<a class="dropdown-item" href="#">로그아웃</a>
					</div>
				</li>	
			</ul>
			<form class = "form-inline my-2 my-lg-0">
				<input class = "form-control mr-sm-2 type="search" placeholder="내용을 입력하세요." aria-label="Search">
				<button class ="btn btn-outline-success my-2 my-sm-0" type ="submit">검색</button>
			</form>
		</div>
	</nav>
	

	<section classs="container">
		<form method = "get" action="./index.jsp" class="form-inline mt-3">
			<select name="lectureDivide" class = "form-control mx-1 mt-2">
				<option value= "전체"> 전체  </option>	
				<option value= "초기"> 초기(0~6개월) </option>
				<option value= "중기"> 중기(7~12개월) </option>		
				<option value= "후기"> 후기(13~24개월) </option>
			</select>
			<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요">
			<button type ="submit" class="btn btn-primary mx-1 mt-2">검색</button>
			<a class = "btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</class>
			<a class = "btn btn-primary mx-1 mt-2" data-toggle="modal" href="#reportModal">등록하기</class>
		</form>
		
	
	</section>
	
	
	<!-- jquery javascript 추가  -->
	<script src = "../js/jquery.min.js"></script>
    <!-- popper javascript 추가  -->
	<script src = "../js/popper.js"></script>
    <!-- bootstrap javascript 추가  -->
	<script src = "../js/bootstrap.min.js"></script>
	
	
	
</body>
</html>