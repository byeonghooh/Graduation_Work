<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<style>
	@import url('https://fonts.googleapis.com/css?family=Roboto');
	
	/*body*/
	body {
		margin: 0;
		padding: 0;
		font-family: "Roboto", serif;
		display: flex;
		flex-flow: column nowrap;
		justify-content: center;
		align-items: center;
		overflow-x: hidden;
	}
	
	h1 {
		display : block;
		margin: 2em 0 1.5em 0;
	}
	
	nav {
		width: 100%;
		display: flex;
		position : relative;
		justify-content: center;
		background: #004d7a;
		z-index : 99;
	}
	
	ul, li {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	#main-menu>li {
		float: left;
		position: relative;
	}
	
	#main-menu>li>a {
		font-size: 0.85rem;
		color: rgba(255, 255, 255, 0.85);
		text-align: center;
		text-decoration: none;
		letter-spacing: 0.05em;
		display: block;
		padding: 14px 36px;
		border-right: 1px solid rgba(0, 0, 0, 0.15);
		text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
	}
	
	#main-menu>li:nth-child(1)>a {
		border-left: 1px solid rgba(0, 0, 0, 0.15);
	}
	
	#sub-menu {
		position: absolute;
		background: #182952;
		opacity: 0;
		visibility: hidden;
		transition: all 0.15s ease-in;
	}
	
	#sub-menu>li {
		padding: 16px 28px;
		border-bottom: 1px solid rgba(0, 0, 0, 0.15);
	}
	
	#sub-menu>li>a {
		color: rgba(255, 255, 255, 0.6);
		text-decoration: none;
	}
	
	#main-menu>li:hover #sub-menu {
		opacity: 1;
		visibility: visible;
	}
	
	#sub-menu>li>a:hover {
		text-decoration: underline;
	}
	
	section {
		column-width: 15em;
		background: #dadadf;
		padding: 2em 12em;
	}
</style>

<title>베베맘마</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>

	<h1>
		<img width="28" height="28" style="margin-right: 7px;"
			src="../img/baby.png">BEBEMAMMA<img width="28" height="28" style="margin-left: 7px;"
			src="../img/baby2.png">
	</h1>
	<nav role="navigation">
		<ul id="main-menu">
			<li><a href="#">서비스안내</a></li>
			<li><a href="#">우리 아기 이유식</a>
				<ul id="sub-menu">
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
				</ul></li>
			<li><a href="../milkrec/rec.jsp">유아식품,분유</a>
				<ul id="sub-menu">
					<li><a href="../milkrec/rec.jsp" aria-label="분유 추천">submenu</a></li>
					<li><a href="../milkrec/search.jsp" aria-label="분유 검색">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
				</ul></li>
			<li><a href="../mypage/mypage.jsp">마이 페이지</a>
			<li><a href="../qna/qna.jsp">베베맘마 톡톡</a></li>
		</ul>
	</nav>

</body>

</html>