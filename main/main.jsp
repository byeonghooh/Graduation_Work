<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
    <link href="main.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<!--<%=session.getAttribute("id") %>님 안녕하세요.  -->
	
	<div class="wrap">
        <div class="container">

          <div class="main_intro">
            <h2 class="in_logo">
              <span class="blind">bebemamma</span>
            </h2>
            <div class="in_main" style="text-align: center;">
              <p class="f_text">
                	아이를 위한 엄마의 음식, 베베 맘마<br>
              </p>
            </div>

          </div>
          
          <div class="info_feature_1">
            <div class="inner">
              <p class="category">
                	유아식 추천
              </p>
              <em class="sub_title">
               	 오늘은 어떤 것을 먹일까?
              </em>
              <p class="detail">
                	다양한 유아식들을 추천!
              </p>

            </div>
          </div>

          <div class="info_feature_2">
            <div class="inner">
              <p class="category">
                가족력 분석
              </p>
              <em class="sub_title">
                가족력 분석을 통한 아이의 건강 체크
              </em>
              <p class="detail">
                다양한 알레르기 음식 기피 가능!
              </p>
            </div>
          </div>

          <div class="info_feature_3">
            <div class="inner">
              <p class="category">
                분유 추천
              </p>
              <em class="sub_title">
                우리아기 어떤 분유가 좋을까?
              </em>
              <p class="detail">
                유기농? 영양분? 알레르기?
                <br>
                내 마음에 맞게 분유 추천!
              </p>
            </div>
          </div>

          <div class="info_feature_4">
            <div class="inner">
              <p class="category">
                유아식 영양소 분석!
              </p>
              <em class="sub_title">
                우리 아기에게 부족하게 먹이지는 않을까?
              </em>
              <p class="detail">
                우리 아기가 먹은 것부터<br>
                필요한 영양소까지 한번에!
              </p>
            </div>
          </div>

          <!-- Footer -->
          <div class="footer">
            <div class="footer_inner">
                 <%@include file="../include/footer.jsp"%>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>