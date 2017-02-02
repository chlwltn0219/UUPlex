<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">강의 수정</h4>
			</div>
			
			<form name="programModifyForm" onsubmit="return default">
				<div class="modal-body">
					<table class="table">
						<tr>
							<th>프로그램 이름</th>
							<td>
								<input type="hidden">
								<select class="form-control" required>
									<optgroup label="요가">
										<option>요가 초급</option>
										<option>요가 중급</option>
										<option>요가 고급</option>
									</optgroup>
									<optgroup label="수영">
										<option>수영 초급</option>
										<option>수영 중급</option>
										<option>수영 고급</option>
									</optgroup>
								</select>
							</td>
						</tr>
						<tr>
							<th>부 제목</th>
							<td>
								<input type="text" class="form-control" 
									value="오전반">
							</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>
								<input type="text" class="form-control"
										value="2017-02-10" readonly>
							</td>
						</tr>
						<tr>
							<th>등록 기간</th>
							<td>
								<div class="col-xs-5">
									<input type="date" class="form-control"
											value="2017-02-10">
								</div>
								<div class="col-xs-1"> ~ </div>
								<div class="col-xs-5">
									<input type="date" class="form-control"
											value="2017-02-10">
								</div>
							</td>
						</tr>
						<tr>
							<th>수업 기간</th>
							<td>
								<div class="col-xs-5">
									<input type="date" class="form-control"
											value="2017-02-10">
								</div>
								<div class="col-xs-1"> ~ </div>
								<div class="col-xs-5">
									<input type="date" class="form-control"
											value="2017-02-10">
								</div>
							</td>
						</tr>
						<tr>
							<th>수업 시간</th>
							<td>
								<div class="col-xs-5">
									<input type="time" class="form-control">
								</div>
								<div class="col-xs-1"> ~ </div>
								<div class="col-xs-5">
									<input type="time" class="form-control">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-primary" 
						value="수정" onclick="programModifyPro()">
					<input type="reset" class="btn btn-warning" 
						value="초기화">
					<input type="button" class="btn btn-default" 
						value="취소" onclick="programDetail(${dto.pid});">
				</div>
			</form>
		</div>

