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
								<h1 align="center">${dto.pname} <small> : ${dto.subname} - ${dto.tname} 강사 </small> </h1>
							</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<th width="20%">가격</th>
							<td>
								<h4 align="right">${dto.price} 원</h4>
							</td>
						</tr>
						<tr>
							<th>재료비</th>
							<td>
								<h4 align="right">${dto.price} 원</h4>
							</td>
						</tr>
						<tr>
							<th colspan="2">
								<h2 align="right">합계 : ${dto.price + dto.price} 원</h2>
							</th>
						</tr>
						
						<tr>
							<th>
								준비물
							</th>
							<td>
								<pre>준비물</pre>
							</td>
						</tr>
						
						<tr>
							<th>기간</th>
							<td>
								${fn:substring(dto.start_date, 11, 16)} ~ ${fn:substring(dto.end_date, 11, 16)}
							</td>
						</tr>
						<tr>
							<th>강의 시간</th>
							<td>
								${fn:substring(dto.start_time, 11, 16)} ~ ${fn:substring(dto.end_time, 11, 16)}
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<table style="margin: auto;">
					<tr>
						<th colspan="2">
							<h3 align="center">위 내용을 숙지하시고 신청하시겠습니까?</h3>
						</th>
					</tr>
					<tr>
						<td align="center">
							<button class="btn btn-primary" data-dismiss="modal"
								onclick="reservePro(${dto.cid})">확인</button>
						</td>
						<td align="center">
							<button class="btn btn-default" data-dismiss="modal">취소</button>		
						</td>
					</tr>
				</table>
				
			</div>
		</div>

