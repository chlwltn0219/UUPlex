<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="/uuplex/resources/rating.css">    
<title>별점</title>


</head>
<body>
<span class="star-input">
	<span class="input">
    	<input type="radio" name="star-input" value="1" id="p1">
    	<label for="p1">괜히봤어요</label>
    	<input type="radio" name="star-input" value="2" id="p2">
    	<label for="p2">기대하진 말아요</label>
    	<input type="radio" name="star-input" value="3" id="p3">
    	<label for="p3">무난했어요</label>
    	<input type="radio" name="star-input" value="4" id="p4">
    	<label for="p4">기대해도 좋아요!</label>
    	<input type="radio" name="star-input" value="5" id="p5">
    	<label for="p5">정말 멋진 영화였어요!</label>
  	</span>
  	<output for="star-input"><b>평점을 입력해주세요</b></output>						
</span>
<script src="/uuplex/resources/jquery-1.11.3.min.js"></script>
<script src="/uuplex/resources/star.js"></script>
</body>
</html>