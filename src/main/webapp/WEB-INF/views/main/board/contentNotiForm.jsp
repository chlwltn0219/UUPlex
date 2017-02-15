<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../setting.jsp" %>    
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

<br><h1 align="center">공지사항 상세 페이지</h1>

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
      		<input type="button" class="btn btn-default" value="목록보기" onclick="window.location='notice?pageNum=${pageNum}&shopCode=${shopCode}'">
      		<c:if test="${idCode == 101}">
      		<a data-toggle="modal" class="btn btn-default" data-target="#BoardModal" href="noneSM/noticeModify?num=${dto.notiNum}&pageNum=${pageNum}&shopCode=${shopCode}">글수정</a>
      		<a data-toggle="modal" class="btn btn-default" data-target="#BoardModal" href="noneSM/noticeDel?num=${dto.notiNum}&pageNum=${pageNum}&shopCode=${shopCode}">글삭제</a>
      		</c:if>
    	</div>
  	</div>	
  	
  	<%@ include file="/admin_Modal/Board_modal.jsp" %>

</form>	
</div>
</div>
</body>
</html>