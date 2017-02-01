<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
<title>상영스케줄 추가처리</title>
=======
<title>상영일정추가처리</title>
>>>>>>> 21259d5f70f2eb2a6c237d9f6350557c4e495678
</head>
<body>
	
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
<<<<<<< HEAD
			alert("상영스케줄 추가에 실패했습니다. 잠시후 다시 시도해주세요");
=======
			alert("상영일정추가에 실패했습니다. 잠시후 다시 시도해주세요");
>>>>>>> 21259d5f70f2eb2a6c237d9f6350557c4e495678
		</script>
	
	</c:if>
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
<<<<<<< HEAD
			alert("상영스케줄이 추가되었습니다.");
			window.location='/uuplex/c-box/manage/manage_schedule';
=======
			alert("상영일정이 추가되었습니다.");
			window.location='/uuplex/c-box/manage_schedule';
>>>>>>> 21259d5f70f2eb2a6c237d9f6350557c4e495678
		</script>
	
	</c:if>
</body>
</html>