<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

<html>
<head>

</head>
<body>

<h1> 로그인 </h1>

<form action="loginPro" name="loginForm" class="form-horizontal" method="post">


<div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">아이디</label> 
    <div class="col-sm-6">
      <input type="text" name="memId" class="form-control" id="memId" placeholder="아이디를 입력하세요">
    </div>
  </div>	
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-6">
      <input type="password" name="passwd" class="form-control" id="inputPassword3" placeholder="비밀번호를 입력하세요">
    </div>
  </div>
  
  <div class="form-group" align="left">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Login</button>
      <button type="reset" class="btn btn-default">취소</button> <br><br>
    </div>
  </div>
</form>
</body>
</html>