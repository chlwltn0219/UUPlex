<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<html>
<head>

<style>

	.jb-cell {
		align:center;
		width: 900px;
  		margin: 50px 100px 50px 100px;
  		padding: 30px;
  		border: 3px solid #cccccc;
	}
	
</style>

</head>
<body>

<div class="container">

<br><h1 align="center">Q&A 상세 페이지</h1> 

<div class="jb-cell">

<form class="form-horizontal">
	
	<div class="form-group">
    	<label for="boardSubject" class="col-sm-2 control-label">작성자</label>
    	<div class="col-sm-2">
			<input type="text" name="memId" class="form-control" value="${dto.memId}" readonly>
		</div>
	</div>	
	
	<div class="form-group">
    	<label for="boardSubject" class="col-sm-2 control-label">글제목</label>
    	<div class="col-sm-8">
			<input type="text" name="subject" class="form-control" value="${dto.subject}" readonly>
		</div>
	</div>	
	
	<div class="form-group">
    	<label for="boardContents" class="col-sm-2 control-label">글내용</label>
    	<div class="col-sm-8">
			<textarea class="form-control" name="content" rows="20" readonly>${dto.content}</textarea>
		</div>
	</div>	

	<div class="form-group" align="center">
    	<div class="col-sm-offset-2 col-sm-8">
      		<input type="button" class="btn btn-default" value="목록보기" onclick="window.location='qna?pageNum=${pageNum}&shopCode=${shopCode}'">

      		<c:if test="${idCode==101}">
      			<input type="button" class="btn btn-default" value="답글쓰기" onclick="window.location='qnAWriteForm?num=${dto.qnaNum}&ref=${dto.ref}&ref_step=${dto.ref_step}&ref_level=${dto.ref_level}&shopCode=${dto.shopCode}'">
      		</c:if>
      		
      		<c:if test="${sessionScope.id == dto.memId}">
      			<a data-toggle="modal" class="btn btn-default" data-target="#BoardModal" href="noneSM/qnAModifyForm?num=${dto.qnaNum}&shopCode=${shopCode}&pageNum=${pageNum}">수정하기</a>
      			<a data-toggle="modal" class="btn btn-default" data-target="#BoardModal" href="noneSM/qnADelForm?num=${dto.qnaNum}&shopCode=${shopCode}&ref_step=${dto.ref_step}">삭제하기</a>
      		</c:if>
      		
    	</div>
  	</div>	

  	<%@ include file="/admin_Modal/Board_modal.jsp" %>


</form>	
</div>
</div>
</body>
</html>