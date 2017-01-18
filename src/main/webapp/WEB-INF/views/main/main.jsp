<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
  
  	<style>
  		header {
  			width:auto; height:100px;
	        line-height:100px;
	        margin: auto 0;
	        text-align:center;
  		}
  		
  		section {
  			margin:auto 0;
  			/* background:url(../images/logo2.jpg); */
  			padding:50px;
  		}
  	
	  	footer {
	       	 width:auto; height:100px;
	       	 background-color:#cccccc;
	         line-height:50px;
	         margin:50px auto 0;
	         border:1px solid #cccccc;
	         text-align:center;
	        }
	        
	    .navbar{
	        	height: 100px;
	        }
	        
	    .aa {
	    	border:1px solid #cccccc;
	    }    
	    
	    table {
	    	table-layout:fixed;
	    	margin: 0px 400px;
	    	width:1000px; 
	    	height:600px;
	    	align:center;
	    	border-collapse:seperate;
	    	border-spacing:20px 10px;
	    	text-align:center;
	    	font-size:2em;
	    }
	        
  	</style>
  
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

  </head>
  <body>
  
<header>
    <!-- <h1 align="center">U-PLEX!</h1> <br><br> -->

   <div class="navbar-wrapper"> <!-- 네비게이션바 막아주는거, 메뉴바 박스 -->
      <div class="containter"> <!-- 내용은 container안에 들어가야 함 -->
         <nav class="navbar navbar-inverse navbar-fixed-top"> <!-- inverse : 검게. 안주면 하얗게 -->
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
              <a class="navbar-brand" href="aa.html">UU-Plex</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="http://www.timessquare.co.kr/?controller=main&action=shopIntro">회사소개</a></li>
                <!-- active : 선택된 메뉴 표시 -->
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">매장소개<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="introduction.html">UU-Plex 소개</a></li>
                    <li><a href="gil.html">오시는길</a></li>
                  </ul>
                </li>
                                      
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">매장안내<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="https://tympanus.net/Development/Interactive3DMallMap">전체구성도</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">[층별안내]</li>
                    <li><a href="movie.html">1층 영화관</a></li>
                    <li><a href="fit_main.jsp">2층 휘트니스</a></li>
                    <li><a href="hotel.html">3층 호텔</a></li>
                  </ul>
                </li>
                                         
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">고객센터<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="board.jsp">고객게시판</a></li>
                    <li><a href="qa.jsp">Q&A</a></li>
                    <li><a href="review.jsp">후기</a></li>
                  </ul>
                </li>
                
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>

   <div style="height:70px"></div>
      
    
<div align="center">   
<!-- Standard button -->
<!-- <button type="button" class="btn btn-default">Default</button> -->

<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<button type="button" class="btn btn-primary">회사소개</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- Indicates a successful or positive action -->
<button type="button" class="btn btn-success">매장안내</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- Contextual button for informational alert messages -->
<button type="button" class="btn btn-info">고객센터</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- Indicates caution should be taken with this action -->
<button type="button" class="btn btn-warning">이벤트&쿠폰</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- Indicates a dangerous or potentially negative action -->
<button type="button" class="btn btn-danger">로그인</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
<!-- <button type="button" class="btn btn-link">Link</button> -->

</div> 

</header>

<script type="text/javascript">
var link;
window.onload=function(){
document.getElementById("cenImg").onclick=function(){

if(link){
location.href = link;

}
}
};
function ch(aa, bb){
document.getElementById("cenImg").src = aa;
link = bb;
}

</script>

<section>

<table border="1">

<tr>
	<td rowspan="2">
		영화 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/images/movie2.png','movie.html')">Movie</button>
	</td>
	<td>
		로고
	</td>
	<td colspan="2">
		식당 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/images/movie2.png','movie.html')">Food</button>
	</td>	
</tr>

<tr>	
	<td colspan="2" rowspan="2">
		로그인 <br><br>
		<button type="button" class="btn btn-default">Login</button>
		<button type="button" class="btn btn-default" onclick="window.location='inputForm'">회원가입</button> <br> <br>
		<img src="/uuplex/resources/images/m.png" id="cenImg" class="img-thumbnail" width="200px">
	</td>
	<td rowspan="3">
		호텔 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/images/ho.jpg','hotel.html')">Hotel</button>
	</td>
</tr>

<tr>	
	<td>
		휘트니스 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/images/fit2.png','fit_main.jsp')">Hotel</button>
	</td>
	

</tr>

<tr>	
	<td colspan="3">
		이벤트 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/images/image6.jpg','fit_main.jsp')">Event</button>
	</td>
</tr>

<!-- <a href="http://www.naver.com" target="_self">  -->




    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>

</table> 
  
</section>  
  
<footer>
       <p class="pull-right"><a href="#">Back to top</a></p>
       <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>

</body>
</html>