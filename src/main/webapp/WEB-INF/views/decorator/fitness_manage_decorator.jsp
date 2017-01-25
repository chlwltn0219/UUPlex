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
		<div class="row">
			<div class="col-sm-2 sidemenu">
				메뉴 부분입니다.
			</div>
			<div class="col-sm-10">
				<sitemesh:write property="body" />
			</div>
		</div>
	</div>
</body>