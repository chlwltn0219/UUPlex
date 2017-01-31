<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">종목 내용</h4>
			</div>
			
			<form name="sportsModifyForm" onsubmit="return default">
				<div class="modal-body">
					<table class="table">
						<tr>
							<th>종목 코드</th>
							<td>
								<input type="text" class="form-control" 
									name="sid" value="${dto.sid}" readonly>
							</td>
						</tr>
						<tr>
							<th>종목 이름</th>
							<td>
								<input type="text" class="form-control" 
									name="sname" value="${dto.sname}" required>
							</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>
								<input type="text" class="form-control" 
									name="reg_date" value="${fn:substring(dto.reg_date, 0, 10)}" readonly>
								
							</td>
						</tr>
						<tr>
							<th>운영 여부</th>
							<td>
								<label class="radio-inline">
									<c:if test="${dto.activated == 'Y' }">
									<input type="radio" name="activated" value="Y" checked>
									</c:if>
									<c:if test="${dto.activated != 'Y' }">
									<input type="radio" name="activated" value="Y">
									</c:if>
									운영중
								</label>
								<label class="radio-inline">
									<c:if test="${dto.activated != 'N' }">
									<input type="radio" name="activated" value="N">
									</c:if>
									<c:if test="${dto.activated == 'N' }">
									<input type="radio" name="activated" value="N" checked>
									</c:if>
									폐지
								</label>
							</td>
						</tr>
						<tr>
							<th>종목 정보</th>
							<td>
								<textarea class="form-control" rows="5" name="sinfo" 
								placeholder="종목 정보">${dto.sinfo}</textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-primary" 
						value="수정" onclick="sportsModifyPro()">
					<input type="reset" class="btn btn-warning" 
						value="초기화">
					<input type="button" class="btn btn-default" 
						value="취소" onclick="sportsDetail(${dto.sid});">
				</div>
			</form>
		</div>

