<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
 <head>
    <title>Event</title>
  
    <style type="text/css">
       div.top {
          height: 100px;
       }
       
       .head {
       		margin:50px 0px;
       }
    </style>
  </head>
  <body>
  
 <script type="text/javascript">

  </script>
  
  <div class="container">
  
  <div class="head">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
  	<c:if test="${shopCode == 100}">
    <li role="presentation" class="active"><a href="">전체</a></li>
    </c:if>
    
    <c:if test="${shopCode != 100}">
    <li role="presentation"><a href="">전체</a></li>
    </c:if>
    
    <c:if test="${shopCode == 101}">
    	<li role="presentation" class="active"><a href="">영화</a></li>
    </c:if>
    <c:if test="${shopCode != 101}">
   		 <li role="presentation"><a href="">영화</a></li>
    </c:if>
    
    <c:if test="${shopCode == 102}">
    <li role="presentation" class="active"><a href="">호텔</a></li>
    </c:if>
    
    <c:if test="${shopCode != 102}">
    <li role="presentation"><a href="">호텔</a></li>
    </c:if>
    
    <c:if test="${shopCode == 103}">
    <li role="presentation" class="active"><a href="">휘트니스</a></li>
    </c:if>
    
    <c:if test="${shopCode != 103}">
    <li role="presentation"><a href="">휘트니스</a></li>
    </c:if>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
       
     <div style="height:10px"></div>
     <!-- 메뉴 넣어 주세요 -->
  
     <div class="container">
      <table class="table table-condensed">
         <thead>
            <tr>
               <th colspan="6"><h1> 예약관리 </h1></th>
               <th align="right"></th>
               
            </tr>
         </thead>
         <tbody>
            <tr>
               <th width="10%">종류</th>
               <th width="10%">아이디</th>
               <th colspan="2" width="20%">예약내역</th>
               <th width="10%">가격</th>
               <th width="10%">날짜</th>
               <th width="5%">비고</th>
            </tr>   
            
     	</tbody>
     
     </table>
     
     </div>

	</div>
  </div>
  </div>
</div>
 
  </body>
</html>