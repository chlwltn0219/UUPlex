<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Fitness Main</title>
    <!-- 부트스트랩 -->
    <link href="../resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style type="text/css">
    	div.top {
    		height: 50px;
    	}
    	div.box {
    		margin-top: 25px;
    		margin-bottom: 25px;
    	}
     	nav.navbar {
/*       		height: 100px; */
     	}
     	.menu, .carousel-inner {
     		text-align: center;
     	}
     	table.notice tbody th, table.notice tbody td{
     		text-align: center;
     	}
     	table.notice tbody th:first-child, table.notice tbody td:first-child{
     		width: 75%;
     	}
    </style>
  </head>
  <body>
  	
<!-- NAVBAR ================================================== -->
  	<div class="navbar-wrapper">	<!-- 메뉴바 박스 -->
  		<div class="container"> 	<!-- 내용 컨테이너 안에 위치 -->
  			<nav class="navbar navbar-inverse">
  				<div class="contatiner">
  					 <div class="container">
						<div class="navbar-header">
							<!-- 모바일 메뉴 버튼 -->
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target="#navbar"
								aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span> 
								<span class="icon-bar"></span> 
								<span class="icon-bar"></span> 
								<span class="icon-bar"></span>
							</button>
							<!-- 타이틀 메인 -->
							<a class="navbar-brand" href="#">UU-Plex</a>
						</div>

						<div id="navbar" class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">휘트니스</a></li>
								<li><a href="#">프로그램 안내</a></li>
								<li><a href="#">강사 안내</a></li>
								<li><a href="#">수강 신청</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 마이페이지 <span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">정보 수정</a></li>
										<li><a href="#">수강 내역/환불</a></li>
										<li><a href="#">환불 내역</a></li>
										<li><a href="#">문의 내역</a></li>
<!-- 										<li class="divider"></li> -->
<!-- 										<li class="dropdown-header">Nav header</li> -->
<!-- 										<li><a href="#">Separated link</a></li> -->
<!-- 										<li><a href="#">One more separated link</a></li> -->
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
		</div>
  	</div>
  	
  	<div class="top"></div>
  	
    <!-- Carousel ================================================== -->
	<div class="container box">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<!-- 하단 버튼 -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<!--     <li data-target="#carousel-example-generic" data-slide-to="2"></li> -->
			</ol>
		
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="http://placehold.it/1200x400" alt="...">
					<div class="carousel-caption">
						캐러셀 1면 입니다.
					</div>
			  	</div>
				<div class="item">
					<img src="http://placehold.it/1200x400" alt="...">
					<div class="carousel-caption">
						캐러셀 2면 입니다.
					</div>
				</div>
				캐러셀 전체 설명
			</div>
		
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</div>
<!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container box menu">
	  <!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-sm-4">
				<img class="img-circle" src="http://placehold.it/140?text=Program" alt="Generic placeholder image" width="140" height="140">
				<h2>프로그램 안내</h2>
			</div><!-- /.col-lg-4 -->
			<div class="col-sm-4">
				<img class="img-circle" src="http://placehold.it/140?text=Register" alt="Generic placeholder image" width="140" height="140">
				<h2>수강 신청</h2>
			</div><!-- /.col-lg-4 -->
			<div class="col-sm-4">
				<img class="img-circle" src="http://placehold.it/140?text=Refund" alt="Generic placeholder image" width="140" height="140">
				<h2>환불</h2>
			</div><!-- /.col-lg-4 -->
		</div><!-- /.row -->
  
       <!-- START THE FEATURETTES -->

		<hr>
		
		<div class="row featurette">
			<div class="col-sm-6">
				<table class="table table-condensed notice">
					<thead>
						<tr>
							<th colspan="3"> 공지사항 </th>
							<td align="right"><a>&lt;더 보러가기&gt;</a></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th colspan="3">Title</th>
							<th>Regdate</th>
						</tr>	
						<tr>
							<td colspan="3"><a>최근 공지 사항합니다. 안녕하세요.</a></td>
							<td>2010-01-17</td>
						</tr>
						<tr>
							<td colspan="3"><a>제목2</a></td>
							<td>2010-01-17</td>
						</tr>
						<tr>
							<td colspan="3"><a>제목3</a></td>
							<td>2010-01-17</td>
						</tr>
						<tr>
							<td colspan="3"><a>제목4</a></td>
							<td>2010-01-17</td>
						</tr>
						<tr>
							<td colspan="3"><a>제목5</a></td>
							<td>2010-01-17</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-sm-6">
				<table class="table table-condensed notice">
					<thead>
						<tr>
							<th colspan="3"> FAQ </th>
							<td align="right"><a>&lt;더 보러가기&gt;</a></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th colspan="3">Question</th>
							<th>조회수</th>
						</tr>	
						<tr>
							<td colspan="3"><a>강의 신청은 어떻게 하나요 ?</a></td>
							<td>315</td>
						</tr>
						<tr>
							<td colspan="3"><a>환불 규정은 어떻게 되나요 ?</a></td>
							<td>287</td>
						</tr>
						<tr>
							<td colspan="3"><a>꼭 회원 가입을 해야하나요 ?</a></td>
							<td>230</td>
						</tr>
						<tr>
							<td colspan="3"><a>어떠한 프로그램이 있나요 ?</a></td>
							<td>120</td>
						</tr>
						<tr>
							<td colspan="3"><a>회원 탈퇴를 하고 싶습니다.</a></td>
							<td>78</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

      <!-- /END THE FEATURETTES -->

    </div><!-- /.container -->
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
</html>
