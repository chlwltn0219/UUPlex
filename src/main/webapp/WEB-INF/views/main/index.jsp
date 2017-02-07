<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>      
<html>
<head>
<!-- 방법1. content="1 ==> 1초후 url로 이동 -->
<!-- <meta http-equiv="refresh" content="1; url=/uuplex/main"> -->

<!-- 방법2. -->
<script type="text/javascript">
	setTimeout(function() {
		window.location="/uuplex/main";
	}, 4000);
</script>

<title>★여기는 첫 페이지★</title>
</head>
<body>
	<h1>잠시후 이동합니다....</h1>
</body>
</html>
