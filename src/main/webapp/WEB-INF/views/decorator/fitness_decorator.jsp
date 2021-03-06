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
	<sitemesh:write property="head" />
	<title><sitemesh:write property="title"/></title>
	<style type="text/css">
		.affix {
			top: 0;
			width: 100%;
       		z-index: 999;
		}
		.btnTop {
			position: fixed;
			bottom: 60px;
			right: 50px;
			z-index: 100;
/* 			float:right; */
/* 			background-color:white; */
		}
		
		.dropup {
			position: fixed;
			bottom: 60px;
			right: 140px;
			z-index: 100;
/* 			float:right; */
/* 			background-color:white; */
		}
		
		.btnTop img, .dropup img{
			border: 1.5px dashed black;
			width:70px;
			height:70px;
		}
		
	</style>
</head>
<body>
	<!-- Fitness NAVBAR ================================================== -->
	<nav class="navbar navbar-inverse fitmenu" data-spy="affix" data-offset-top="50">
		<div class="navbar-header">
			<!-- 모바일 메뉴 버튼 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar"
				aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<!-- 타이틀 메인 -->
			<a class="navbar-brand" href="/uuplex/fitness">UU-FITS</a>
		</div>
	
		<div id="navbar" class="navbar-collapse collapse">
<!-- 			일반 메뉴 -->
			<ul class="nav navbar-nav">
				<li><a href="/uuplex/fitness/user/program">프로그램 안내</a></li>
				<li><a href="/uuplex/fitness/user/teacher">강사 안내</a></li>
				<li><a href="/uuplex/fitness/user/reserve">수강 신청</a></li>
				<li><a href="/uuplex/fitness/user/statement">수강 내역/환불</a></li>
<!-- 				관리자 메뉴 -->
				<c:if test="${sessionScope.idCode == 101}">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 관리자 페이지 <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/uuplex/fitness/manage/sports/list">종목 관리</a></li>
						<li><a href="/uuplex/fitness/manage/teacher/list">강사 관리</a></li>
						<li><a href="/uuplex/fitness/manage/program/list">프로그램 관리</a></li>
						<li><a href="/uuplex/fitness/manage/classroom/list">강의실 관리</a></li>
						<li><a href="/uuplex/fitness/manage/class/list">시간표 관리</a></li>
						<li><a href="/uuplex/fitness/manage/statement/list">명세 내역</a></li>
					</ul>
				</li>
				</c:if>
			</ul>
		</div>
	</nav>
	
	<div class="top"></div>

	<sitemesh:write property="body" />
	
	<div class="btnTop">
		<a href="#top"><img class="img-circle" src="${resources}/fitness/img/top.png" alt="top"></a>
	</div>	
	
	<!-- 관리자 메뉴 -->
	
	<c:if test="${sessionScope.idCode == 101}">
	<div class="dropup">
	  <a class="dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">
	    <img class="img-circle" src="${resources}/fitness/img/manage.png" alt="manage">
	  </a>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
	    <li><a href="/uuplex/fitness/manage/sports/list">종목 관리</a></li>
	    <li><a href="/uuplex/fitness/manage/teacher/list">강사 관리</a></li>
	    <li><a href="/uuplex/fitness/manage/classroom/list">강의실 관리</a></li>
	    <li><a href="/uuplex/fitness/manage/program/list">프로그램 관리</a></li>
	    <li><a href="/uuplex/fitness/manage/class/list">시간표 관리</a></li>
	    <li><a href="/uuplex/fitness/manage/statement/list">명세 내역</a></li>
	  </ul>
	</div>
	</c:if>
	
</body>