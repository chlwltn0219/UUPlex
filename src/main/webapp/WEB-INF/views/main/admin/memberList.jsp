<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<!-- <script type="text/javascript" src="/uuplex/resources/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	grade_val = $('select.grade').attr('data-grade');
	$('select.grade option[value=' + grade_val + ']').attr('selected', 'selected');
});
</script> -->

<script type="text/javascript" src="/uuplex/resources/js/jquery-1.12.4.js"></script>

<script type="text/javascript">
	$(document).ready(function () {
		$('#grade').change(function(){
			var grade = $('#grade option:selected').val();
			window.location="memberList?grade=" + grade;
		});
	});
</script>

<title>Insert title here</title>
</head>
<body>

    <form name="gradeform">
		
	 <div class="container">
       <table class="table table-condensed">
          <thead>
            <tr>
               <th colspan="7"><h1> 회원리스트 </h1></th>
               <th width="10%">
               		<select name="grade" id="grade">
               			<c:if test="${grade == '전체'}">
	            			<option value="전체" selected>전체</option>
	            		</c:if>
	            		<c:if test="${grade != '전체'}">
	            			<option value="전체">전체</option>
	            		</c:if>

	            		<c:if test="${grade == '일반회원'}">
	            			<option value="일반회원" selected>일반회원</option>
	            		</c:if>
	            		<c:if test="${grade != '일반회원'}">
	            			<option value="일반회원">일반회원</option>
	            		</c:if>
	            		
	            		<c:if test="${grade == 'Green회원'}">
	            			<option value="Green회원" selected>Green회원</option>
	            		</c:if>
	            		<c:if test="${grade != 'Green회원'}">
	            			<option value="Green회원">Green회원</option>
	            		</c:if>
	            		
	            		<c:if test="${grade == 'Gold회원'}">
	            			<option value="Gold회원" selected>Gold회원</option>
	            		</c:if>
	            		<c:if test="${grade != 'Gold회원'}">
	            			<option value="Gold회원">Gold회원</option>
	            		</c:if>
	            		
	            		<c:if test="${grade == 'Vip회원'}">
	            			<option value="Vip회원" selected>Vip회원</option>
	            		</c:if>
	            		<c:if test="${grade != 'Vip회원'}">
	            			<option value="Vip회원">Vip회원</option>
	            		</c:if>

            		</select>
            	</th>	               
            </tr>
          </thead>
          
          <tbody>
      		<tr>
      			<th width="10%">code</th>
      			<th>아이디</th>
      			<th>성별</th>
      			<th>나이</th>
      			<th>가입날짜</th>
      			<th width="15%">회원등급</th>
      			<th>등업</th>
      			<th>회원예약</th>  			
      		</tr>
      		
      		<c:forEach var="dto" items="${dtos}"> 
      		
	      		<c:if test="${dto.grade == '일반회원'}">
	      			<tr>
	      		</c:if>
	      		<c:if test="${dto.grade == 'Green회원'}">
	      			<tr class="bg-success">
	      		</c:if>
	      		<c:if test="${dto.grade == 'Gold회원'}">
	      			<tr class="bg-warning">
	      		</c:if>
	      		<c:if test="${dto.grade == 'Vip회원'}">
	      			<tr class="bg-danger">
	      		</c:if>
	      		
      			<th width="10%">${dto.idCode}</th>
      			<th><a data-toggle="modal" data-target="#modal" href="noneSM/memberView?memId=${dto.memId}">${dto.memId}</a></th>
      			<th>${dto.gender}</th>
      			<th>${dto.age}</th>
      			<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reg_date}" /></th>
      			<%-- <th><select name="grade" class="grade" data-grade="${dto.grade}"> --%>
      			<th>${dto.grade}</th>
      			
      			<th><a data-toggle="modal" data-target="#upgradeModal" href="noneSM/upgrade?memId=${dto.memId}">회원등급변경</a></th>
      			
      			<th><a data-toggle="modal" data-target="#modal" class="btn btn-default" href="noneSM/reserveView?memId=${dto.memId}">예약현황</a></th>  
      			
      		</tr>
      		
      		</c:forEach>
     		<tr><th colspan="8"></th></tr>
      	  </tbody>	
       </table>
     </div> 
     </form>
     
       <%@ include file="/admin_Modal/admin_modal.jsp" %>
       <%@ include file="/admin_Modal/upgrade_modal.jsp" %>
    

</body>
</html>