<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>프로그램 예약</title>
</head>
<body>

<div class="container">
	
	<h3> 프로그램 예약 <small>원하시는 조건을 선택해 주세요.</small></h3>

	<div class="row">
		<div class="col-sm-4" id="sports">
			<div class="panel panel-default">
				<div class="panel-heading">종목</div>
				<ul class="panel-body list-group">
					<li class="list-group-item"><a>전체</a></li>
					<li class="list-group-item"><a>스포츠1</a></li>
					<li class="list-group-item"><a>스포츠2</a></li>
					<li class="list-group-item"><a>스포츠3</a></li>
					<li class="list-group-item"><a>스포츠4</a></li>
				</ul>
			</div>
		</div>
		
		<div class="col-sm-4" id="program">
			<div class="panel panel-default">
				<div class="panel-heading">종목</div>
				<ul class="panel-body list-group">
					<li class="list-group-item"><a>전체</a></li>
					<li class="list-group-item"><a>프로그램 1</a></li>
					<li class="list-group-item"><a>프로그램 2</a></li>
					<li class="list-group-item"><a>프로그램 3</a></li>
					<li class="list-group-item"><a>프로그램 4</a></li>
				</ul>
			</div>
		</div>
		<div class="col-sm-4" id="time">
			<div class="panel panel-default">
				<div class="panel-heading">시간</div>
				<ul class="panel-body list-group">
					<li class="list-group-item"><a>전체</a></li>
					<li class="list-group-item"><a>주중 오전</a></li>
					<li class="list-group-item"><a>주중 오후</a></li>
					<li class="list-group-item"><a>주말 오전</a></li>
					<li class="list-group-item"><a>주말 오후</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<hr>
	
	<div id="seaechList">
		<div class="panel panel-default">
			<div class="panel-heading">검색 리스트</div>
			<table class="panel-body table">
				<thead>
					<tr>
						<th>종목</th>
						<th>프로그램</th>
						<th>정원</th>
						<th>요일</th>
						<th>수업시간</th>
						<th>신청하기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>스포츠1</td>
						<td>프로그램1</td>
						<td>10/30 명</td>
						<td>월, 수, 금</td>
						<td>09:30 ~ 10:00</td>
						<td>
							<button class="btn btn-default"> 신청하기 </button>
						</td>
					</tr>
					<tr>
						<td>스포츠1</td>
						<td>프로그램1</td>
						<td>10/30 명</td>
						<td>월, 수, 금</td>
						<td>09:30 ~ 10:00</td>
						<td>
							<button class="btn btn-default"> 신청하기 </button>
						</td>
					</tr>
					<tr>
						<td>스포츠1</td>
						<td>프로그램1</td>
						<td>10/30 명</td>
						<td>월, 수, 금</td>
						<td>09:30 ~ 10:00</td>
						<td>
							<button class="btn btn-default"> 신청하기 </button>
						</td>
					</tr>
					<tr>
						<td>스포츠1</td>
						<td>프로그램1</td>
						<td>10/30 명</td>
						<td>월, 수, 금</td>
						<td>09:30 ~ 10:00</td>
						<td>
							<button class="btn btn-default"> 신청하기 </button>
						</td>
					</tr>
					<tr>
						<td>스포츠1</td>
						<td>프로그램1</td>
						<td>10/30 명</td>
						<td>월, 수, 금</td>
						<td>09:30 ~ 10:00</td>
						<td>
							<button class="btn btn-default"> 신청하기 </button>
						</td>
					</tr>
				</tbody>
				<tfoot></tfoot>
			</table>
		</div>
	</div>


</div>

</body>
</html>