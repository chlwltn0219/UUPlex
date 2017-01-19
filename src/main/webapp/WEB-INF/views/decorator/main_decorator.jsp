<!-- 공통으로 필요한 라이브러리나 파일들은 Sitemesh 데코레이터에서 포함시키는 것이 좋습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
	<!-- JSP에 포함된 title 태그의 내용을 이곳에 넣습니다. -->
	<title><sitemesh:write property="title" /></title>
	<!-- 부트스트랩 -->
	<link href="${resources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
	<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<!-- JSP에 포함된 head 태그의 내용을 이곳에 넣습니다. -->
	<sitemesh:write property="head" />
	
	<style type="text/css">
		div.top {
/* 			height: 30px; */
		}
	</style>
	
</head>
<body>
	
	<!-- Menu Start -->
	<header>
		<nav class="navbar navbar-default navbar-fixed-tip">
			<div class="container-fluid">
				<!-- 모바일 디스플레이에서 메뉴가 collapse 버전으로 적용 됩니다. -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" 
							data-toggle="collapse" data-target="#top-navbar">
						<!-- .sr-only : 콘텐츠 숨기기 -->
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Brand</a>
				</div>
				
				<!-- 메뉴 목록 -->
				<div class="collapse navbar-collapse" id="top-navbar">
					<!-- 일반 메뉴 좌측에서 부터 정렬-->
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">메뉴1</a></li>
						<li><a href="#">메뉴2</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" 
								data-toggle="dropdown" role="button" aria-expanded="false"> 
								드롭다운 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">드롭다운메뉴1</a></li>
								<li><a href="#">드롭다운메뉴2</a></li>
								<li class="divider"></li>
								<li><a href="#">드롭다운메뉴3</a></li>
								<li class="divider"></li>
								<li><a href="#">드롭다운메뉴4</a></li>
							</ul>
						</li>
					</ul>
					<!-- 우측 메뉴 목록 -->
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${empty userid}">
							<li><a href="#">로그인</a></li>
						</c:if>
						
						<c:if test="${not empty userid}">
							<li><a href="#">마이페이지</a></li>
							<li><a href="#">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- Menu End -->
	
<!-- 	<div class="top"></div> -->
	
	<!-- Section Start -->
<!-- 	<div class="container"> -->
		<section>
			<!-- JSP에 포함된 body 태그의 내용을 이곳에 넣습니다. -->
			<sitemesh:write property="body" />
		</section>
<!-- 	</div> -->
	<!-- Section End -->
	
	<!-- Footer Start -->
	<footer>
	</footer>
	<!-- Footer End -->
	
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="${resources}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>