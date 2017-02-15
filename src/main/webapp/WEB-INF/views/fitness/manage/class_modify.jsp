<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">강의 수정</h4>
			</div>
			
			<form action = "modifyPro" name="classModifyForm" onsubmit="return classDataCheck();">
				<div class="modal-body">
					<table class="table">
						<tr>
							<th width="25%">강의 코드</th>
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
										<c:if test="${fn:length(program[s.sid]) > 0}">
										<optgroup label="${s.sname}">
											<c:forEach items="${program[s.sid]}" var="p">
											<c:if test="${dto.pid != p.pid }">
											<option value="${p.pid}"> ${p.pname} : ${teacher[p.tid].tname} 강사님</option>
											</c:if>
											<c:if test="${dto.pid == p.pid }">
											<option value="${p.pid}" selected> ${p.pname} : ${teacher[p.tid].tname} 강사님</option>
											</c:if>
											</c:forEach>
										</optgroup>
										</c:if>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th>부 제목</th>
							<td>
								<input type="text" class="form-control" 
									name="subname" value="${dto.subname}" required>
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
							<th>교육장</th>
							<td>
								<select class="form-control" name="crid" required>
									<c:forEach items="${classroom}" var="c">
									<c:if test="${dto.crid != c.crid}">
									<option value="${c.crid}"> ${c.crid}호 : ${c.crname}</option>
									</c:if>
									<c:if test="${dto.crid == c.crid}">
									<option value="${c.crid}" selected> ${c.crid}호 : ${c.crname}</option>
									</c:if>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th>정원</th>
							<td>
								<div class="input-group">
									<input type="number" class="form-control"
											name="people" value="${dto.people}" readonly>
									<span class="input-group-addon">/</span>
									<input type="number" class="form-control"
											name="limit" value="${dto.limit}" min="${dto.people}" required="required">
								</div>
							</td>
						</tr>
						<tr>
							<th>등록 기간</th>
							<td>
								<div class="input-group">
									<input type="date" class="form-control"
											name="register_start" value="${fn:substring(dto.register_start, 0, 10)}">
									<span class="input-group-addon">~</span>
									<input type="date" class="form-control"
									name="register_end" value="${fn:substring(dto.register_end, 0, 10)}">
								</div>
							</td>
						</tr>
						<tr>
							<th>수업 기간</th>
							<td>
								<div class="input-group">
									<input type="date" class="form-control"
												name="start_date" value="${fn:substring(dto.start_date, 0, 10)}">
									<span class="input-group-addon">~</span>
									<input type="date" class="form-control"
												name="end_date" value="${fn:substring(dto.end_date, 0, 10)}">
								</div>
							</td>
						</tr>
						<tr>
							<th>수업 요일</th>
							<td>
								<div class="day btn-group btn-group-justified" data-toggle="buttons">
								
									<c:if test="${dto.sun == 'Y'}">
									<label class="btn btn-danger sun active">
										<input type="checkbox" name="sun" value="Y" checked>일
									</label>
									</c:if>
									<c:if test="${dto.sun == 'N'}">
									<label class="btn btn-default sun">
										<input type="checkbox" name="sun" value="Y">일
									</label>
									</c:if>
									
									<c:if test="${dto.mon == 'Y'}">
									<label class="btn btn-success weekday active">
										<input type="checkbox" name="mon" value="Y" checked>월
									</label>
									</c:if>
									<c:if test="${dto.mon == 'N'}">
									<label class="btn btn-default weekday">
										<input type="checkbox" name="mon" value="Y">월
									</label>
									</c:if>
									
									<c:if test="${dto.tue == 'Y'}">
									<label class="btn btn-success weekday active">
										<input type="checkbox" name="tue" value="Y" checked>화
									</label>
									</c:if>
									<c:if test="${dto.tue == 'N'}">
									<label class="btn btn-default weekday">
										<input type="checkbox" name="tue" value="Y">화
									</label>
									</c:if>
									
									<c:if test="${dto.wed == 'Y'}">
									<label class="btn btn-success weekday active">
										<input type="checkbox" name="wed" value="Y" checked>수
									</label>
									</c:if>
									<c:if test="${dto.wed == 'N'}">
									<label class="btn btn-default weekday">
										<input type="checkbox" name="wed" value="Y">수
									</label>
									</c:if>

									<c:if test="${dto.thu == 'Y'}">
									<label class="btn btn-success weekday active">
										<input type="checkbox" name="thu" value="Y" checked="checked">목
									</label>
									</c:if>
									<c:if test="${dto.thu == 'N'}">
									<label class="btn btn-default weekday">
										<input type="checkbox" name="thu" value="Y">목
									</label>
									</c:if>

									<c:if test="${dto.fri == 'Y'}">
									<label class="btn btn-success weekday active">
										<input type="checkbox" name="fri" value="Y" checked>금
									</label>
									</c:if>
									<c:if test="${dto.fri == 'N'}">
									<label class="btn btn-default weekday">
										<input type="checkbox" name="fri" value="Y">금
									</label>
									</c:if>
										
									<c:if test="${dto.sat == 'Y'}">
									<label class="btn btn-primary sat active">
										<input type="checkbox" name="sat" value="Y" checked>토
									</label>
									</c:if>
									<c:if test="${dto.sat == 'N'}">
									<label class="btn btn-default sat">
										<input type="checkbox" name="sat" value="Y">토
									</label>
									</c:if>
								</div>
							</td>
						</tr>
						<tr>
							<th>수업 시간</th>
							<td>
								<div class="input-group">
									<input type="time" class="form-control"
										name="start_time" value="${fn:substring(dto.start_time, 11, 16)}">
									<span class="input-group-addon">~</span>
									<input type="time" class="form-control"
										name="end_time" value="${fn:substring(dto.end_time, 11, 16)}">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-primary" 
						value="수정">
					<input type="reset" class="btn btn-warning" 
						value="초기화">
					<input type="button" class="btn btn-default" 
						value="취소" onclick="classDetail(${dto.cid});">
				</div>
			</form>
		</div>

