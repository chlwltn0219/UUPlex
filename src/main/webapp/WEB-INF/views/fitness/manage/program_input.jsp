<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
	<div class="modal-content">
	   	<div class="modal-header">
	   		<button type="button" class="close" data-dismiss="modal">&times;</button>
	   		<h4 class="modal-title">프로그램 입력</h4>
	   	</div>		    	
	
  		<form action="/uuplex/fitness/manage/program/inputPro" method="post" name="programInputForm" onsubmit="">
	    	<div class="modal-body">
				<div class="form-group">
					<label>프로그램 이름</label>
					<input type="text" class="form-control" name="pname" 
							placeholder="종목명" required>
				</div>
				<div class="form-group">
					<label>종목</label>
					<select class="form-control" name="sid" onchange="suitableTeacher()">
						<c:forEach items="${sports}" var="s">
						<option value="${s.sid}">${s.sname}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group" id="teacher">
					<label>강사</label>
					<select class="form-control" name="tid">
						<c:forEach items="${teacher}" var="t">
						<option value="${t.tid}">${t.tname}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label>강의료</label>
					<input type="number" class="form-control" name="price" 
							placeholder="강의료" min="0" value="0" required>
				</div>
				<div class="form-group">
					<label>재료비</label>
					<input type="number" class="form-control" name="preparationCost" 
							placeholder="재료비" min="0" value="0">
				</div>
				<div class="form-group">
					<label>개인 준비물</label>
					<textarea class="form-control" rows="10" name="preparation" 
							placeholder="개인 준비물 목록"></textarea>
				</div>
				<div class="form-group">
					<label>프로그램 정보</label>
					<textarea class="form-control" rows="10" name="pinfo" 
							placeholder="프로그램 정보"></textarea>
				</div>
	    	</div>
	    	<div class="modal-footer">
				<input type="submit" class="btn btn-primary" value="입력">
				<input type="reset" class="btn btn-warning" value="초기화">
				<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
	    	</div>
		</form>
		
	</div>


