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
      		z-index: 100;
		}
		
		* {
/* 			border: 1px solid red; */
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="hidden-xs inner-menu">
			<ul class="nav nav-tabs">
				<li><a href="/uuplex/fitness/manage/sports/list">종목 관리</a></li>
				<li><a href="/uuplex/fitness/manage/teacher/list">강사 관리</a></li>
				<li><a href="/uuplex/fitness/manage/classroom/list">강의실 관리</a></li>
				<li><a>프로그램 관리</a></li>
				<li><a>시간표 관리</a></li>
				<li><a>명세 내역</a></li>
			</ul>
		</div>
			
		<sitemesh:write property="body" />
	</div>
	
</body>