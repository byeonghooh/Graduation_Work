<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>사용자 맞춤형 식품 공유 플랫폼, 베베맘마</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="./mypage.css" rel="stylesheet" type="text/css">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="../css/animate.css">

<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">

<link rel="stylesheet" href="../css/aos.css">

<link rel="stylesheet" href="../css/ionicons.min.css">

<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../css/jquery.timepicker.css">


<link rel="stylesheet" href="../css/flaticon.css">
<link rel="stylesheet" href="../css/icomoon.css">
<link rel="stylesheet" href="../css/style.css">
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

<body class="goto-here">
	<div class="py-1 bg-primary">
		<div class="container">
			<div
				class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex">
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div
								class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-paper-plane"></span>
							</div>
							<% if((String)session.getAttribute("id") == null){ %>
							<span class="text">로그인 되어있지 않음</span>
							<% }else{ %>
							<span class="text"><%=(String)session.getAttribute("id")%>님 안녕하세요.</span>
							<% } %>
						</div>
						<div
							class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
							<span class="text">당신의 아이를 위한 식품정보 제공 &amp; 추천</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">베베맘마</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<% if((String)session.getAttribute("id") == null){ %>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.html"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">소개</a></li>
					<li class="nav-item"><button href="./login.jsp" class="nav-link">로그인</button></li>

				</ul>
			</div>
			<% }else{ %>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.html"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">소개</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown04"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">우리아이 이유식</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="shop.html">1</a> <a
								class="dropdown-item" href="wishlist.html">2</a> <a
								class="dropdown-item" href="product-single.html">3</a> <a
								class="dropdown-item" href="cart.html">4</a> <a
								class="dropdown-item" href="checkout.html">5</a>
						</div></li>

					<li class="nav-item"><a href="blog.html" class="nav-link">베베맘마 톡톡</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">마이페이지</a></li>
					<li class="nav-item"><button href="./login.jsp" class="nav-link">로그아웃</button></li>

				</ul>
			</div>
			<% } %>


		</div>
	</nav>
	<!-- END nav -->


	<form id ="mypageForm" name ="regFrm" action="signup_action.jsp" method="post">
    <fieldset>

      <h3 id="signup">마이페이지</h3>
      <p>아이디 : <input class="tx" type="text" name="id" readonly/>&nbsp&nbsp&nbsp</p>

      <p>비밀번호 : <input class="tx" type="password" name="pwd" placeholder="비밀번호"/></p>
      <p>비밀번호 확인 : <input class="tx" type="password" name="repwd" placeholder="비밀번호 확인" /></p>
      <p>회원이름 : <input class="tx" type="text" name="mem_name" /></p>

      <p> 회원의 성별은? <br>
        <input class="rd" type="radio" name="mem_gender" value="M" checked="checked" />&nbsp남자
        <input class="rd" type="radio" name="mem_gender" value="W" />&nbsp여자
      </p>

      <p>아이이름 : <input class="tx" type="text" name="baby_name" placeholder="아이 이름 입력" /></p>

      <p> 아이의 성별은? <br>
        <input class="rd" type="radio" name="baby_gender" value="M" checked="checked" />&nbsp남자
        <input class="rd" type="radio" name="baby_gender" value="W" />&nbsp여자
      </p>

      <p>현재 아이의 연령대는? <input class="tx" type="text" name="age" />&nbsp(개월)
      </p>

      <p>현재 아이의 키, 몸무게를 입력해주세요. (카우프 지수 측정용)<br>
        <input class="tx"type="text" name="height" />&nbspcm
      <input class="tx" type="text" name="weight" />&nbspkg</p>

      <p>아이의 아토피 유무를 체크해주세요.<br>
        <input class="rd" type="radio" name="skin" value=0 checked="checked" />&nbsp무
        <input class="rd" type="radio" name="skin" value=1 />&nbsp유
      </p>

      <p>아이가 가지고 있는 알레르기에 대해 체크해주세요.<br>
        <input class="ch" type="checkbox" name="allergy" value="땅콩" />&nbsp땅콩
        <input class="ch" type="checkbox" name="allergy" value="계란" />&nbsp계란
        <input class="ch" type="checkbox" name="allergy" value="복숭아" />&nbsp복숭아
        <input class="ch" type="checkbox" name="allergy" value="갑각류" />&nbsp갑각류
        <input class="ch" type="checkbox" name="allergy" value="우유" />&nbsp우유
       	<input class="ch" type="checkbox"/>&nbsp기타&nbsp <input class="tx" type="text" name="allergy" placeholder="알레르기를 입력해주세요." />
      </p>

      <p><button onclick="inputcheck()"/>수정하기</p>
    </fieldset>
  </form>






	<footer class="ftco-footer ftco-section">
		<div class="container">

			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="../js/jquery.min.js"></script>
	<script src="../js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/jquery.stellar.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/aos.js"></script>
	<script src="../js/jquery.animateNumber.min.js"></script>
	<script src="../js/bootstrap-datepicker.js"></script>
	<script src="../js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../js/google-map.js"></script>
	<script src="../js/main.js"></script>

</body>
</html> 