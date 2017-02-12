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
function modifyPwdChk() {
	if(!document.NoticeModifyForm.passwd.value){
		alert("비밀번호를 입력하세요");
		return false;
	}
	
	var passwd = document.NoticeModifyForm.passwd.value;
	var shopCode = document.NoticeModifyForm.shopCode.value;
	var num = document.NoticeModifyForm.num.value;
	var pageNum = document.NoticeModifyForm.pageNum.value;
	
	window.location="noticeModifyView?passwd=" + passwd + "&shopCode=" + shopCode + "&num=" + num + "&pageNum=" + pageNum;
}

</script>

</head>
<body>

<div class="modalUp">

<form action="noticeModifyView" name="NoticeModifyForm" class="form-horizontal" method="post">

	<input type="hidden" name="shopCode" value="${shopCode}">
	<input type="hidden" name="num" value="${num}">
	<input type="hidden" name="pageNum" value="${pageNum}">

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
    	수정하시려면 비밀번호를 입력하세요
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
      		<input type="button" class="btn btn-default" value="수정" onclick="modifyPwdChk()">
      		<input type="button" class="btn btn-default" value="취소" onclick="window.location.reload()">
    	</div>
  	</div>
  	
   
</form>
</div>
</body>
</html>