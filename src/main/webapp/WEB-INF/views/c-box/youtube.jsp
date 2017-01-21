<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩 101 템플릿</title>

    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
   
   <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
   
	<style type="text/css">
		header {
			height : 50px;
			border: 1px solid red;
		}
	</style>

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 <body>

   <div class="navbar-wrapper"> <!-- 네비게이션바 막아주는거, 메뉴바 박스 -->
      <div class="containter"> <!-- 내용은 container안에 들어가야 함 -->
         <nav class="navbar navbar-inverse"> <!-- inverse : 검게. 안주면 하얗게 -->
         <!-- navbar-fixed-top : 스크롤 내릴때 따라옴, static은 위에 고정 -->
            <div class="container">
            <div class="navbar-header">
            <!-- navbar-header : 화면 크기 작아질 때 상단 오른쪽줄 모양 아이콘 -->            
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
             <span class="sr-only">Toggle navigation</span>
             <span class="icon-bar"></span> <!-- 가로줄 아이콘의 한줄 -->
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
           </button>
            <!-- 화면 크기 작아질 때 상단 오른쪽줄 모양 아이콘 -->  
              <a class="navbar-brand" href="#">UU-Plex</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">씨박스</a></li>
                <!-- active : 선택된 메뉴 표시 -->
                <li><a href="#about">영화</a></li>
                <li><a href="#contact">예매</a></li>                      
                <li><a href="#contact">이벤트</a></li>                         
                <li><a href="#contact" 
				data-toggle="modal" data-target="#myModal">로그인</a></li>  
                                   
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">마이페이지<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">정보수정</a></li>
                    <li><a href="#">수강 내역/환불</a></li>
                    <li><a href="#">문의 내역</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>

   <div style="height:70px"></div>
   
   <!-- 슬라이드 쇼 : 캐러셀 -->
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div style="padding:0 500px" class="item active">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/Jlp94-C31cY" frameborder="0" allowfullscreen></iframe>
				<div class="carousel-caption"></div>
			</div>
			<div style="padding:0 500px" class="item">
				<!-- <iframe width="560" height="315" src="https://www.youtube.com/embed/Q4Z5jfjxdvQ" frameborder="0" allowfullscreen></iframe> -->
				<img src="C:\Dev\workspace\SPRING_mvcMovie\src\main\webapp\resources\mainImg\image.jpg">
				<div class="carousel-caption"></div>
			</div>
			<div style="padding:0 500px" class="item">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/w3ugHP-yZXw" frameborder="0" allowfullscreen></iframe>
				<div class="carousel-caption"></div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	<!-- 캐러셀 끝 -->
	<!-- 모달 시작 -->
	<!-- Button trigger modal -->
	

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">로그인</h4>
				</div>
				<div class="modal-body">
					<input type="text" name="id" placeholder="아이디" maxlength="20">
					<input type="text" name="passwd" placeholder="비밀번호" maxlength="20">
					<input type="button" class="btn btn-success" value="로그인" onclick="">
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 끝 -->
	
	
	
      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->

   
  </body>
</html>