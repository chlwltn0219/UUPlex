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
pre {
	width: 800px;
}

</style>
</head>
<body>
<div class="container">
<div id="content">
	<div id="title">
	<h2>UU-HOTEL</h2><br>
	<img alt="" src="${resources}/hotelImages/main.jpg" width="700px" height="400px">
	<hr>
	<h5>여기 당신만을 위한 특별한 호텔이 있습니다.<br><br>
	이 곳에서 당신은 진정한 나를 만나며 지금까지 경험할 수 없었던 럭셔리하고 빈틈없는 서비스를 받게 됩니다.<br>
	UU-HOTEL에서 도시가 가진 풍부한 문화에 비로소 눈을 뜨게 될 것입니다. 가장 편안한 럭셔리를 경험해 보세요.</h5>
	</div>
	
	<hr><br>
	<h3>이용요금 및 시간</h3>
		<br>
		<table id="subTable" class="table table-bordered">
			<tr class="active">
				<th colspan="3"><h4>이용요금</h4></th>
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
				<th colspan="3"><h4>이용시간</h4></th>
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
	<hr><br>
		<h3>이용안내</h3>
		<br>
		UU-HOTEL은 인천과 김포국제공항에서 가까운 지리적 이점을 가진 럭셔리 호텔입니다.<br>
		두 개의 지하철 노선과 버스 터미널을 쉽게 이용할 수 있어 시전체는 물론이고 근교 지역까지의 연계성이 탁월합니다.<br>
		뛰어난 경치와 광대하게 펼쳐진 스카이라인의 황홀한 풍경을 감상할 수 있는 UU-HOTEL은<br>
		멀티플렉스 영화관, 휘트니스 센터, 다양한 레스토랑 및 시설이 들어서 있는 UU-PLEX에 함께 자리잡고 있습니다.
		<br><br>
		<pre>
		<strong>* 시설정보</strong>
			24시간 룸서비스
			레인 샤워와 프리 스탠딩 욕조
			다양한 베개 선택 메뉴
			구두 광택 서비스
			월스트리트저널 디지털 신문 무료 서비스
			<small>(침대유형(double/twin)과 전망형태(city/river)는 예약시 선택가능합니다.)</small>
		
		<strong>* 객실 입실 인원</strong>
			STANDARD ROOM, SUITE ROOM 모두 입실 가능 인원은 <mark>2~4명</mark>이며,
			Extra Bed(single)는 추가요금 결제 후 이용 가능합니다.
			<small>(이용을 원하시는 고객님께서는 예약시 확인 부탁드립니다.)</small>
		
		<strong>* 추가서비스</strong>
			드라이클리닝 및 세탁 서비스, 조식서비스는 추가요금 결제 후 이용 가능합니다.
			<small>(이용을 원하시는 고객님께서는 예약시 확인 부탁드립니다)</small>
		</pre>
	<br>
	<input class="btn btn-default btn-lg" type="button" value="메인으로"
			onclick="location.href='/uuplex/hotel'">
</div>
</div>
</body>
</html>