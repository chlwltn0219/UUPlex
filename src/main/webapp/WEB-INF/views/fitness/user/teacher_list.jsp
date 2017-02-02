<!-- 공통으로 필요한 라이브러리나 파일들은 Sitemesh 데코레이터에서 포함시키는 것이 좋습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../../setting.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<style>
.container {
    position: relative;
}

/* .mystyle {
    width: 100%;
    padding: 25px;
    background-color: coral;
    color: white;
    font-size: 25px;
    box-sizing: border-box;
} */

.image {
  opacity: 1;
  display: white;
  width: 270px;
  height: 270px;
  transition: .5s ease;
  backface-visibility: hidden;
  float:left;
  z-index: 30;
}

.middle {
  opacity: 1;
  font-size: 16px;
  width: 270px;
  height: 270px;
  vertical-align: bottom;
  padding-top: 135px;
  transition: .5s ease;
  z-index: 50;
  visibility: hidden;
}

.text {
  text-align: center;
  background: black;
  color: white;
  width: 270px;
  height: 135px;
}

.container .image:hover {
/*   opacity: 0.5; */
}

.middle:hover {
	visibility: visible;
}


/* img{ */
/* 	  float:left; */

/* } */

a{
    text-decoration: none !important;
}


</style>
</head>
<body>

<div class="container" >
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">스쿼시</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body">  
			<div class="content">
				<div class="image">
					<a href="#demo1" data-toggle="collapse"><img src="${resources}/fitness/img/내사랑.PNG" alt="Avatar" width="100%"></a>
				</div>
				<div class="middle">
					<div class="text">
					    서강준
					</div>
				</div>
					<div id="demo1" class="collapse">
				ㅈㄷㅎㅁㅈㄷㅎ
				</div>
			</div>
			
			 <div class="container">
			  <a href="#demo2" data-toggle="collapse"><img src="${resources}/fitness/img/내사랑.PNG" alt="Avatar" class="image"  data-toggle="collapse" data-target="#demo2">
			  <div class="middle">
			    <div class="text">서강준</div>
			  </div></a>
			    </div>
			        <div id="demo2" class="collapse">
			51313ㅈㄷㅎ
			</div>
			</div>
        </div>
    </div>
 
 
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">요가</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">  
              
			<div class="container">
			  <a href="#demo3" data-toggle="collapse"><img src="${resources}/fitness/img/Han.PNG" alt="Avatar" class="image">
			  <div class="middle">
			    <div class="text">한고은</div></div></a>
			</div>
			        <div id="demo3" class="collapse">
			ㅈㄷㅎㅁㅈㄷㅎ
			</div>
			</div>
			
			<br>
			<br>
			
			 <div class="container">
			  <a href="#demo4" data-toggle="collapse"><img src="${resources}/fitness/img/Han.PNG" alt="Avatar" class="image"  data-toggle="collapse" data-target="#demo2">
			  <div class="middle">
			    <div class="text">한고은</div></div></a>
			    </div>
			 <div id="demo4" class="collapse">
			51313ㅈㄷㅎ
			</div>
			</div>
			
			
        </div>
    
    
    

    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">수영</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">  
              
			<div class="container">
			  <a href="#demo5" data-toggle="collapse"><img src="${resources}/fitness/img/pel.png" alt="Avatar" class="image">
			  <div class="middle">
			    <div class="text">펠프스</div></div></a>
			    </div>
			        <div id="demo5" class="collapse">
			ㅈㄷㅎㅁㅈㄷㅎ
			</div>
			</div>
			
			<br>
			<br>
			
			 <div class="container">
			  <a href="#demo6" data-toggle="collapse"><img src="${resources}/fitness/img/pel.png" alt="Avatar" class="image"  data-toggle="collapse" data-target="#demo2">
			  <div class="middle">
			    <div class="text">펠프스</div></div></a>
			    </div>
			        <div id="demo6" class="collapse">
			51313ㅈㄷㅎ
			</div>
			</div>
			
			
        </div>
      </div>
</div>
</body>
</html>