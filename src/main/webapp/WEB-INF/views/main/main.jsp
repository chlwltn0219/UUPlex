<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
=======
<%@ include file="../setting.jsp" %>
    
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
<html>
<head>

	<script src="/uuplex/resources/main_script/login.js"></script>

  
  	<style>
  		header {
  			width:auto; height:100px;
	        line-height:100px;
	        margin: auto 0;
	        text-align:center;
  		}
  		
  		section {
<<<<<<< HEAD
  			margin:auto 0;
  			/* background:url(../images/logo2.jpg); */
  			padding:50px;
  		}
=======
  			margin:0px 30px;
  			/* background:url(../images/logo2.jpg); */
  			padding:50px;
  			/* background:url(/uuplex/resources/main_images/back.png); */
  			
  		}

>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
  	
	  	/* footer {
	       	 width:auto; height:100px;
	       	 background-color:#cccccc;
	         line-height:50px;
	         margin:50px auto 0;
	         border:1px solid #cccccc;
	         text-align:center;
	    } */
	    
	    table {
	    	table-layout:fixed;
	    	margin: 0px;
	    	width:900px; 
	    	height:600px;
	    	align:center;
	    	border-collapse:seperate;
	    	border-spacing:20px 10px;
	    	text-align:center;
	    	font-size:2em;
	    }
	        
  	</style>
  
<!--     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다
    <title>부트스트랩 101 템플릿</title>

    부트스트랩
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
	
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->

  </head>
  <body>

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

<<<<<<< HEAD
=======
<<<<<<< HEAD
<div class="container">
=======
>>>>>>> a1981011c64e4988ec7d4453f65aa5acfc684469

>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
<section>

<table border="1">

<tr>
	<td rowspan="2">
		영화 <br>
<<<<<<< HEAD
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/movie2.png','movie.html')">Movie</button>
=======
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/movie2.png','c-box')">Movie</button>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
	</td>
	<td>
		로고
	</td>
	<td colspan="2">
		식당 <br>
<<<<<<< HEAD
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/movie2.png','movie.html')">Food</button>
=======
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/movie2.png','movie')">Food</button>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
	</td>	
</tr>

<tr>	
	<td colspan="2" rowspan="2">
<<<<<<< HEAD
=======
		<c:if test="${empty id}">
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
		로그인 <br><br>
		<button type="button" class="btn btn-default" onclick="window.location='loginForm'">Login</button>
		
		<!-- <div id="result"></div> -->
		
		<button type="button" class="btn btn-default" onclick="window.location='input'">회원가입</button> <br> <br>
<<<<<<< HEAD
=======
		</c:if>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
		<img src="/uuplex/resources/main_images/m.png" id="cenImg" class="img-thumbnail" width="200px">
	</td>
	<td rowspan="3">
		호텔 <br>
<<<<<<< HEAD
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/ho.jpg','hotel.html')">Hotel</button>
=======
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/ho.jpg','hotel')">Hotel</button>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
	</td>
</tr>

<tr>	
	<td>
		휘트니스 <br>
<<<<<<< HEAD
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/fit2.png','fit_main.jsp')">Hotel</button>
=======
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/fit2.png','fitness')">Fitness</button>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
	</td>
	

</tr>

<tr>	
	<td colspan="3">
		이벤트 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/hotel3.png','fit_main.jsp')">Event</button>
	</td>
</tr>

</table> 
<<<<<<< HEAD
  
</section> 
=======

<<<<<<< HEAD
=======
  
>>>>>>> a1981011c64e4988ec7d4453f65aa5acfc684469
</section> 
</div> 
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a

</body>
</html>