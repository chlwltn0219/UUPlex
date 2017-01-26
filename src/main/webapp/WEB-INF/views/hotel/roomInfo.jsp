<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#content {
	width: 1200px;
	margin: 100px;
	align: center;
}
#subTable {
	width: 800px;
	/* margin-left: 50px; */
}

</style>
</head>
<body>
<div class="container">
<div id="content">
	<div id="title">
	<h2>UU-HOTEL</h2>
	<hr>
	<h5>여기 당신만을 위한 특별한 호텔이 있습니다.<br>
	이 곳에서 당신은 진정한 나를 만나며 지금까지 경험할 수 없었던 럭셔리하고 빈틈없는 서비스를 받게 됩니다.<br>
	UU-HOTEL에서 도시가 가진 풍부한 문화에 비로소 눈을 뜨게 될 것입니다. 가장 편안한 럭셔리를 경험해 보세요.</h5>
	</div>
	
	<table id="intTable" class="table">
		<tr>
			<td>
				<h3>객실소개</h3>
				객실전체사진<br>
				<img alt="" src="${resources}/hotelImages/main.jpg" width="500px" height="300px">
				<br>
			</td>
		</tr>
		<tr>
			<td>
				<h3>이용요금 및 시간</h3>
					<br>
				<table id="subTable" class="table table-bordered">
					<tr class="active">
						<th colspan="3">이용요금</th>
					</tr>
					<tr>
						<th></th>
						<th>STANDARD</th>
						<th>SUITE</th>
					</tr>
					<tr>
						<th>일 ~ 목</th>
						<td>100,000원</td>
						<td>100,000원</td>
					</tr>
					<tr>
						<th>금,토 / 공휴일</th>
						<td>150,000원</td>
						<td>200,000원</td>
					</tr>
					<tr class="active">
						<th colspan="3">이용시간</th>
					</tr>
					<tr>
						<th></th>
						<th>CHECK-IN</th>
						<th>CHECK-OUT</th>
					</tr>
					<tr>
						<th>월 ~ 금 / 주중</th>
						<td>15:00 이후</td>
						<td>17:00 이후</td>
					</tr>
					<tr>
						<th>금,토 / 공휴일</th>
						<td>다음날 12:00 이전</td>
						<td>다음날 13:00 이전</td>
					</tr>
				
				</table>
				
			</td>
		</tr>
		<tr>
			<td>
				<h3>이용안내</h3>
				UU-HOTEL 이용시 주의사항을 안내해드립니다.<br>
				<pre>
				STANDARD 객실 입실 인원: 2~4명
				SUITE 객실 입실 인원: 6~8명
				
				</pre>
			</td>
		</tr>

	</table>
</div>
</div>
</body>
</html>