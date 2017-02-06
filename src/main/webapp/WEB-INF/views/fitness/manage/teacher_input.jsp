<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<div class="modal-content">
    	<div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal">&times;</button>
    		<h4 class="modal-title">강사 입력</h4>
    	</div>
    	
   		<form action="input" name="tInputForm" enctype="multipart/form-data" method="post" onsubmit="" >
	    	<div class="modal-body">
				<div class="form-group">
					<label>강사명</label>
					<input type="text" class="form-control" name="tname" 
							placeholder="강사 이름" required>
				</div>
				<div class="form-group">
					<label>종목명</label>
					<select class="form-control" name="sid">
						<c:forEach items="${sports}" var="s">
					  <option value="${s.sid}">${s.sname}</option>
					  </c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label>강사 이미지</label>
					<input type="file" class="form-control" name="tpicture" 
							accept="image/*">
				</div>
				<div class="form-group">
					<label>강사 정보</label>
					<textarea class="form-control" rows="10" name="tinfo"></textarea>
				</div>
	    	</div>
	    	<div class="modal-footer">
				<input type="submit" class="btn btn-primary" value="입력">
				<input type="reset" class="btn btn-warning" value="초기화">
				<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
	    	</div>
		</form>
		
	</div>
