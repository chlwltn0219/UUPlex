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

.title {
	margin-bottom: 2em;
}



</style>
</head>
<body>
<div class="container" >

	<img class="title" src="${resources}/fitness/img/program.png">
	
  <div class="panel-group" id="accordion">
	<c:forEach var="s" items="${sports}">
    <div class="panel">
      <div class="panel-heading">
        <h4 class="panel-title">
          ${s.sname}
<%--           <a data-toggle="collapse" data-parent="#accordion" href="#s${s.sid}">${s.sname}</a> --%>
        </h4>
      </div>
	      <div id="s${s.sid}" class="panel-collapse collapse in">
      	
        <div class="panel-body">
        	
        	<table class="table">
				<thead>
					<tr>
						<th width="50%" height="50">프로그램명</th>
						<th width="15%" height="50">강사명</th>
						<th width="35%" height="50">프로그램정보</th>
					</tr>
				</thead>
        
        	<c:forEach items="${dto}" var="p" varStatus="status">
        	<c:if test="${s.sid == p.sid}">
        	
				<tr>
					<td>${p.pname}</td>
					<td>${p.tname}</td>
					<td>${p.pinfo}</td> 
				</tr>
				
			</c:if>
       		</c:forEach>
       		
       		</table>
		</div>
	</div>	
  </div>
</c:forEach>  
    </div>
</div>
 
</body>
</html>




									

