<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>500 에러 발생</title>
</head>
<body>

	<h1>[error500페이지]</h1>
	<h2>요청 처리 과정에서 에러가 발생하였습니다.<br>
		빠른 시간내에 문제를 해결하도록 하겠습니다.<p></h2>
		
	에러 타입 : <%= exception.getClass().getName() %>
	에러 메시지 : <%= exception.getMessage() %>
			
</body>
</html>