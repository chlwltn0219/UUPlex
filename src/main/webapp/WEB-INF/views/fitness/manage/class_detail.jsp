<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
		
		<jsp:useBean id="now" class="java.util.Date" />
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">강의 정보</h4>
			</div>
			<div class="modal-body">
				<table class="table">
					<tr>
						<th>프로그램</th>
						<td>
							${dto.pname} : ${dto.subname}
						</td>
					</tr>
					<tr>
						<th>종목</th>
						<td>
							${dto.sname}
						</td>
					</tr>
					<tr>
						<th>강사</th>
						<td>
							${dto.tname}
						</td>
					</tr>
					<tr>
						<th>교육장</th>
						<td>
							${dto.crname} : ${dto.crid} 호
						</td>
					</tr>
					<tr>
						<th>인원</th>
						<td>
							${dto.current_people} / ${dto.limit} 명
						</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td>
							${fn:substring(dto.reg_date, 0 ,10)}
						</td>
					</tr>
					<tr>
						<th>운영 여부</th>
						<td>
							${dto.activated}
						</td>
					</tr>
					<tr>
						<th>등록 기간</th>
						<td>
							<c:if test="${now >= dto.register_start && now <= dto.register_end}">
							<strong>
							</c:if>
							${fn:substring(dto.register_start, 0, 10)} ~ ${fn:substring(dto.register_end, 0, 10)}  
							<c:if test="${now >= dto.register_start && now <= dto.register_end}">
							(진행중)</strong>
							</c:if>
							<c:if test="${now < dto.register_start}">
							(예정)
							</c:if>
							<c:if test="${now > dto.register_end}">
							(종료)
							</c:if>
						</td>
					</tr>
					<tr>
						<th>수업 기간</th>
						<td>
							<c:if test="${now >= dto.start_date && now <= dto.end_date}">
							<strong>
							</c:if>
							${fn:substring(dto.start_date, 0, 10)} ~ ${fn:substring(dto.end_date, 0 , 10)}
							<c:if test="${now >= dto.start_date && now <= dto.end_date}">
							(진행중)</strong>
							</c:if>
							<c:if test="${now < dto.start_date}">
							(예정)
							</c:if>
							<c:if test="${now > dto.end_date}">
							(종료)
							</c:if>
						</td>
					</tr>
					<tr>
						<th>수업 요일</th>
						<td>
							<c:if test="${dto.sun == 'Y'}">일 </c:if>
							<c:if test="${dto.mon == 'Y'}">월 </c:if>
							<c:if test="${dto.tue == 'Y'}">화 </c:if>
							<c:if test="${dto.wed == 'Y'}">수 </c:if>
							<c:if test="${dto.thu == 'Y'}">목 </c:if>
							<c:if test="${dto.fri == 'Y'}">금 </c:if>
							<c:if test="${dto.sat == 'Y'}">토 </c:if>
						</td>
					</tr>
					<tr>
						<th>수업 시간</th>
						<td>
							${fn:substring(dto.start_time, 11, 16)} ~ ${fn:substring(dto.end_time, 11, 16)}
						</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<input type="button" class="btn btn-primary" 
					value="수정" onclick="classModify(${dto.cid})">
				<button class="btn btn-default" data-dismiss="modal" onclick="location.reload();">닫기</button>
			</div>
		</div>

