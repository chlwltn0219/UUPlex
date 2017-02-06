<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

<html>
<head>

<style>

	.jb-cell {
		background-color:#f9f9f9;
		width: 888px;
  		margin: 5px;
  		padding: 100px 50px;
  		border: 3px solid #cccccc;
	}
	
</style>


<!-- <script type="text/javascript" src="/uuplex/resources/js/jquery-1.12.4.js"></script>

<script type="text/javascript">
	function login() {
		
		var id = document.loginForm.memId.value;
		var passwd = document.loginForm.passwd.value;
		
		window.location='loginPro?memId=' + id + '&passwd=' + passwd;
		
	}

</script> -->

</head>
<body>

<div class="jb-cell">

<form action="/uuplex/loginPro" name="loginForm" class="form-horizontal" method="post">

<%-- <c:if test="${cnt != 1}">
	<script type="text/javascript">
		alert("로그인오류");
		window.location.reload();
	</script>
</c:if> --%>

		<c:if test="${cnt == -1}">
			<script type="text/javascript">
				alert("비밀번호가 다릅니다. 다시 확인하세요!");
				history.back();
			</script>
		</c:if>
		
		<c:if test="${cnt == 0}">
			<script type="text/javascript">
				alert("등록된 아이디가 아닙니다. 다시 확인하세요!");
				history.back();
			</script>
		</c:if>
	
	<div class="form-group">
    	<label for="inputEmail3" class="col-sm-5 control-label"></label> 
    	<div class="col-sm-4">
    	<h1> 로그인 </h1>
    	</div>
  	</div>	
	
	
	<div class="form-group">
    	<label for="inputEmail3" class="col-sm-4 control-label">아이디</label> 
    	<div class="col-sm-4">
      		<input type="text" name="memId" class="form-control" id="memId" placeholder="아이디를 입력하세요" style="font-family:'함초롱바탕'">
    	</div>
  	</div>	
  
 	<div class="form-group">
    	<label for="inputPassword3" class="col-sm-4 control-label">비밀번호</label>
    	<div class="col-sm-4">
      		<input type="password" name="passwd" class="form-control" id="inputPassword3" maxlength="16" placeholder="비밀번호를 입력하세요" style="font-family:'함초롱바탕'">
    	</div>
  	</div>
  
  	<div class="form-group" align="left">
  		<label for="inputPassword3" class="col-sm-4 control-label"></label>
    	<div class="col-sm-4">
      		<button type="submit" class="btn btn-default">Login</button>
      		<input type="button" class="btn btn-default" value="취소" onclick="window.location.reload()">
      		<input type="button" class="btn btn-default" value="회원가입" onclick="window.location='input'">
    	</div>
  	</div>
  	
   
</form>
</div>
</body>
</html>