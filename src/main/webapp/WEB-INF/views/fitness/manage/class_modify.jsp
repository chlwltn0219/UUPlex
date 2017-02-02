<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">강의 수정</h4>
			</div>
			
			<form name="classModifyForm" onsubmit="return default">
				<div class="modal-body">
					<table class="table">
						<tr>
							<th>강의 코드</th>
							<td>
								<input type="text" class="form-control" 
									name="cid" value="${dto.cid}" readonly>
							</td>
						</tr>
						<tr>
							<th>프로그램</th>
							<td>
								<select class="form-control" name="pid" required>
									<c:forEach items="${sports}" var="s">
										<optgroup label="${s.sname}">
										<c:forEach items="${program}" var="p">
										<c:if test="${s.sid == p.sid}">
											<option value="${p.pid}">${p.pname} ( ${teacher[p.tid].tname} )</option>
										</c:if>
										</c:forEach>
										</optgroup>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th>부 제목</th>
							<td>
								<input type="text" class="form-control" 
									name="subname" value="${dto.subname}">
							</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>
								<input type="date" class="form-control"
										value="${fn:substring(dto.reg_date, 0, 10)}" readonly>
							</td>
						</tr>
						<tr>
							<th>정원</th>
							<td>
								<input type="number" class="form-control"
										name="limit" value="${dto.limit}" min="0" required="required">
							</td>
						</tr>
						<tr>
							<th>등록 기간</th>
							<td>
								<div class="col-xs-5">
									<input type="date" class="form-control"
											name="register_start" value="${fn:substring(dto.register_start, 0, 10)}">
								</div>
								<div class="col-xs-1"> ~ </div>
								<div class="col-xs-5">
									<input type="date" class="form-control"
									name="register_end" value="${fn:substring(dto.register_end, 0, 10)}">
								</div>
							</td>
						</tr>
						<tr>
							<th>수업 기간</th>
							<td>
								<div class="col-xs-5">
									<input type="date" class="form-control"
												name="start_date" value="${fn:substring(dto.start_date, 0, 10)}">
								</div>
								<div class="col-xs-1"> ~ </div>
								<div class="col-xs-5">
									<input type="date" class="form-control"
												name="end_date" value="${fn:substring(dto.end_date, 0, 10)}">
								</div>
							</td>
						</tr>
						<tr>
							<th>수업 시간</th>
							<td>
								<div class="col-xs-5">
									<input type="time" class="form-control"
										name="start_time" value="${fn:substring(dto.start_time, 11, 16)}">
									
								</div>
								<div class="col-xs-1"> ~ </div>
								<div class="col-xs-5">
									<input type="time" class="form-control"
										name="end_time" value="${fn:substring(dto.end_time, 11, 16)}">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-primary" 
						value="수정" onclick="classModifyPro()">
					<input type="reset" class="btn btn-warning" 
						value="초기화">
					<input type="button" class="btn btn-default" 
						value="취소" onclick="classDetail(${dto.cid});">
				</div>
			</form>
		</div>

