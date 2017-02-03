<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class="no-js">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>여기는 UUPLEX 입니다</title>
    <meta name="description" content="Card Expansion Effect with SVG clipPath" />
    <meta name="keywords" content="clipPath, svg, effect, layout, expansion, images, grid, polygon" />
    <meta name="author" content="Claudio Calautti for Codrops" />
	<link href="${resources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="/uuplex/resources/main_script/mainCss/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/uuplex/resources/main_script/mainCss/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/uuplex/resources/main_script/mainCss/demo.css" />
    <link rel="stylesheet" type="text/css" href="/uuplex/resources/main_script/mainCss/card-4.css" />
    <link rel="stylesheet" type="text/css" href="/uuplex/resources/main_script/mainCss/pattern-4.css" />
    <!--[if IE]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script>
    if (navigator.userAgent.toLowerCase().indexOf('firefox') > -1) {
        var root = document.getElementsByTagName('html')[0];
        root.setAttribute('class', 'ff');
    };
    </script>
</head>

<body class="demo-4">
    <div class="container">
        <header class="codrops-header">
            <div class="codrops-links">
                <a class="codrops-icon codrops-icon--prev" href="" title="Previous Demo"><span>Previous Demo</span></a>
                <a class="codrops-icon codrops-icon--drop" href="" title="Back to the article"><span>Back to the Codrops article</span></a>
            </div>
            <h1>Enjoy your Life! with UUPlex <span>UUPlex에 오신 것을 환영합니다</span></h1>
            <nav class="codrops-demos">
            <c:if test="${idCode == null}">
                <a href="/uuplex/input">회원가입</a>
                <a data-toggle="modal" data-target="#loginModal" href="/uuplex/noneSM/loginForm">로그인</a>
                <a href="/uuplex/notice?shopCode=100">고객센터</a>
            </c:if>
            
            <c:if test="${idCode == 105}">
				<a href="/uuplex/memInfo">마이페이지</a>
				<a href="/uuplex/logout">로그아웃</a>
				<a href="/uuplex/notice?shopCode=100">고객센터</a>
			</c:if>
			
			<c:if test="${idCode == 101}">
				<a href="/uuplex/memberList?grade=전체">회원관리</a>
				<a href="/uuplex/logout">로그아웃</a>
				<a href="/uuplex/notice?shopCode=100">고객센터</a>
			</c:if>
                
            </nav>
        </header>
        <div class="content">
            <!-- trianglify pattern container -->
            <div class="pattern pattern--hidden"></div>
            <!-- cards -->
            <div class="wrapper">
                <div class="card">
                    <div class="card__container card__container--closed">
                        <svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
                            <defs>
                                <clipPath id="clipPath1">
                                    <polygon class="clip" points="0,1200 0,0 1920,0 1920,1200"></polygon>
                                </clipPath>
                            </defs>
                            <image clip-path="url(#clipPath1)" width="1920" height="500" xlink:href="/uuplex/resources/main_images/movie2.png"></image>
                        </svg>
                        <div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">C-BOX</h2>
								<p class="card__subtitle">최상의 멀티플렉스 영화관</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<span class="meta__author"></span>
									<span class="meta__date">대표  : 유영원, 박주은</span>
								</div>
								
								<p>BEST Movie</p>
								<p>C-Box는 여러분들에게 최상의 서비스로 찾아갑니다.</p>
								<img width="500" height="300" src="/uuplex/resources/main_images/movie3.png"> <br><br>
								<button type="button" class="btn btn-danger" onclick="window.location='/uuplex/c-box'">바로가기</button>
							
							</div>
						</div>
					</div>
                </div>
                <div class="card">
                    <div class="card__container card__container--closed">
                        <svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 1200" preserveAspectRatio="xMidYMid slice">
                            <defs>
                                <clipPath id="clipPath2">
                                    <polygon class="clip" points="0,1200 0,0 1920,0 1920,1200"></polygon>
                                </clipPath>
                            </defs>
                            <image width="1920" height="1200" href="/uuplex/resources/main_images/uplex1.png"></image>
                        </svg>
                        <div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">About UU-Plex</h2>
								<p class="card__subtitle">A story about UU-Plex</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<span class="meta__author"></span>
									<span class="meta__date">대표 : 유기민</span>
								</div>
								<p>최상의 서비스를 약속드립니다.</p>
								<p>대한민국 No.1 복합쇼핑몰 W-PLEX! 타임스퀘어는 단순한 쇼핑 공간을 넘어 백화점, 멀티플렉스, 쇼핑몰, 레스토랑 등 도시적이고 세련된 공간과 휴식광장, 테라스, 분수와 정원 등 유롭고 친근한 자연의 공간이 어우러진 선진국형 라이프스타일센터입니다.</p>
								<p>UUPlex 소개</p>
								<button type="button" class="btn btn-default" onclick="window.location='/uuplex/introduce'">소개</button><br><br>
								<p>UUPlex 오시는길</p>
								<button type="button" class="btn btn-default" onclick="window.location='/uuplex/roadMap'">오시는길</button><br><br>
								<img width="500" height="300" src="/uuplex/resources/main_images/uplex1.png"> <br><br>
				
							</div>
						</div>
					</div>
                </div>
                <div class="card">
                    <div class="card__container card__container--closed">
                        <svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 1200" preserveAspectRatio="xMidYMid slice">
                            <defs>
                                <clipPath id="clipPath3">
                                    <polygon class="clip" points="0,1200 0,0 1920,0 1920,1200"></polygon>
                                </clipPath>
                            </defs>
                            <image clip-path="url(#clipPath3)" width="1920" height="1200" xlink:href="/uuplex/resources/main_images/ho.jpg"></image>
                        </svg>
                        <div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Hotel</h2>
								<p class="card__subtitle">최고의 서비스 & 베스트 호텔</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<span class="meta__author"></span>
									<span class="meta__date">대표 : 정유라</span>
								</div>
								<p>BEST Hotel</p>
								<p>최고의 룸서비스로 찾아갑니다.</p>
								<img width="500" height="300" src="/uuplex/resources/main_images/hotel3.png"><br><br>
								<button type="button" class="btn btn-warning" onclick="window.location='/uuplex/hotel'">바로가기</button>
							</div>
						</div>
					</div>
                </div>
                <div class="card">
                    <div class="card__container card__container--closed">
                        <svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 1200" preserveAspectRatio="xMidYMid slice">
                            <defs>
                                <clipPath id="clipPath4">
                                    <polygon class="clip" points="0,1200 0,0 1920,0 1920,1200"></polygon>
                                </clipPath>
                            </defs>
                            <image clip-path="url(#clipPath4)" width="1920" height="1200" xlink:href="/uuplex/resources/main_images/fit3.png"></image>
                        </svg>
                        <div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Fitness</h2>
								<p class="card__subtitle">최고의 휘트니스 강사진 & 프로그램</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<span class="meta__author"></span>
									<span class="meta__date">대표 : 김진우, 최지수</span>
								</div>
								<p>BEST Fitness</p>
								<p>최고의 휘트니스 강사진과 프로그램이 여러분을 찾아갑니다.</p>
								<img width="500" height="300" src="/uuplex/resources/main_images/fit2.png"><br><br>
								<button type="button" class="btn btn-success" onclick="window.location='/uuplex/fitness'">바로가기</button>
							</div>
						</div>
					</div>
                </div>
                
                <div class="card">
                	<div class="card__container card__container--closed">
                        <svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 1200" preserveAspectRatio="xMidYMid slice">
                            <defs>
                                <clipPath id="clipPath4">
                                    <polygon class="clip" points="0,1200 0,0 1920,0 1920,1200"></polygon>
                                </clipPath>
                            </defs>
                            <image clip-path="url(#clipPath4)" width="1920" height="1200" xlink:href="/uuplex/resources/main_images/back.png"></image>
                        </svg>
                        <div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Information</h2>
								<p class="card__subtitle">문화 공간을 하나로 통하게 하는 UU-Plex</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<span class="meta__author"></span>
									<span class="meta__date"></span>
								</div>
								<p>층별 안내도</p>
								<img width="500" height="300" src="/uuplex/resources/main_images/1.png"><br><br>
								<button type="button" class="btn btn-info" onclick="window.location='/uuplex/floor'">바로가기</button>
							</div>
						</div>
					</div>    
                </div>
                
                <div class="card">
                    <div class="card__container card__container--closed">
                        <svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 1200" preserveAspectRatio="xMidYMid slice">
                            <defs>
                                <clipPath id="clipPath6">
                                    <polygon class="clip" points="0,1200 0,0 1920,0 1920,1200"></polygon>
                                </clipPath>
                            </defs>
                            <image clip-path="url(#clipPath6)" width="1920" height="1200" xlink:href="/uuplex/resources/main_images/theater.png"></image>
                        </svg>
                        <div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Events</h2>
								<p class="card__subtitle">When it's too hot to think</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<span class="meta__date">06/10/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<button type="button" class="btn btn-primary" onclick="window.location='/uuplex/event?shopCode=100'">이벤트 바로가기</button>
							</div>
						</div>
					</div>
                </div>
            </div>
            <!-- /cards -->
        </div>
        <!-- Related demos -->
		<section class="content content--related">
			<p>If you enjoyed this demo you might also like:</p>
			<a class="media-item" href="">
				<img class="media-item__img" src="img/related/GridItemAnimation.jpg">
				<h3 class="media-item__title">Grid Item Animation Layout</h3>
			</a>
			<a class="media-item" href="">
				<img class="media-item__img" src="img/related/ThumbnailGridExpandingPreview.jpg">
				<h3 class="media-item__title">Thumbnail Grid with Expanding Preview</h3>
			</a>
		</section>
    </div>
    
    <%@ include file="/admin_Modal/login_modal.jsp" %>
    <!-- /container -->
    <!-- JS -->
    <script src="/uuplex/resources/main_script/mainView/trianglify.min.js"></script>
    <script src="/uuplex/resources/main_script/mainView/TweenMax.min.js"></script>
    <script src="/uuplex/resources/main_script/mainView/ScrollToPlugin.min.js"></script>
    <script src="/uuplex/resources/main_script/mainView/cash.min.js"></script>
    <script src="/uuplex/resources/main_script/mainView/Card-polygon-4.js"></script>
    <script src="/uuplex/resources/main_script/mainView/demo-4.js"></script>
    
    <!-- 부트스트랩 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="${resources}/bootstrap/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${resources}/js/slowTop.js"></script>
	<script type="text/javascript" src="${resources}/js/menuActive.js"></script>
</body>

</html>
