<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="/uuplex/resources/c-box/css/rating.css">   
<title>CBOX-영화정보관리</title>
<style>
	li{
		list-style-type: none;
	}
	
</style>
</head>
<body>
	<!-- Button trigger  영화정보입력 모달 -->
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addModal">add movie info
	</button>
	
	<!-- Button trigger  영화 리뷰 입력 모달 -->
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#reviewModal">add review
	</button>

	<!-- 영화정보 입력 모달 시작 -->
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">add movieInfo</h4>
				</div>
				
				<div class="modal-body">
					<!--  영화 정보 추가하기 -->
					<%-- 이미지 경로 확인 <img src="<%=request.getServletContext().getContextPath()%>/saveImage/kb01.jpg"> --%>
					
					<form action="AddMovieInfo" method="post" name="addform" enctype="multipart/form-data">
						<table class="table">
							
							<tr>
								<th>Title1</th>
								<td colspan="4"><input type="text" name="title1" placeholder="영화제목(한글)" maxlength="50" required></td>
							</tr>
							<tr>
								<th>Title2</th>
								<td><input type="text" name="title2" placeholder="영화제목(원제)" maxlength="50" ></td>
							</tr>
							<tr>
								<th>Director</th>
								<td colspan="4"><input type="text" name="director"placeholder="감독" maxlength="50" required></td>
							</tr>
							<tr>
								<th>Starring</th>
								<td colspan="4"><input type="text" name="starring"placeholder="주연배우" maxlength="50" required></td>
							</tr>
							<tr>
								<th rowspan="4">Genre</th>
							    <td ><input type="checkbox" name="genre" value="코미디">코미디</td>
								<td><input type="checkbox" name="genre" value="멜로">멜로 </td>
								<td><input type="checkbox" name="genre" value="액션">액션 </td>
								<td><input type="checkbox" name="genre" value="애니메이션">애니메이션</td>
								</tr>
							<tr>
								<td><input type="checkbox" name="genre" value="가족">가족</td>
								<td><input type="checkbox" name="genre" value="역사">역사 </td>
								<td><input type="checkbox" name="genre" value="전쟁">전쟁</td>
								<td><input	type="checkbox" name="genre" value="스포츠">스포츠</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="genre" value="뮤지컬">뮤지컬</td>
								<td><input type="checkbox" name="genre" value="공포">공포 </td>
								<td><input type="checkbox" name="genre" value="스릴러">스릴러 </td>
								<td><input type="checkbox" name="genre" value="SF">SF</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="genre" value="판타지">판타지</td>
								<td><input type="checkbox" name="genre" value="다큐멘터리">다큐멘터리</td>
								<td><input type="checkbox" name="genre" value="학원물">학원물 </td>
								<td><input type="checkbox" name="genre" value="재난">재난</td>
							</tr>
							<tr>
								<th>MPAARating
								<td colspan="4"><select name="MPAARating">
									<option value="">등급을 선택하세요</option>
									<option value="전체관람가">전체관람가</option>
									<option value="12세 관람가">12세 관람가</option>
									<option value="15세 관람가">15세 관람가</option>
									<option value="청소년 관람불가">청소년 관람불가</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>ProductionYear</th>
								<td colspan="4"><input type="text" name="productionYear"placeholder=제작년도 maxlength="50">년</td>
							</tr>
							<tr>
								<th>RunTime</th>
								<td colspan="4"><input type="text" name="runTime"placeholder=러닝타임(분) maxlength="50">분</td>
							</tr>
							<tr>
								<th>ReleaseDate</th>
								<td colspan="4"><input type="date" name="releaseDate"placeholder=개봉일 maxlength="50" required></td>
							</tr>
							<tr>
								<th>Synopsis</th>
								<td colspan="4"><textarea name="synopsis" style="width:100%">줄거리를 입력해주세요</textarea></td>
							</tr>
							<tr>
								<th>Poster</th>
								<td colspan="4"><input type="file" class="form-control" name="poster" ></td>
							</tr>
							<tr>
								<th>Still-cut1</th>
								<td colspan="4"><input type="file" class="form-control" name="movie_img1" ></td>
							</tr>
							<tr>
								<th>Still-cut2</th>
								<td colspan="4"><input type="file" class="form-control" name="movie_img2" ></td>
							</tr>
							<tr>
								<th>Trailer</th>
								<td colspan="4"><input type="text" name="trailer" placeholder="예고편링크" maxlength="50"></td>
							</tr>
							<tr>
								<th>Status</th>
								<td colspan="4"><input type="radio" name="status" value="비상영" checked>비상영
									<input type="radio" name="status" value="상영중">상영중
								</td>
							</tr>
							<tr>
								<td colspan="5" align="center">
									<input type="submit" class="btn btn-success" value="확인" >
									<input type="reset" class="btn" value="다시입력" >
								</td>
							</tr>
						</table>
					</form>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					
				</div>
			</div>
		</div>
	</div>
	<!-- 영화정보 입력 모달 끝 -->
	
	<!-- 영화리뷰 입력 모달 시작 -->
	<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">add review</h4>
				</div>
				
				<div class="modal-body">
					<!--  영화 리뷰 쓰기-->
					
					<form action="AddReview" method="post" name="reviewform" enctype="multipart/form-data">
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
								  	</span>
								  	<br>
								  	<output id="rating" for="star-input"><b>평점을 입력해주세요</b></output>						
								</td>
								<td><textarea style="width:250px; height:80px">로그인 후 이용가능한 서비스입니다.</textarea></td>
								<td><input class="btn" type="submit" value="등록"></td>
							</tr>
							
						</table>
					</form>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					
				</div>
			</div>
		</div>
	</div>
	<!-- 영화리뷰 입력 모달 끝 -->
	
	<script src="/uuplex/resources/js/jquery-1.11.3.min.js"></script>
	<script src="/uuplex/resources/js/star.js"></script>
	
</body>
</html>