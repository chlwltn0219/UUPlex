<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

	<script src="/uuplex/resources/main_script/inputform.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="/uuplex/resources/admin_ajax/request.js"></script> 
	<script src="/uuplex/resources/admin_ajax/password.js"></script> 

	<style>
		#aa {
			width:850px;
			height:500px;
			border:0;
		}
		
		.jb-cell {
			align:center;
			width: 900px;
	  		margin: 50px 100px 50px 100px;
	  		padding: 30px 0px 0px 30px;
	  		border: 3px solid #cccccc;
		}
		
		h2 {
			margin: 0 0 0 10px;
		}
		
	</style>
	
</head>
<body>


<div class="container">

<div class="jb-cell">
 
	 <form action="memModifyPro" name="inputform" class="form-horizontal" method="post" onsubmit="return modifyCheck()">
	
	<h2>개인정보 수정</h2><br><br>
	
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">아이디</label> 
	    <div class="col-sm-3">
	      <input type="text" name="memId" class="form-control" id="memId" value="${dto.memId}" readonly>
	    </div>
	  </div>	
	  
	  
		<%-- <%@ include file="../main/confirmId.jsp" %> --%>
	
		
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
	    <div class="col-sm-6">
	      <input type="password" name="passwd" class="form-control" id="inputPassword3" maxlength="16" placeholder="문자 숫자 특수문자 조합하여 16자리까지 입력" style="font-family:'함초롱바탕'">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
	    <div class="col-sm-6">
	      <input type="password" name="passwdChk" class="form-control" id="inputPassword3" maxlength="16" placeholder="비밀번호를 확인하세요" style="font-family:'함초롱바탕'" onkeyup="pwdChk()">
	    </div>
	  </div>
	  <div class="form-group">
	  	<label for="inputPassword3" class="col-sm-2 control-label"></label>
	  	<div class="col-sm-8">
	  		<div id="result"></div>
	  	</div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">이름</label>
	    <div class="col-sm-3">
	      <input type="text" name="name" class="form-control" value="${dto.name}">
	    </div>
	  </div>	
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">주민등록번호</label>
	    <div class="col-sm-2">
	      <input type="text" name="jumin1" class="form-control" value="${dto.jumin1}" readonly>
	    </div>
	    <div class="col-sm-2">  
	      <input type="text" name="jumin2" class="form-control" value="${dto.jumin2}" readonly>
	    </div>
	  </div>
	 
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">나이</label>
	    <div class="col-sm-2">
	      <input type="text" name="age" class="form-control" value="${dto.age}" readonly>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">성별</label>
	    <div class="col-sm-2">
	      <input type="text" name="gender" class="form-control" value="${dto.gender}" readonly>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">주소</label>
	    <div class="col-sm-8">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
	    	<input type="text" id="sample4_postcode" placeholder="우편번호"> <br>
			<input type="text" name="roadAddress" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
			<input type="text" name="jibunAddress" class="form-control" id="sample4_jibunAddress" placeholder="지번주소"> <br>  
		</div>
	  </div>				
	
	  <div class="row">
	    <label for="inputEmail3" class="col-sm-2 control-label">Tel</label>
	    <div class="col-sm-2">
	      <input type="text" name="tel1" class="form-control" maxlength="3" onkeyup="tel_1()">
	    </div>
	    <div class="col-sm-2">  
	      <input type="text" name="tel2" class="form-control" maxlength="4" onkeyup="tel_2()">
	    </div>
	    <div class="col-sm-2">  
	      <input type="text" name="tel3" class="form-control" maxlength="4"> <br>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
	    <div class="col-sm-8">
	      <input type="email" name="email" class="form-control" id="inputEmail3" value="${dto.email}" placeholder="@를 포함 이메일 형식으로 작성하세요">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	   
	    </div>
	  </div>
	  <div class="form-group" align="right">
	    <div class="col-sm-offset-2 col-sm-8">
	      <button type="submit" class="btn btn-default">정보수정</button>
	      <input type="button" class="btn btn-default" value="뒤로가기" onclick="window.history.back()"> <br><br>
	    </div>
	  </div>
	</form>
</div>
</div>

</body>
</html>