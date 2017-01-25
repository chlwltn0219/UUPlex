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

	<style>
		.aa {
			width:300px;
			height:300px;
		}
	</style>
	
	<script src="/uuplex/resources/main_script/inputform.js"></script>
	
</head>    

<c:if test="${cnt != 1}">

<div class="aa">

<h4>${memId}는 사용 가능한 아이디 입니다.</h4> <br>


 <!-- Modal -->
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ID 중복 체크</h4>
        </div>
        <div class="modal-body">
          <p>${memId}는 사용 가능한 아이디 입니다.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div> 
  </div>
  <!-- Modal end-->   
  
  
  <button type="button" onclick="setId()">close</button>
 </div> 
</c:if>  


<c:if test="${cnt == 1}">

<div class="aa">

 <h4>${memId}는 이미 등록된 아이디 입니다.</h4>
 <h4>다른 ID를 입력하세요.</h4>
 <!-- Modal -->
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ID 중복 체크</h4>
        </div>
        <div class="modal-body">
          <p>${memId}는 이미 등록된 아이디 입니다.</p>
          <p>다른 ID를 입력하세요.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div> 
  </div>
  <!-- Modal end-->   
  
   <button type="button" onclick="self.close()">close</button>
 </div> 
  
</c:if>  