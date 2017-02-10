<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">종목 수정</h4>
			</div>
			<div class="modal-body">
				<table class="table">
					<tr>
						<th>강의실 코드</th>
						<td>
							${dto.crid}
						</td>
					</tr>
					<tr>
						<th>강의실 명</th>
						<td>
							${dto.crname}
						</td>
					</tr>
					<tr>
						<th>운영 여부</th>
						<td>
							<c:if test="${dto.activated == 'Y'}">
								<h4><span class="label label-success">운영중</span></h4>
							</c:if>
							<c:if test="${dto.activated == 'N'}">
								<h4><span class="label label-danger">미운영</span></h4>
							</c:if>
						</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<input type="button" class="btn btn-primary" 
					value="수정" onclick="classroomModify(${dto.crid})">
				<button class="btn btn-default" data-dismiss="modal" onclick="location.reload();">닫기</button>
			</div>
		</div>

