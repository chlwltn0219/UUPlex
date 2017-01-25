<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../../setting.jsp" %>


<html lang="ko">
<head>
	
	<script src="/uuplex/resources/main_script/inputform.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<<<<<<< HEAD
=======
	<script src="/uuplex/resources/admin_ajax/request.js"></script> 
	<script src="/uuplex/resources/admin_ajax/password.js"></script> 
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
	
</head>
<body>

<h2>회원가입</h2> <br><br>

<form action="inputPro" name="inputform" class="form-horizontal" method="post" onsubmit="return inputCheck()">

  <input type="hidden" name="hiddenId" value="0">

  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">아이디</label> 
    <div class="col-sm-6">
      <input type="text" name="memId" class="form-control" id="memId" placeholder="아이디를 입력하세요">
      <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal" onclick="confirmId()">중복확인</button>
    </div>
  </div>	
  
  
	<%-- <%@ include file="../main/confirmId.jsp" %> --%>

	
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-6">
<<<<<<< HEAD
      <input type="password" name="passwd" class="form-control" id="inputPassword3" placeholder="비밀번호를 입력하세요">
=======
      <input type="password" name="passwd" class="form-control" id="inputPassword3" maxlength="16" placeholder="문자 숫자 특수문자 조합하여 16자리까지 입력">
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
    <div class="col-sm-6">
<<<<<<< HEAD
      <input type="password" name="passwdChk" class="form-control" id="inputPassword3" placeholder="비밀번호를 확인하세요">
    </div>
  </div>
=======
      <input type="password" name="passwdChk" class="form-control" id="inputPassword3" maxlength="16" placeholder="비밀번호를 확인하세요" onkeyup="pwdChk()">
    </div>
  </div>
  <div class="form-group">
  	<label for="inputPassword3" class="col-sm-2 control-label"></label>
  	<div class="col-sm-6">
  		<div id="result"></div>
  	</div>
  </div>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">이름</label>
    <div class="col-sm-6">
      <input type="text" name="name" class="form-control" id="inputPassword3" placeholder="이름을 입력하세요">
    </div>
  </div>	
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">주민등록번호</label>
    <div class="col-sm-2">
      <input type="text" name="jumin1" class="form-control" id="inputEmail3" maxlength="6" onkeyup="jumin()">
    </div>
    <div class="col-sm-2">  
      <input type="text" name="jumin2" class="form-control" id="inputEmail3" maxlength="7" onkeyup="getAge()">
    </div>
  </div>
 
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">나이</label>
    <div class="col-sm-1">
      <input type="text" name="age" class="form-control" id="inputPassword3" value="" readonly>
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">성별</label>
    <div class="col-sm-2">
      <input type="text" name="gender" class="form-control" id="inputPassword3" value="" readonly>
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">주소</label>
    <div class="col-sm-6">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
    	<input type="text" id="sample4_postcode" placeholder="우편번호"> <br>
		<input type="text" name="roadAddress" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
		<input type="text" name="jibunAddress" class="form-control" id="sample4_jibunAddress" placeholder="지번주소"> <br>  
	</div>
  </div>				

  <div class="row">
    <label for="inputEmail3" class="col-sm-2 control-label">Tel</label>
    <div class="col-sm-2">
      <input type="text" name="tel1" class="form-control" id="inputEmail3" maxlength="3" onkeyup="tel_1()">
    </div>
    <div class="col-sm-2">  
      <input type="text" name="tel2" class="form-control" id="inputEmail3" maxlength="4" onkeyup="tel_2()">
    </div>
    <div class="col-sm-2">  
      <input type="text" name="tel3" class="form-control" id="inputEmail3" maxlength="4"> <br>
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-6">
      <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="@를 포함 이메일 형식으로 작성하세요">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Confirm
        </label>
      </div>
    </div>
  </div>
  <div class="form-group" align="center">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">회원가입</button>
      <button type="reset" class="btn btn-default">가입취소</button> <br><br>
    </div>
  </div>
</form>


</body>
</html>