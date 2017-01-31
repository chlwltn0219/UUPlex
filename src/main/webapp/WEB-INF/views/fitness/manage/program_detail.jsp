<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">프로그램 수정</h4>
			</div>
			<div class="modal-body">
				<table class="table">
					<tr>
						<th>프로그램 코드</th>
						<td>
							${dto.pid}
						</td>
					</tr>
					<tr>
						<th>종목 이름</th>
						<td>
							${dto.sid} 이름으로 바꿀 것
						</td>
					</tr>
					<tr>
						<th>강사 이름</th>
						<td>
							${dto.tid} 이름으로 바꿀 것
						</td>
					</tr>
					<tr>
						<th>프로그램 이름</th>
						<td>
							${dto.pname}
						</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td>
							${fn:substring(dto.reg_date, 0, 10)}
						</td>
					</tr>
					<tr>
						<th>운영 여부</th>
						<td>
							<c:if test="${dto.activated == 'Y'}">
							운영중
							</c:if>
							<c:if test="${dto.activated == 'N'}">
							폐지
							</c:if>
						</td>
					</tr>
					<tr>
						<th>강의료</th>
						<td>
							${dto.price}
						</td>
					</tr>
					<tr>
						<th>재료비</th>
						<td>
							${dto.preparationCost}
						</td>
					</tr>
					<tr>
						<th>개인 준비물</th>
						<td>
							<pre>${dto.preparation}</pre>
						</td>
					</tr>
					<tr>
						<th>종목 정보</th>
						<td>
							<pre>${dto.sinfo}</pre>
						</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<input type="button" class="btn btn-primary" 
					value="수정" onclick="programModify(${dto.sid})">
				<button class="btn btn-default" data-dismiss="modal" onclick="location.reload();">닫기</button>
			</div>
		</div>

