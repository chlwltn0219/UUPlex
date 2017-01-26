<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../setting.jsp"%>

<link type="text/css" rel="stylesheet"
	href="/uuplex/resources/c-box/css/rating.css">

<style>
.moviedetail {
	width: 850px;
	padding: 40px;
}

.moviedetail td {
	text-align: left;
	padding-left: 10px;
}

#poster {
	width: 250px;
}

.moviedetail th {
	text-align: left;
	padding-left: 10px;
	font-size: 30px;
}

.tit {
	font-size: 20px;
	padding-top: 40px;
}

.con {
	padding: 10px 0;
}
</style>

<link type="text/css" rel="stylesheet"
	href="/uuplex/resources/c-box/css/rating.css">
	
<div class="modal-content">
	<div class="modal-header">
		<button class="close" data-dismiss="modal">&times;</button>
		<h4 class="modal-title">상세정보</h4>
	</div>
	<div class="modal-body">
		<div class="moviedetail">
			<table>
				<tr>
					<td class="col-md-2" rowspan="10"><img id="poster" src="${img}movie_poster/너의 권력은.jpg"></td>
					<th><img class="rate" src="${img}mpaa_rating/12.png">${dto.title1}</th>
				</tr>
				<tr>
					<td>${dto.title2}</td>
				</tr>
				<tr>
					<td><b>타입 </b>:디지털</td>
				</tr>
				<tr>
					<td><b>개봉일</b> : ${dto.releaseDate}</td>
				</tr>
				<tr>
					<td><b>감독</b> : ${dto.director}</td>
				</tr>
				<tr>
					<td><b>출연진</b> : ${dto.starring}</td>
				</tr>
				<tr>
					<td><b>장르</b> : ${dto.genre}</td>
				</tr>
				<tr>
					<td><b>러닝타임</b> : ${dto.runTime}분</td>
				</tr>
				<tr>
					<td><b>평점</b></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td colspan="2" class="tit">줄거리</td>
				</tr>

				<tr>
					<td colspan="2" class="con">비밀리에 제작된 위조 지폐 동판을 탈취하려는 내부 조직에 의해
						작전 중 아내와 동료들을 잃게 된 특수 정예부대 출신의 북한 형사 ‘림철령’(현빈). 동판을 찾아야만 하는 북한은
						남한으로 숨어든 조직의 리더 ‘차기성’(김주혁)을 잡기 위해 역사상 최초의 남북 공조수사를 요청하고, 그 적임자로
						철령을 서울에 파견한다. 한편, 북한의 속내가 의심스런 남한은 먼저 차기성을 잡기 위한 작전을 계획하고, 정직 처분
						중인 생계형 형사 ‘강진태’(유해진)에게 공조수사를 위장한 철령의 밀착 감시를 지시한다. 임무를 완수해야 하는 철령과
						임무를 막아야만 하는 진태. 그들에게 주어진 시간은 단 3일, 한 팀이 될 수 없는 남북 형사의 예측 불가 공조수사가
						시작된다!</td>
				</tr>
				<tr>
					<td colspan="2" class="tit"><a>스틸컷 0</a> | <a style="font-weight: bold;">동영상 0</a></td>
				</tr>
				<tr>
					<td colspan="2" class="con"></td>
				</tr>
				<tr>
					<td colspan="2" class="tit">한줄평(0)</td>
				</tr>
				<tr>
					<td colspan="2" class="con">
						<form action="/uuplex/c-box/user/add_review" method="post" name="reviewform" enctype="multipart/form-data">
							<table class="table">
								<tr>
									<th>memId</th>
									<td class="star-input">
										<span class="input">
											<input type="radio" name="star-input" value="1" id="p1">
												<label for="p1">괜히봤어요</label>
												<input type="radio" name="star-input" value="2" id="p2">
												<label for="p2">기대하진 말아요</label>
												<input type="radio" name="star-input" value="3" id="p3">
												<label for="p3">무난했어요</label>
												<input type="radio" name="star-input" value="4" id="p4">
												<label for="p4">기대해도 좋아요!</label>
												<input type="radio" name="star-input" value="5" id="p5">
												<label for="p5">정말 멋진 영화였어요!</label>
										</span><br>
										<output id="rating" for="star-input">
											<b>평점을 입력해주세요</b>
										</output>
									</td>
									<td><textarea style="width: 250px; height: 80px" name="">로그인 후 이용가능한 서비스입니다.</textarea></td>
									<td><input class="btn" type="submit" value="등록"></td>
								</tr>

							</table>
						</form>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="con"></td>
				</tr>
				<tr>
					<td colspan="2" class="con"></td>
				</tr>
				<tr>
					<td colspan="2" class="con"></td>
				</tr>
			</table>
		</div>

	</div>
</div>
<script src="${js}jquery-1.11.3.min.js"></script>
<script src="${js}star.js""></script>