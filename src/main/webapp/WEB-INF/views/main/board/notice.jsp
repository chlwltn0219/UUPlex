<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<html lang="ko">
  <head>
    <title>Notice</title>
  
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
 	  $('#myTab a').click(function (e) {
		  e.preventDefault()
	 	  $(this).tab('show')
	  })
  

	  $(function () {
	    $('#myTab a:last').tab('show')
	  })

  </script>
  
  <div class="container">
  
  <div class="head" role="tabpanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
  	<c:if test="${shopCode == 100}">
    <li role="presentation" class="active"><a href="notice?shopCode=100">전체</a></li>
    </c:if>
    
    <c:if test="${shopCode != 100}">
    <li role="presentation"><a href="notice?shopCode=100">전체</a></li>
    </c:if>
    
    <c:if test="${shopCode == 101}">
    	<li role="presentation" class="active"><a href="notice?shopCode=101">영화</a></li>
    </c:if>
    <c:if test="${shopCode != 101}">
   		 <li role="presentation"><a href="notice?shopCode=101">영화</a></li>
    </c:if>
    
    <c:if test="${shopCode == 102}">
    <li role="presentation" class="active"><a href="notice?shopCode=102">호텔</a></li>
    </c:if>
    
    <c:if test="${shopCode != 102}">
    <li role="presentation"><a href="notice?shopCode=102">호텔</a></li>
    </c:if>
    
    <c:if test="${shopCode == 103}">
    <li role="presentation" class="active"><a href="notice?shopCode=103">휘트니스</a></li>
    </c:if>
    
    <c:if test="${shopCode != 103}">
    <li role="presentation"><a href="notice?shopCode=103">휘트니스</a></li>
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
               <th colspan="6"><h1> 공지사항 </h1></th>
               <th align="right"><c:if test="${idCode == 101}"><input type="button" class="btn btn-default" value="글쓰기" onclick="window.location='noticeWriteForm?shopCode=${shopCode}'"></c:if></th>
               
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
            
     <c:if test="${cnt > 0}">  
     
    	 <c:forEach var="dto" items="${dtos}">
    	 
     	    <c:if test="${dto.important == '공지'}">
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
			   
                 <a href="contentNotiForm?num=${dto.notiNum}&pageNum=${pageNum}&number=${number + 1}&shopCode=${shopCode}" style="color:red">
                 
                 <c:if test="${dto.shopCode==101}"><img src="${resources}/board/notice.png" border="0" width="30" height="18"> [영화]</c:if>
                 <c:if test="${dto.shopCode==102}"><img src="${resources}/board/notice.png" border="0" width="30" height="18"> [호텔]</c:if>
                 <c:if test="${dto.shopCode==103}"><img src="${resources}/board/notice.png" border="0" width="30" height="18"> [휘트니스]</c:if>
                 
                 ${dto.subject}</a>
               
                 <c:if test="${dto.readCnt > 10}">
				    <img src="${resources}/board/hot.gif" border="0" width="20" height="15">
			     </c:if>
               
               </td>
               
               
               <td>${dto.memId}</td>
               
               <td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.noti_date}" /></td>
               
               <td>${dto.readCnt}</td>
        	</tr>
        	</c:if>
        	
        </c:forEach>
          
        <c:forEach var="dto" items="${dtos}">
          	<c:if test="${dto.important != '공지'}">
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
			   
                 <a href="contentNotiForm?num=${dto.notiNum}&pageNum=${pageNum}&number=${number + 1}&shopCode=${shopCode}">
                 
                 <c:if test="${dto.shopCode==101}">[영화]</c:if>
                 <c:if test="${dto.shopCode==102}">[호텔]</c:if>
                 <c:if test="${dto.shopCode==103}">[휘트니스]</c:if>
                 
                 ${dto.subject}</a>
               
                 <c:if test="${dto.readCnt > 10}">
				    <img src="${resources}/board/hot.gif" border="0" width="20" height="15">
			     </c:if>
               
               </td>
               
               
               <td>${dto.memId}</td>
               
               <td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.noti_date}" /></td>
               
               <td>${dto.readCnt}</td>
            </tr>
         	</c:if>
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
                      	  <li><a href="notice?pageNum=${startPage - pageBlock}&shopCode=${shopCode}">Previous</a></li>
                        </c:if>     
                        
                        <c:forEach var="i" begin="${startPage}" end="${endPage}"> 
                        	<c:if test="${i == currentPage}">
                        		<li><a href="">${i} <span class="sr-only">(current)</span></a></li>
                        	</c:if>
                        	<c:if test="${i != currentPage}">
                       			 <li><a href="notice?pageNum=${i}&shopCode=${shopCode}">${i} <span class="sr-only">(current)</span></a></li>
                       		</c:if>
                        </c:forEach>
                        
                        <c:if test="${pageCount > endPage}">
                        <li><a href="notice?pageNum=${startPage + pageBlock}&shopCode=${shopCode}">Next</a></li>
                        </c:if>  
                     </ul>
                  </nav>
               </td>
               
   			</tr>
			</c:if>
         </tfoot>
      </table>

    </div><!-- /.container -->
    
    </div>
    
  </div>

</div>
</div>
  </body>
</html>