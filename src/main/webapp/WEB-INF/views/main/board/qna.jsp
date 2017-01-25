<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Fitness Main</title>
    <!-- 부트스트랩 -->
	<link href="${resources}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
=======
<%@ include file="../../setting.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<html lang="ko">
  <head>
    <title>Q&A</title>
  
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
    <style type="text/css">
       div.top {
          height: 100px;
       }
<<<<<<< HEAD
    </style>
  </head>
  <body>


   <div style="height:70px"></div>
=======
       
       .head {
       		margin:50px 0px;
       }
    </style>
  </head>
  <body>
  
 <script type="text/javascript">
 	  $('#myTab a').click(function (e) {
		  e.preventDefault()
	 	  $(this).tab('show')
	  })
  

	  $(function () {
	    $('#myTab a:last').tab('show')
	  })

  </script>
  
  <div class="head" role="tabpanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
  	<c:if test="${shopCode == 100}">
    <li role="presentation" class="active"><a href="qna?shopCode=100">전체</a></li>
    </c:if>
    
    <c:if test="${shopCode != 100}">
    <li role="presentation"><a href="qna?shopCode=100">전체</a></li>
    </c:if>
    
    <c:if test="${shopCode == 101}">
    	<li role="presentation" class="active"><a href="qna?shopCode=101">영화</a></li>
    </c:if>
    <c:if test="${shopCode != 101}">
   		 <li role="presentation"><a href="qna?shopCode=101">영화</a></li>
    </c:if>
    
    <c:if test="${shopCode == 102}">
    <li role="presentation" class="active"><a href="qna?shopCode=102">호텔</a></li>
    </c:if>
    
    <c:if test="${shopCode != 102}">
    <li role="presentation"><a href="qna?shopCode=102">호텔</a></li>
    </c:if>
    
    <c:if test="${shopCode == 103}">
    <li role="presentation" class="active"><a href="qna?shopCode=103">휘트니스</a></li>
    </c:if>
    
    <c:if test="${shopCode != 103}">
    <li role="presentation"><a href="qna?shopCode=103">휘트니스</a></li>
    </c:if>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
       
     <div style="height:10px"></div>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
     <!-- 메뉴 넣어 주세요 -->
  
     <div class="container">
      <table class="table table-condensed">
         <thead>
            <tr>
<<<<<<< HEAD
               <th colspan="7"><h1> Q & A  </h1></th>
=======
               <th colspan="6"><h1> Q & A </h1></th>
               <th align="right"><c:if test="${not empty id}"><input type="button" class="btn btn-default" value="글쓰기" onclick="window.location='qnAWriteForm?shopCode=${shopCode}'"></c:if></th>
               
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
            </tr>
         </thead>
         <tbody>
            <tr>
<<<<<<< HEAD
               <th>#</th>
               <th colspan="3">Title</th>
               <th>writer</th>
               <th>Regdate</th>
               <th>Count</th>
            </tr>   
            <tr>
               <td>12345</td>
               <td colspan="3"><a>안녕하세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>11</td>
            </tr>
            <tr>
               <td>12344</td>
               <td colspan="3"><a>반갑습니다.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>17</td>
            </tr>
            <tr>
               <td>12343</td>
               <td colspan="3"><a>어서오세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>33</td>
            </tr>
            <tr>
               <td>12342</td>
               <td colspan="3"><a>김태희는 처음이니 ?</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>22</td>
            </tr>
            <tr>
               <td>12341</td>
               <td colspan="3"><a>집에 보내주세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>78</td>
            </tr>
            <tr>
               <td>12340</td>
               <td colspan="3"><a>할일이 많네요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>124</td>
            </tr>
            <tr>
               <td>12339</td>
               <td colspan="3"><a>안녕히 주무세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>97</td>
            </tr>
            <tr>
               <td>12338</td>
               <td colspan="3"><a>좋은 아침 입니다.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>8</td>
            </tr>
            <tr>
               <td>12337</td>
               <td colspan="3"><a>저희 홈페이지는 멀티 플랙스 입니다..</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>44</td>
            </tr>
            <tr>
               <td>12336</td>
               <td colspan="3"><a>너의 권력은</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>88</td>
            </tr>
            <tr>
               <td>12335</td>
               <td colspan="3"><a>안녕하세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>11</td>
            </tr>
            <tr>
               <td>12334</td>
               <td colspan="3"><a>반갑습니다.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>17</td>
            </tr>
            <tr>
               <td>12333</td>
               <td colspan="3"><a>어서오세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>33</td>
            </tr>
            <tr>
               <td>12332</td>
               <td colspan="3"><a>김태희는 처음이니 ?</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>22</td>
            </tr>
            <tr>
               <td>12331</td>
               <td colspan="3"><a>집에 보내주세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>78</td>
            </tr>
            <tr>
               <td>12330</td>
               <td colspan="3"><a>할일이 많네요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>124</td>
            </tr>
            <tr>
               <td>12329</td>
               <td colspan="3"><a>안녕히 주무세요.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>97</td>
            </tr>
            <tr>
               <td>12328</td>
               <td colspan="3"><a>좋은 아침 입니다.</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>8</td>
            </tr>
            <tr>
               <td>12327</td>
               <td colspan="3"><a>저희 홈페이지는 멀티 플랙스 입니다..</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>44</td>
            </tr>
            <tr>
               <td>12326</td>
               <td colspan="3"><a>너의 권력은</a></td>
               <td>김태희</td>
               <td>2010-01-17</td>
               <td>88</td>
            </tr>
         </tbody>
         <tfoot align="center">
            <tr>
               <td colspan="7">
                  <nav>
                     <ul class="pagination pager">
                         <li><a href="#">Previous</a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">3 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">4 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">5 <span class="sr-only">(current)</span></a></li>
                         <li><a href="#">Next</a></li>
                     </ul>
                  </nav>
               </td>
            </tr>
