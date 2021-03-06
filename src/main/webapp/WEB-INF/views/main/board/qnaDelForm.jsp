<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

<html>
<head>

<style>

 	.modalUp {
		width: 888px;
  		margin: 5px;
  		padding: 100px 50px;
  		border: 3px solid #cccccc;
	}
	
</style>

<script type="text/javascript">
function deletePwdChk() {
	if(!document.qnADelForm.passwd.value){
		alert("비밀번호를 입력하세요");
		return false;
	}
	
	var passwd = document.qnADelForm.passwd.value;
	var shopCode = document.qnADelForm.shopCode.value;
	var num = document.qnADelForm.num.value;
	var ref_step = document.qnADelForm.ref_step.value;
	
	window.location="qnADelPro?passwd=" + passwd + "&shopCode=" + shopCode + "&num=" + num + "&ref_step=" + ref_step;
}

</script>

</head>
<body>

<div class="modalUp">

<form action="qnADelPro" name="qnADelForm" class="form-horizontal" method="post">

	<input type="hidden" name="shopCode" value="${shopCode}">
	<input type="hidden" name="num" value="${num}">
	<input type="hidden" name="ref_step" value="${ref_step}">

		<c:if test="${cnt == -1}">
			<script type="text/javascript">
				alert("비밀번호가 다릅니다. 다시 확인하세요!");
				history.back();
			</script>
		</c:if>
	
	<div class="form-group">
    	<label for="inputEmail3" class="col-sm-4 control-label"></label> 
    	<div class="col-sm-4">
    	<h1> 비밀번호 확인 </h1>
    	</div>
  	</div>	
	
	
	<div class="form-group">
    	<label for="inputEmail3" class="col-sm-4 control-label"></label> 
    	<div class="col-sm-4">
    	삭제하시려면 비밀번호를 입력하세요
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
      		<input type="button" class="btn btn-default" value="삭제" onclick="deletePwdChk()">
      		<input type="button" class="btn btn-default" value="취소" onclick="window.location.reload()">
    	</div>
  	</div>
  	
   
</form>
</div>
</body>
</html>