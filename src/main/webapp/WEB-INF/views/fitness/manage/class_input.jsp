<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
	<div class="modal-content">
	   	<div class="modal-header">
	   		<button type="button" class="close" data-dismiss="modal">&times;</button>
	   		<h4 class="modal-title">시간표 입력</h4>
	   	</div>		    	
	
  		<form action="/uuplex/fitness/manage/class/inputPro" method="post" name="programInputForm" onsubmit="">
	    	<div class="modal-body">
				<div class="form-group">
					<label>프로그램</label>
					<select class="form-control" name="pid" required>
						<c:forEach items="${sports}" var="s">
							<c:if test="${fn:length(program[s.sid]) > 0}">
							<optgroup label="${s.sname}">
								<c:forEach items="${program[s.sid]}" var="p">
								<option value="${p.pid}"> ${p.pname} : ${teacher[p.tid].tname} 강사님</option>
								</c:forEach>
							</optgroup>
							</c:if>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label>부제목</label>
					<input class="form-control" type="text" 
							name="subname" placeholder="오전반, 오후반 ,특별반 ...">
				</div>
				<div class="form-group">
					<label>교육장</label>
					<select class="form-control" name="crid" required>
						<c:forEach items="${classroom}" var="c">
							<option value="${c.crid}"> ${c.crid}호 : ${c.crname}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label>정원</label>
					<input type="number" class="form-control" 
							name="limit" placeholder="총 정원" min="0" value="0">
				</div>
				<div class="form-group">
					<label>접수 기간</label>
					<div class="input-group">
						<input class="form-control" type="date" 
							name="register_start" required>
    					<span class="input-group-addon"><i class="glyphicon glyphicon-minus"></i></span>
						<input class="form-control" type="date" 
								name="register_end" required>
					</div>
				</div>
				<div class="form-group">
					<label>수업 기간</label>
					<div class="input-group">
						<input class="form-control" type="date" 
								name="start_date" required>
						<span class="input-group-addon"><i class="glyphicon glyphicon-minus"></i></span>
						<input class="form-control" type="date" 
								name="end_date" required>
					</div>
				</div>
				<div class="form-group">
					<label>수업 요일</label>
					<div>
						<div class="btn-group btn-group-justified" data-toggle="buttons">
							<label class="btn btn-danger">
								<input type="checkbox" name="sun" value="Y">일
							</label>
							<label class="btn btn-success">
								<input type="checkbox" name="mon" value="Y">월
							</label>
							<label class="btn btn-success">
								<input type="checkbox" name="tue" value="Y">화
							</label>
							<label class="btn btn-success">
								<input type="checkbox" name="wed" value="Y">수
							</label>
							<label class="btn btn-success">
								<input type="checkbox" name="thu" value="Y">목
							</label>
							<label class="btn btn-success">
								<input type="checkbox" name="fri" value="Y">금
							</label>
							<label class="btn btn-primary">
								<input type="checkbox" name="sat" value="Y">토
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label>수업 시간</label>
					<div class="input-group">
						<input class="form-control" type="time" 
								name="start_time" required>
						<span class="input-group-addon"><i class="glyphicon glyphicon-minus"></i></span>
						<input class="form-control" type="time" 
								name="end_time" required>
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


