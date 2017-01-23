<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<html>
<head>

</head>
<body>

<h2>글 상세 페이지</h2> <br><br>

<form class="form-horizontal">
	
	<div class="form-group">
    	<label for="boardSubject" class="col-sm-2 control-label">작성자</label>
    	<div class="col-sm-2">
			<input type="text" name="memId" class="form-control" value="${dto.memId}" readonly>
		</div>
	</div>	
	
	<div class="form-group">
    	<label for="boardSubject" class="col-sm-2 control-label">글제목</label>
    	<div class="col-sm-6">
			<input type="text" name="subject" class="form-control" value="${dto.subject}" readonly>
		</div>
	</div>	
	
	<div class="form-group">
    	<label for="boardContents" class="col-sm-2 control-label">글내용</label>
    	<div class="col-sm-6">
			<textarea class="form-control" name="content" rows="20">${dto.content}</textarea>
		</div>
	</div>	

	<div class="form-group" align="center">
    	<div class="col-sm-offset-2 col-sm-10">
      		<input type="button" class="btn btn-default" value="목록보기" onclick="window.location='qna?pageNum=${pageNum}'">
      		<c:if test="${idCode==101}">
      		<input type="button" class="btn btn-default" value="답글쓰기" onclick="window.location='qnAWriteForm?num=${dto.qnaNum}&ref=${pageNum}&ref_step=${dto.ref_step}&ref_level=${dto.ref_level}'">
      		</c:if>
    	</div>
  	</div>	

</form>	
</body>
</html>