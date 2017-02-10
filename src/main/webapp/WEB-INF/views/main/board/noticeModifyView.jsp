<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>

<script src="/uuplex/resources/main_script/board.js"></script>

<style>

	.jb-cell {
		align:center;
		width: 900px;
  		margin: 50px 100px 50px 100px;
  		padding: 30px 0px 0px 30px;
  		border: 3px solid #cccccc;
	}
	
</style>

</head>
<body>

<div class="container">

<h1 align="center">공지사항 수정</h1>

<div class="jb-cell">
<form action="noticeModifyPro" name="noticeModifyPro" class="form-horizontal" method="post" onsubmit="return boardCheck()">
	
	<input type="hidden" name="num" value="${num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
	
	<div class="form-group">
    	<label for="boardSubject" class="col-sm-2 control-label">작성자</label>
    	<div class="col-sm-2">
			<input type="text" name="memId" class="form-control" value="${sessionScope.id}" readonly>
		</div>
	</div>	
	
	<div class="form-group">
    	<label for="boardSubject" class="col-sm-2 control-label">분류</label>
    	
    	<c:if test="${shopCode == 100}">
	    	<div class="col-sm-2">
				<select name="shopCode" class="form-control">
	  				<option>영화</option>
	  				<option>호텔</option>
	  				<option>휘트니스</option>
				</select>
			</div>
		</c:if>	
    	
    	<c:if test="${shopCode == 101}">
			<div class="col-sm-2">
				<input type="text" name="shopCode" class="form-control" value="영화" readonly>
			</div>    	
		</c:if>
		
		<c:if test="${shopCode == 102}">
			<div class="col-sm-2">
				<input type="text" name="shopCode" class="form-control" value="호텔" readonly>
			</div>    	
		</c:if>
		
		<c:if test="${shopCode == 103}">
			<div class="col-sm-2">
				<input type="text" name="shopCode" class="form-control" value="휘트니스" readonly>
			</div>    	
		</c:if>
		
		<label for="boardSubject" class="col-sm-5 control-label">공지</label>
    		<div class="col-sm-1">
				<input type="checkbox" name="important" class="form-control" value="공지">
			</div>
	</div>	
	
	<div class="form-group">
    		
	</div>	
	
	<div class="form-group">
    	<label for="boardSubject" class="col-sm-2 control-label">글제목</label>
    	<div class="col-sm-8">
			<input type="text" name="subject" class="form-control" placeholder="제목을 입력하세요" value="${dto.subject}" style="font-family:'함초롱바탕'">
		</div>
	</div>	
	
	<div class="form-group">
    	<label for="boardPassword" class="col-sm-2 control-label">비밀번호</label>
    	<div class="col-sm-8">
     	  <input type="password" name="passwd" class="form-control" id="inputPassword" value="${dto.notiPasswd}" placeholder="비밀번호를 입력하세요" maxlength="16" style="font-family:'함초롱바탕'">
   	 	</div>
  	</div>
	
	<div class="form-group">
    	<label for="boardContents" class="col-sm-2 control-label">글내용</label>
    	<div class="col-sm-8">
			<textarea class="form-control" name="content" rows="20" value="${dto.content}">${dto.content}</textarea>
		</div>
	</div>	
	
	<div class="form-group" align="center">
    	<div class="col-sm-offset-2 col-sm-8">
      		<button type="submit" class="btn btn-default">글수정</button>
      		<input type="button" class="btn btn-default" value="수정취소" onclick="window.history.back()"> <br><br>
    	</div>
  	</div>	
	
</form>
</div>	
</div>
</body>
</html>