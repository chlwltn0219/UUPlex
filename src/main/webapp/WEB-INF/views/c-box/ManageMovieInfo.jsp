<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<!-- 부트스트랩 -->
<!-- 	    <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<!-- 	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<!-- 	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"> -->
	   
<!-- 	   <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> -->
<!-- 	   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
	   
</head>
<body>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">add movie info
	</button>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
					<ul>
					<li><input type="text" name="movie_num" placeholder="영화번호" maxlength="10"></li>
					<li><input type="text" name="title1" placeholder="영화제목1" maxlength="50"></li>
					<li><input type="text" name="title2" placeholder="영화제목2" maxlength="50"></li>
					<li><input type="text" name="director" placeholder="감독" maxlength="50"></li>
					<li><input type="text" name="starring" placeholder="주연배우" maxlength="50"></li>
					<li><input type="text" name="genre" placeholder="장르" maxlength="50"></li>
					<li><select name="MPAARating">
						<option value="전체관람가">전체관람가</option>
						<option value="12세 관람가">12세 관람가</option>
						<option value="15세 관람가">15세 관람가</option>
						<option value="청소년 관람불가">청소년 관람불가</option>
					
					</select></li>
					
					<input type="text" name="MPAARating" placeholder=관람등급 maxlength="50">
					</ul>
					
					<input type="button" class="btn btn-success" value="로그인" onclick="">
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 끝 -->
</body>
</html>