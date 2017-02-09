<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script type="text/javascript" src="${resources}/c-box/js/movieinfo.js"></script>

<!-- 영화정보 입력 모달 시작 -->
<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<h4 class="modal-title">영화 등록</h4>
	</div>
	<form action="/uuplex/c-box/manage/movie/add" method="post" name="movieInputForm" enctype="multipart/form-data" onsubmit="">
		<div class="modal-body">
			<!--  영화 정보 추가하기 -->
			<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
			<table class="table">
				<tr>
					<th>Title1</th>
					<td colspan="4">
						<input type="text" name="title1" placeholder="영화제목(한글)" maxlength="50" required>
					</td>
				</tr>
				<tr>
					<th>Title2</th>
					<td colspan="4">
						<input type="text" name="title2" placeholder="영화제목(원제)" maxlength="50">
					</td>
				</tr>
				<tr>
					<th>Director</th>
					<td colspan="4">
						<input type="text" name="director" placeholder="감독" maxlength="50" required>
					</td>
				</tr>
				<tr>
					<th>Starring</th>
					<td colspan="4">
						<input type="text" name="starring" placeholder="주연배우" maxlength="50" required>
					</td>
				</tr>
				<tr>
					<th rowspan="5">Genre</th>
					<td><input type="checkbox" name="genre" value="코미디">코미디</td>
					<td><input type="checkbox" name="genre" value="멜로">멜로</td>
					<td><input type="checkbox" name="genre" value="액션">액션</td>
					<td><input type="checkbox" name="genre" value="애니메이션">애니메이션</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="genre" value="가족">가족</td>
					<td><input type="checkbox" name="genre" value="역사">역사</td>
					<td><input type="checkbox" name="genre" value="전쟁">전쟁</td>
					<td><input type="checkbox" name="genre" value="스포츠">스포츠</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="genre" value="뮤지컬">뮤지컬</td>
					<td><input type="checkbox" name="genre" value="공포">공포</td>
					<td><input type="checkbox" name="genre" value="스릴러">스릴러</td>
					<td><input type="checkbox" name="genre" value="SF">SF</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="genre" value="판타지">판타지</td>
					<td><input type="checkbox" name="genre" value="다큐멘터리">다큐멘터리</td>
					<td><input type="checkbox" name="genre" value="학원물">학원물</td>
					<td><input type="checkbox" name="genre" value="재난">재난</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="genre" value="드라마">드라마</td>
					<td><input type="checkbox" name="genre" value="음악">음악</td>
					<td><input type="checkbox" name="genre" value="퀴어">퀴어</td>
					<td><input type="checkbox" name="genre" value="범죄">범죄</td>
				</tr>
				<tr>
					<th>MPAARating</th>
					<td colspan="4">
						<select name="MPAARating">
							<option value="">등급을 선택하세요</option>
							<option value="전체관람가">전체관람가</option>
							<option value="12세 관람가">12세 관람가</option>
							<option value="15세 관람가">15세 관람가</option>
							<option value="청소년 관람불가">청소년 관람불가</option>
						</select>
					</td>
				</tr>
				<tr>
					<th  rowspan="3">Country</th>
					<td><input type="checkbox" name="country" value="한국">한국</td>
					<td><input type="checkbox" name="country" value="미국">미국</td>
					<td><input type="checkbox" name="country" value="일본">일본</td>
					<td><input type="checkbox" name="country" value="중국">중국</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="country" value="홍콩">홍콩</td>
					<td><input type="checkbox" name="country" value="프랑스">프랑스</td>
					<td><input type="checkbox" name="country" value="영국">영국</td>
					<td><input type="checkbox" name="country" value="독일">독일</td>
				</tr>	
				<tr>
					<td><input type="checkbox" name="country" value="인도">인도</td>
					<td><input type="checkbox" name="country" value="스웨덴">스웨덴</td>
					<td><input type="checkbox" name="country" value="아일랜드">아일랜드</td>
					<td><input type="checkbox" name="country" value="기타">기타</td>
				</tr>
				
				<tr>
					<th>ProductionYear</th>
					<td colspan="4">
						<input type="text" name="productionYear" placeholder=제작년도 maxlength="50" required>년
					</td>
				</tr>
				<tr>
					<th>RunTime</th>
					<td colspan="4">
						<input type="text" name="runTime" placeholder=러닝타임(분) maxlength="50" required>분
					</td>
				</tr>
				<tr>
					<th>ReleaseDate</th>
					<td colspan="4">
						<input type="date" name="releaseDate" placeholder=개봉일 maxlength="50" required>
					</td>
				</tr>
				<tr>
					<th>synopsis</th>
					<td colspan="4">
						<textarea style="width: 100%" name="synopsis" placeholder=줄거리 maxlength="2000" required></textarea>
					</td>
				</tr>
				<tr>
					<th>Poster</th>
					<td colspan="4">
						<input type="file" class="form-control" name="poster" accept="image/*" required>
					</td>
				</tr>
				<tr>
					<th>Still-cut1</th>
					<td colspan="4">
						<input type="file" class="form-control" name="movie_img1" accept="image/*" required>
					</td>
				</tr>
				<tr>
					<th>Still-cut2</th>
					<td colspan="4">
						<input type="file" class="form-control" name="movie_img2" accept="image/*" required>
					</td>
				</tr>
				<tr>
					<th>Trailer</th>
					<td colspan="4">
						<input type="text" name="trailer" placeholder="예고편링크" maxlength="50">
					</td>
				</tr>
				<tr>
					<th>Status</th>
					<td colspan="4">
						<input type="radio" name="status" value="비상영" checked>비상영
						<input type="radio" name="status" value="상영중">상영중
					</td>
				</tr>
				
				
				<tr>
					<td colspan="5" align="center">
						<input type="submit" class="btn btn-primary" value="입력">
						<input type="reset" class="btn btn-warning" value="초기화">
						<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
					</td>
				</tr>
				
				
			</table>
		</div>
	</form>
</div>
<!-- 영화정보 입력 모달 끝 -->