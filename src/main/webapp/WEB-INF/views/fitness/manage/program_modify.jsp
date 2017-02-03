<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">프로그램 수정</h4>
			</div>
			
			<form name="programModifyForm" onsubmit="return default">
				<div class="modal-body">
					<table class="table">
						<tr>
							<th>프로그램 코드</th>
							<td>
								<input type="text" class="form-control" 
									name="pid" value="${dto.pid}" readonly>
							</td>
						</tr>
						<tr>
							<th>프로그램 이름</th>
							<td>
								<input type="text" class="form-control" 
									name="pname" value="${dto.pname}" required>
							</td>
						</tr>
						<tr>
							<th>종목</th>
							<td>
								<select class="form-control" name ="sid" onchange="suitableTeacher()">
									<c:forEach items="${sports}" var="s">
										<c:if test="${s.sid == dto.sid}">
										<option value="${s.sid}" selected>${s.sname}</option>
										</c:if>
										<c:if test="${s.sid != dto.sid}">
										<option value="${s.sid}">${s.sname}</option>
										</c:if>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th>강사 이름</th>
							<td>
								<select class="form-control" name ="tid" id="teacher">
									<c:forEach items="${teacher}" var="t">
										<c:if test="${t.tid == dto.tid}">
										<option value="${t.tid}" selected>${t.tname}</option>
										</c:if>
										<c:if test="${t.tid != dto.tid}">
										<option value="${t.tid}">${t.tname}</option>
										</c:if>
									</c:forEach>
								</select> 
							</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>
								<input type="text" class="form-control" 
									value="${fn:substring(dto.reg_date, 0, 10)}" readonly>
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
							<th>강의료</th>
							<td>
								<input class="form-control" type="number" min="0" 
										name="price" value="${dto.price}">
							</td>
						</tr>
						<tr>
							<th>재료비</th>
							<td>
								<input class="form-control" type="number" min="0" 
										name="preparationCost" value="${dto.preparationCost}">
							</td>
						</tr>
						<tr>
							<th>개인 준비물</th>
							<td>
								<textarea class="form-control" rows="5" name="preparation" 
								placeholder="종목 정보">${dto.preparation}</textarea>
							</td>
						</tr>
						<tr>
							<th>프로그램 정보</th>
							<td>
								<textarea class="form-control" rows="5" name="pinfo" 
								placeholder="종목 정보">${dto.pinfo}</textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-primary" 
						value="수정" onclick="programModifyPro()">
					<input type="reset" class="btn btn-warning" 
						value="초기화"  onclick="resetTeacher()">
					<input type="button" class="btn btn-default" 
						value="취소" onclick="programDetail(${dto.pid});">
				</div>
			</form>
		</div>

