<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
	<div class="modal-content">
	   	<div class="modal-header">
	   		<button type="button" class="close" data-dismiss="modal">&times;</button>
	   		<h4 class="modal-title">시간표 입력</h4>
	   	</div>		    	
	
  		<form action="/uuplex/fitness/manage/program/inputPro" method="post" name="programInputForm" onsubmit="">
	    	<div class="modal-body">
				<div class="form-group">
					<label>프로그램</label>
					<select class="form-control" required>
						<optgroup label="요가">
							<option>요가 초급</option>
							<option>요가 중급</option>
							<option>요가 고급</option>
						</optgroup>
						<optgroup label="수영">
							<option>수영 초급</option>
							<option>수영 중급</option>
							<option>수영 고급</option>
						</optgroup>
					</select>
				</div>
				<div class="form-group">
					<label>부제목</label>
					<input class="form-control" type="text" placeholder="오전반, 오후반 ,특별반 ...">
				</div>
				<div class="form-group">
					<label>교육장</label>
					<select class="form-control" required>
						<option>101호</option>
						<option>102호</option>
						<option>103호</option>
					</select>
				</div>
				<div class="form-group">
					<label>정원</label>
					<input type="number" class="form-control" 
							placeholder="총 정원" min="0" value="0">
				</div>
				<div class="form-group" id="teacher">
					<label>접수 기간</label>
					<div class="row">
						<div class="col-xs-5">
							<input class="form-control" type="date" required>
						</div>
						<div class="col-xs-1"> ~ </div>
						<div class="col-xs-5">
							<input class="form-control" type="date" required>
						</div>
					</div>
				</div>
				<div class="form-group" id="teacher">
					<label>수업 기간</label>
					<div class="row">
						<div class="col-xs-5">
							<input class="form-control" type="date" required>
						</div>
						<div class="col-xs-1"> ~ </div>
						<div class="col-xs-5">
							<input class="form-control" type="date" required>
						</div>
					</div>
				</div>
				<div class="form-group" id="teacher">
					<label>수업 시간</label>
					<div class="row">
						<div class="col-xs-5">
							<input class="form-control" type="time" required>
						</div>
						<div class="col-xs-1"> ~ </div>
						<div class="col-xs-5">
							<input class="form-control" type="time" required>
						</div>
					</div>
				</div>
	    	</div>
	    	<div class="modal-footer">
				<input type="submit" class="btn btn-primary" value="입력">
				<input type="reset" class="btn btn-warning" value="초기화">
				<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
	    	</div>
		</form>
		
	</div>


