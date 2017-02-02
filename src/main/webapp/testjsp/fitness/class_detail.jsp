<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
							프로그램 이름
						</td>
					</tr>
					<tr>
						<th>부제목</th>
						<td>
							프로그램 부제목
						</td>
					</tr>
					<tr>
						<th>종목</th>
						<td>
							종목 이름
						</td>
					</tr>
					<tr>
						<th>강사</th>
						<td>
							강사 이름
						</td>
					</tr>
					<tr>
						<th>교육장</th>
						<td>
							교육장 : 101호
						</td>
					</tr>
					<tr>
						<th>등록일</th>
						<td>
							2017-02-01
						</td>
					</tr>
					<tr>
						<th>운영 여부</th>
						<td>
							운영중
						</td>
					</tr>
					<tr>
						<th>등록 기간</th>
						<td>
							2017-02-07 ~ 2017-02-14  (예정)
						</td>
					</tr>
					<tr>
						<th>수업 기간</th>
						<td>
							2017-02-21 ~ 2017-03-21  (예정)
						</td>
					</tr>
					<tr>
						<th>수업 시간</th>
						<td>
							09:30 ~ 10:30
						</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<input type="button" class="btn btn-primary" 
					value="수정" onclick="programModify(${dto.pid})">
				<button class="btn btn-default" data-dismiss="modal" onclick="location.reload();">닫기</button>
			</div>
		</div>

