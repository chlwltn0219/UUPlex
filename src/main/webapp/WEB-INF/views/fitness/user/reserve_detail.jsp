<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">강의 신청 확인</h4>
			</div>
			<div class="modal-body">
				<table class="table">
					<thead>
						<tr>
							<th colspan="2">
								<h2 align="center"> ${program.pname} <small> : ${classInfo.subname} - ${teacher.tname} 강사님 </small> </h2>
							</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<th width="20%">가격</th>
							<td>
								<h4 align="right">${program.price} 원</h4>
							</td>
						</tr>
						<tr>
							<th>재료비</th>
							<td>
								<h4 align="right">${program.preparationCost} 원</h4>
							</td>
						</tr>
						<tr>
							<th colspan="2">
								<h3 align="right">합계 : ${program.price + program.preparationCost} 원</h3>
							</th>
						</tr>
						
						<tr>
							<th>
								준비물
							</th>
							<td>
								<c:if test="${program.preparation == null}">
									<pre style="text-align: center;">준비물은 없습니다.</pre>
								</c:if>
								<c:if test="${program.preparation != null}">
									<pre>${program.preparation}</pre>
								</c:if>
							</td>
						</tr>
						
						<tr>
							<th>기간</th>
							<td>
								<h5 align="right">${fn:substring(classInfo.start_date, 0, 10)} ~ ${fn:substring(classInfo.end_date, 0, 10)}</h5>
							</td>
						</tr>
						<tr>
							<th>강의 요일</th>
							<td>
								<h4 align="right">
									<c:if test="${classInfo.sun == 'Y'}"><span class="label label-danger">일</span></c:if>
									<c:if test="${classInfo.sun == 'N'}"><span class="label label-default">일</span>	</c:if>
									
									<c:if test="${classInfo.mon == 'Y'}"><span class="label label-success">월</span></c:if>
									<c:if test="${classInfo.mon == 'N'}"><span class="label label-default">월</span></c:if>
									
									<c:if test="${classInfo.tue == 'Y'}"><span class="label label-success">화</span></c:if>
									<c:if test="${classInfo.tue == 'N'}"><span class="label label-default">화</span></c:if>
									
									<c:if test="${classInfo.wed == 'Y'}"><span class="label label-success">수</span></c:if>
									<c:if test="${classInfo.wed == 'N'}"><span class="label label-default">수</span></c:if>
	
									<c:if test="${classInfo.thu == 'Y'}"><span class="label label-success">목</span></c:if>
									<c:if test="${classInfo.thu == 'N'}"><span class="label label-default">목</span></c:if>
									
									<c:if test="${classInfo.fri == 'Y'}"><span class="label label-success">금</span></c:if>
									<c:if test="${classInfo.fri == 'N'}"><span class="label label-default">금</span></c:if>
									
									<c:if test="${classInfo.sat == 'Y'}"><span class="label label-primary">토</span></c:if>
									<c:if test="${classInfo.sat == 'N'}"><span class="label label-default">토</span></c:if>
								</h4>
							</td>
						</tr>
						<tr>
							<th>강의 시간</th>
							<td>
								<h5 align="right">${fn:substring(classInfo.start_time, 11, 16)} ~ ${fn:substring(classInfo.end_time, 11, 16)}</h5>
							</td>
						</tr>
						<tr>
							<th>환불 안내</th>
							<td>
								<h4 align="right"> ~ ${fn:substring(classInfo.start_date, 0, 10)} 이전 까지</h4>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<form action="/uuplex/fitness/user/reservePro" method="post">
					<input type="hidden" name="cid" value="${classInfo.cid}">
					<input type="hidden" name="price" value="${program.price}">
					<table style="margin: auto;">
						<tr>
							<th colspan="2">
								<h3 align="center">위 내용을 숙지하시고 신청하시겠습니까?</h3>
							</th>
						</tr>
						<tr>
							<td align="center">
								<button type="submit" class="btn btn-primary">확인</button>
							</td>
							<td align="center">
								<button class="btn btn-default" data-dismiss="modal">취소</button>		
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
