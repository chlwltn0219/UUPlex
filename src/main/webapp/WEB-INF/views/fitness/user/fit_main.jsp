<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>  
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
    	div.carousel {
/*     		margin: 30px 0 ; */
    	}
    	
    	div.carousel-inner img {
    		width: 100%;
    	}
    	div.menu img {
    		width: 60%;
    	}
     	.board th:first-child, 
     	.board td:first-child{
     		width: 75%;
     	}
    	
     	.content {
     		text-align: center;
     	}
     	
     	div.row {
     		margin-bottom: 60px;
     	}
     	
     	.menu img {
      		background: #C0C0C0; 
     	}
     	
     	.container {
     		width: 50%;
     	}
/*      	
     	* {
     		border: 1px solid red;
     	}
     	 */
    </style>
  </head>
  <body>
  	
<div class="container content">
    <!-- 캐러셀 ================================================== -->
		<div id="fitness-carousel" class="carousel slide row" data-ride="carousel">
			<!-- Indicators -->
			<!-- 하단 버튼 -->
			<ol class="carousel-indicators">
				<li data-target="#fitness-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#fitness-carousel" data-slide-to="1"></li>
			<!--     <li data-target="#carousel-example-generic" data-slide-to="2"></li> -->
			</ol>
		
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${resources}/fitness/img/1.jpg" alt="...">
					<div class="carousel-caption">
						<h4>연인과 함께 멋진 몸 만들기!</4>
					</div>
			  	</div>
				<div class="item">
					<img src="${resources}/fitness/img/2.jpg" alt="...">
					<div class="carousel-caption">
						<h4>점심 종이 울린 후의 나</h4>
					</div>
				</div>
<!-- 				캐러셀 전체 설명 -->
			</div>
		
		  <!-- Controls -->
		  <a class="left carousel-control" href="#fitness-carousel" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#fitness-carousel" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		
	  <!-- 3열 메뉴 -->
		<div class="row menu">
			<div class="col-sm-4">
				<a href="#"><img class="img-circle" src="${resources}/fitness/img/noun_645979_cc.png" alt="Program Info"></a>
				<h2>프로그램 안내</h2>
			</div><!-- /.col-lg-4 -->
			<div class="col-sm-4">
				<a href="#"><img class="img-circle" src="${resources}/fitness/img/noun_667847_cc.png" alt="Program Info"></a>
				<h2>수강 신청</h2>
			</div><!-- /.col-lg-4 -->
			<div class="col-sm-4">
				<a href="#"><img class="img-circle" src="${resources}/fitness/img/noun_99372_cc.png" alt="Program Info"></a>
				<h2>환불</h2>
			</div><!-- /.col-lg-4 -->
		</div><!-- /.row -->
  
       <!-- 미니 게시판 -->
		<div class="row featurette">
			<div class="col-sm-6">
				<table class="table table-condensed board">
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
				<table class="table table-condensed board">
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
    </div>
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
</html>
