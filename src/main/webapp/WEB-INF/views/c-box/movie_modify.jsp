<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.moviedetail {
	width: 850px;
	padding: 40px;
}

.moviedetail td {
	text-align: left;
	font-size: 15px;
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

<div class="modal fade" id="movieDetail" role="dialog">
	<div class="modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">상세정보</h4>
			</div>
			<div class="modal-body">
				<div class="moviedetail">
					<table>
						<tr>
							<td rowspan="10"><img id="poster"
								src="${img}movie_poster/너의 권력은.jpg"></td>
							<th><img class="rate" src="${img}mpaa_rating/12.png">
								너의 권력은.</th>
						</tr>
						<tr>
							<td>your name.</td>
						</tr>
						<tr>
							<td>타입 :디지털</td>
						</tr>
						<tr>
							<td>개봉일 : 2074. 6. 9</td>
						</tr>
						<tr>
							<td>감독 : 아무개</td>
						</tr>
						<tr>
							<td>출연진 : 김땡땡, 박땡땡</td>
						</tr>
						<tr>
							<td>장르 : 판타지</td>
						</tr>
						<tr>
							<td>러닝타임 : 120분</td>
						</tr>
						<tr>
							<td>평점</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td colspan="2" class="tit">줄거리</td>
						</tr>

						<tr>
							<td colspan="2" class="con">비밀리에 제작된 위조 지폐 동판을 탈취하려는 내부 조직에
								의해 작전 중 아내와 동료들을 잃게 된 특수 정예부대 출신의 북한 형사 ‘림철령’(현빈). 동판을 찾아야만 하는
								북한은 남한으로 숨어든 조직의 리더 ‘차기성’(김주혁)을 잡기 위해 역사상 최초의 남북 공조수사를 요청하고, 그
								적임자로 철령을 서울에 파견한다. 한편, 북한의 속내가 의심스런 남한은 먼저 차기성을 잡기 위한 작전을 계획하고,
								정직 처분 중인 생계형 형사 ‘강진태’(유해진)에게 공조수사를 위장한 철령의 밀착 감시를 지시한다. 임무를 완수해야
								하는 철령과 임무를 막아야만 하는 진태. 그들에게 주어진 시간은 단 3일, 한 팀이 될 수 없는 남북 형사의 예측
								불가 공조수사가 시작된다!</td>
						</tr>
						<tr>
							<td colspan="2" class="tit">스틸컷 0 | 동영상 0</td>
						</tr>
						<tr>
							<td colspan="2" class="con"></td>
						</tr>
						<tr>
							<td colspan="2" class="tit">한줄평(0)</td>
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
						<tr>
							<td colspan="2" class="con"></td>
						</tr>
					</table>
				</div>

			</div>
			<div class="modal-footer">
				<button class="btn btn-default" data-dismiss="modal">닫기</button>

			</div>
		</div>
	</div>
</div>