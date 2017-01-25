<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  			margin:auto 0;
  			/* background:url(../images/logo2.jpg); */
  			padding:50px;
  		}
  	
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

<section>

<table border="1">

<tr>
	<td rowspan="2">
		영화 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/movie2.png','movie.html')">Movie</button>
	</td>
	<td>
		로고
	</td>
	<td colspan="2">
		식당 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/movie2.png','movie.html')">Food</button>
	</td>	
</tr>

<tr>	
	<td colspan="2" rowspan="2">
		로그인 <br><br>
		<button type="button" class="btn btn-default" onclick="window.location='loginForm'">Login</button>
		
		<!-- <div id="result"></div> -->
		
		<button type="button" class="btn btn-default" onclick="window.location='input'">회원가입</button> <br> <br>
		<img src="/uuplex/resources/main_images/m.png" id="cenImg" class="img-thumbnail" width="200px">
	</td>
	<td rowspan="3">
		호텔 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/ho.jpg','hotel.html')">Hotel</button>
	</td>
</tr>

<tr>	
	<td>
		휘트니스 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/fit2.png','fit_main.jsp')">Hotel</button>
	</td>
	

</tr>

<tr>	
	<td colspan="3">
		이벤트 <br>
		<button type="button" class="btn btn-default" onclick="ch('/uuplex/resources/main_images/hotel3.png','fit_main.jsp')">Event</button>
	</td>
</tr>

</table> 
  
</section> 

</body>
</html>