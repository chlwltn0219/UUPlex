<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<html>
<head>
<!-- 방법1. content="1 ==> 1초후 url로 이동 -->
<!-- <meta http-equiv="refresh" content="1; url=/uuplex/main"> -->

<!-- 방법2. -->
<script type="text/javascript">
	setTimeout(function() {
		window.location="/uuplex/main";
	}, 1000);
</script>

<style>
	h1 {
		margin:100px;
	}
</style>

</head>
<body>
	<h1 align="center">환영합니다. UUPLEX 입니다.</h1>
</body>
</html>
