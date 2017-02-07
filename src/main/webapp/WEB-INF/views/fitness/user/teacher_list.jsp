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

.panel-body {
	border-style: solid;
	border-width:1px;
}

.panel-heading {
	background-color:black;
	color:white;
}

.image {
	display: white;
	width: 330px;
	height: 300px;
	padding:30px;
	text-align: center;
}

.text {
/*   text-align: center; */
	color: black;
	width: 330px;
	height: 135px;
	padding: 0 30px;
  
}

.content {
	 float:left; 
}


a{
    text-decoration: none !important;
}


</style>
</head>
<body>
<div class="container" >

  <div class="panel-group" id="accordion">
	<c:forEach var="s" items="${sports}">
    <div class="panel">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#s${s.sid}">${s.sname}</a>
        </h4>
      </div>
      <div id="s${s.sid}" class="panel-collapse collapse">
        <div class="panel-body">
        <div style="width: 990px; margin: 0 auto;">
        	<c:forEach items="${dtos}" var="t">
        	<c:if test="${s.sid == t.sid}">
			<div class="content">
				<div class="image">
					<img src="/teacherImg/${t.tpicture}" width="100%" height="100%" alt="Avatar">
				</div>
				
					<div class="text">
					강사명 : ${t.tname}
					<br>							
					강사 이력 ▼	
					<br>				
					${t.tinfo}
					
					</div>
			</div>
        	</c:if>
        	</c:forEach>

	</div>
	</div>
	</div>	
	
        </div>
        
	</c:forEach>  
	<hr style="visibility: hidden;">
      </div>
 
</div>
</body>
</html>
