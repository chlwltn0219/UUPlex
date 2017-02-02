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

<title>Insert title here</title>
</head>
<body>

    <form name="gradeform">
		
	 <div class="container">
       <table class="table table-condensed">
          <thead>
            <tr>
               <th colspan="8"><h1> 회원리스트 </h1></th>               
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
      		<tr>
      		
      			<th width="10%">${dto.idCode}</th>
      			<th><a data-toggle="modal" data-target="#modal" href="noneSM/memberView?memId=${dto.memId}">${dto.memId}</a></th>
      			<th>${dto.gender}</th>
      			<th>${dto.age}</th>
      			<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reg_date}" /></th>
      			<%-- <th><select name="grade" class="grade" data-grade="${dto.grade}"> --%>
      			<th>${dto.grade}
      			<%-- <select name="gg" class="grade" data-grade="${dto.grade}">
      			<c:if test="${dto.grade == '일반회원'}">
      				<option value="일반회원" selected>일반회원</option>
      				<option value="green회원">GREEN회원</option>
      				<option value="gold회원">GOLD회원</option>
      				<option value="vip회원">VIP회원</option>
      			</c:if>
      			<c:if test="${dto.grade == 'green회원'}">
      				<option value="일반회원">일반회원</option>
      				<option value="green회원" selected>GREEN회원</option>
      				<option value="gold회원">GOLD회원</option>
      				<option value="vip회원">VIP회원</option>
      			</c:if>
      			<c:if test="${dto.grade == 'gold회원'}">
      				<option value="일반회원">일반회원</option>
      				<option value="green회원">GREEN회원</option>
      				<option value="gold회원" selected>GOLD회원</option>
      				<option value="vip회원">VIP회원</option>
      			</c:if>
      			<c:if test="${dto.grade == 'vip회원'}">
      				<option value="일반회원">일반회원</option>
      				<option value="green회원">GREEN회원</option>
      				<option value="gold회원">GOLD회원</option>
      				<option value="vip회원" selected>VIP회원</option>
      			</c:if>
      			</select>&nbsp;&nbsp;&nbsp; --%>
      			
      			<!-- <input type="button" class="btn btn-default" value="등업" onclick="window.location='upgrade?memId='"> -->
      			</th>
      			
      			<th><a data-toggle="modal" data-target="#upgradeModal" href="noneSM/upgrade?memId=${dto.memId}">회원등급변경</a></th>
      			
      			<th><input type="button" class="btn btn-default" value="예약현황"></th>  
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