=======
               <th width="10%">#</th>
               <th colspan="3" width="30%">Title</th>
               <th width="10%">writer</th>
               <th width="10%">Regdate</th>
               <th width="5%">Count</th>
            </tr>   
            
     <c:if test="${cnt > 0}">     
        <c:forEach var="dto" items="${dtos}">
          
            <tr>
               <td>${number}
               	  <c:set var="number" value="${number - 1}" />
               </td>
               
               <td colspan="3">
                 <c:if test="${dto.ref_level > 1}">
				   <c:set var="wid" value="${dto.ref_level - 1} * 10" />
				   <img src="${resources}/board/level.gif" border="0" width="${wid}" height="15">
			     </c:if>
               
                 <c:if test="${dto.ref_level > 0}">
					<img src="${resources}/board/re.gif" border="0" width="20" height="15">
			     </c:if>	
			   
                 <a href="contentForm?num=${dto.qnaNum}&pageNum=${pageNum}&number=${number + 1}&shopCode=${shopCode}">
                 
                 <c:if test="${dto.shopCode==101}">[영화]</c:if>
                 <c:if test="${dto.shopCode==102}">[호텔]</c:if>
                 <c:if test="${dto.shopCode==103}">[휘트니스]</c:if>
                 
                 ${dto.subject}</a>
               
                 <c:if test="${dto.readCnt > 10}">
				    <img src="${resources}/board/hot.gif" border="0" width="20" height="15">
			     </c:if>
               
               </td>
               
               
               <td>${dto.memId}</td>
               
               <td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.qna_date}" /></td>
               
               <td>${dto.readCnt}</td>
            </tr>
         
         </c:forEach>
     </c:if>
           
         </tbody>
         <tfoot align="center">
			<c:if test="${cnt > 0}">
   			<tr>
               <td colspan="7">
                  <nav>
                     <ul class="pagination pager">
                  		<c:if test="${startPage > pageBlock}">
                      	  <li><a href="qna?pageNum=${startPage - pageBlock}&shopCode=${shopCode}">Previous</a></li>
                        </c:if>     
                        
                        <c:forEach var="i" begin="${startPage}" end="${endPage}"> 
                        	<c:if test="${i == currentPage}">
                        		<li><a href="">${i} <span class="sr-only">(current)</span></a></li>
                        	</c:if>
                        	<c:if test="${i != currentPage}">
                       			 <li><a href="qna?pageNum=${i}&shopCode=${shopCode}">${i} <span class="sr-only">(current)</span></a></li>
                       		</c:if>
                        </c:forEach>
                        
                        <c:if test="${pageCount > endPage}">
                        <li><a href="qna?pageNum=${startPage + pageBlock}&shopCode=${shopCode}">Next</a></li>
                        </c:if>  
                     </ul>
                  </nav>
               </td>
               
   			</tr>
			</c:if>
>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
         </tfoot>
      </table>

    </div><!-- /.container -->
<<<<<<< HEAD
  

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="${resources}/bootstrap/js/bootstrap.min.js"></script>
=======
    
    </div>
    
  </div>

</div>

>>>>>>> 90c2d9b60fd3946f415ec7a82d5f3e83c377561a
  </body>
</html>