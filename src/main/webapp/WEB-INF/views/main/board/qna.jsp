<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Q&A</title>
    <!-- 부트스트랩 -->
	<link href="${resources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
       div.top {
          height: 100px;
       }
    </style>
  </head>
  <body>


   <div style="height:10px"></div>
     <!-- 메뉴 넣어 주세요 -->
  
     <div class="container">
      <table class="table table-condensed">
         <thead>
            <tr>
               <th colspan="6"><h1> Q & A </h1></th>
               <th align="right"><c:if test="${not empty id}"><input type="button" class="btn btn-default" value="글쓰기" onclick="window.location='qnAWriteForm'"></c:if></th>
               
            </tr>
         </thead>
         <tbody>
            <tr>
               <th width="10%">#</th>
               <th colspan="3" width="30%">Title</th>
               <th width="10%">writer</th>
               <th width="10%">Regdate</th>
               <th width="5%">Count</th>
            </tr>   
            
        <c:forEach var="dto" items="${dtos}">    
            <tr>
               <td>${number}</td>
               <c:set var="number" value="${number - 1}" />
               <td colspan="3"><a href="contentForm?num=${dto.qnaNum}&pageNum=${pageNum}&number=${number + 1}">${dto.subject}</a></td>
               <td>${dto.memId}</td>
               <td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.qna_date}" /></td>
               <td>${dto.readCnt}</td>
            </tr>
         </c:forEach>
           
         </tbody>
         <tfoot align="center">
		
   			<tr>
               <td colspan="7">
                  <nav>
                     <ul class="pagination pager">
                  		<c:if test="${startPage > pageBlock}">
                      	  <li><a href="qna?pageNum=${startPage - pageBlock}">Previous</a></li>
                        </c:if>     
                        
                        <c:forEach var="i" begin="${startPage}" end="${endPage}"> 
                        	<c:if test="${i == currentPage}">
                        		<li><a href="">${i} <span class="sr-only">(current)</span></a></li>
                        	</c:if>
                        	<c:if test="${i != currentPage}">
                       			 <li><a href="qna?pageNum=${i}">${i} <span class="sr-only">(current)</span></a></li>
                       		</c:if>
                        </c:forEach>
                        
                        <c:if test="${pageCount > endPage}">
                        <li><a href="qna?pageNum=${startPage + pageBlock}">Next</a></li>
                        </c:if>
                     </ul>
                  </nav>
               </td>
               
   			</tr>
		
         </tfoot>
      </table>

    </div><!-- /.container -->
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="${resources}/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>