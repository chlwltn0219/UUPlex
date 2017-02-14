<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../../setting.jsp" %>

<html lang="ko">
<head>

	<link href="${resources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<style>
		.aa {
			width:400px;
			height:20px;
			margin: 30px;
		}
		
		.jb-cell {
			align:center;
			width: 450px;
	  		margin: 20px 0px 0px 10px;
	  		padding: 30px 0px 0px 0px;
	  		border: 3px solid #cccccc;
		}
	</style>
	
	<script src="/uuplex/resources/main_script/inputform.js"></script>
	
</head>    


<c:if test="${cnt != 1}">

<div class="container">
<h3 align="center"> 아이디 중복 체크</h3>

<div class="jb-cell" align="center">

  <h4><a style="color:blue">${memId}</a>는 사용 가능한 아이디 입니다.</h4> <br><br>

</div>
 
<div class="aa" align="center"> 
  <button type="button" class="btn btn-default" onclick="setId()">close</button>
</div>  
 </div> 
</c:if>  


<c:if test="${cnt == 1}">

<div class="container">
<h3 align="center"> 아이디 중복 체크</h3>
<div class="jb-cell" align="center">

 <h4><a style="color:red">${memId}</a>는 이미 등록된 아이디 입니다.</h4>
 <h4>다른 ID를 입력하세요.</h4>
 <br><br>
  
</div>
<div class="aa" align="center"> 
 <button type="button" class="btn btn-default" onclick="self.close()">close</button>
</div>   
 </div> 
  
</c:if>  