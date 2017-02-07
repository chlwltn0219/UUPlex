<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>  
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Fitness Main</title>
    
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
     	
     	.carousel, 
     	div.menu>div, 
     	div.board>div{
     		margin-bottom: 60px;
     	}
     	
     	.menu img {
      		background: #C0C0C0; 
     	}
     	
     	
     	@media screen and (min-width: 1170px) {
	     	.container {
 	     		width: 970px; 
	     	}
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
						<h4>연인과 함께 멋진 몸 만들기!</h4>
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
				<a href="/uuplex/fitness/user/reserve"><img class="img-circle" src="${resources}/fitness/img/noun_667847_cc.png" alt="Program Info"></a>
				<h2>수강 신청</h2>
			</div><!-- /.col-lg-4 -->
			<div class="col-sm-4">
				<a href="#"><img class="img-circle" src="${resources}/fitness/img/noun_99372_cc.png" alt="Program Info"></a>
				<h2>환불</h2>
			</div><!-- /.col-lg-4 -->
		</div><!-- /.row -->
  
       <!-- 미니 게시판 -->
<!-- 		<div class="row board"> -->
<!-- 			<div class="col-sm-6"> -->
<!-- 				<table class="table table-condensed board"> -->
<!-- 					<thead> -->
<!-- 						<tr> -->
<!-- 							<th colspan="3"> 공지사항 </th> -->
<!-- 							<td align="right"><a>&lt;더 보러가기&gt;</a></td> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 					<tbody> -->
<!-- 						<tr> -->
<!-- 							<th colspan="3">Title</th> -->
<!-- 							<th>Regdate</th> -->
<!-- 						</tr>	 -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>최근 공지 사항합니다. 안녕하세요.</a></td> -->
<!-- 							<td>2010-01-17</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>제목2</a></td> -->
<!-- 							<td>2010-01-17</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>제목3</a></td> -->
<!-- 							<td>2010-01-17</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>제목4</a></td> -->
<!-- 							<td>2010-01-17</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>제목5</a></td> -->
<!-- 							<td>2010-01-17</td> -->
<!-- 						</tr> -->
<!-- 					</tbody> -->
<!-- 				</table> -->
<!-- 			</div> -->
<!-- 			<div class="col-sm-6"> -->
<!-- 				<table class="table table-condensed board"> -->
<!-- 					<thead> -->
<!-- 						<tr> -->
<!-- 							<th colspan="3"> FAQ </th> -->
<!-- 							<td align="right"><a>&lt;더 보러가기&gt;</a></td> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 					<tbody> -->
<!-- 						<tr> -->
<!-- 							<th colspan="3">Question</th> -->
<!-- 							<th>조회수</th> -->
<!-- 						</tr>	 -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>강의 신청은 어떻게 하나요 ?</a></td> -->
<!-- 							<td>315</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>환불 규정은 어떻게 되나요 ?</a></td> -->
<!-- 							<td>287</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>꼭 회원 가입을 해야하나요 ?</a></td> -->
<!-- 							<td>230</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>어떠한 프로그램이 있나요 ?</a></td> -->
<!-- 							<td>120</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td colspan="3"><a>회원 탈퇴를 하고 싶습니다.</a></td> -->
<!-- 							<td>78</td> -->
<!-- 						</tr> -->
<!-- 					</tbody> -->
<!-- 				</table> -->
<!-- 			</div> -->
<!-- 		</div> -->
    </div>
  
  </body>
</html>
