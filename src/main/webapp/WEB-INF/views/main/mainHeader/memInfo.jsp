<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<style>
		#aa {
			width:850px;
			height:500px;
			border:0;
		}
		
		.jb-cell {
			align:center;
			width: 900px;
	  		margin: 50px 100px 50px 100px;
	  		padding: 30px 0px 0px 30px;
	  		border: 3px solid #cccccc;
		}
	</style>
	
<title>Insert title here</title>
</head>
<body>

	<div class="container">
	<div class="jb-cell">
       <table id="aa" class="table table-condensed">
            <tr>
               <th colspan="7"><h1> 나의회원정보 </h1></th>               
            </tr>   
              
      		<tr>
      			<th>아이디 :</th>  
      			<th colspan="5" style="color:blue">${dto.memId}</th> 
      			
      			<c:if test="${dto.grade == '일반회원'}">
      	 	    	<th rowspan="10" width="300px"><img src="/uuplex/resources/main_images/member1.png" class="img-thumbnail" width="300px"></th>
      	 	    </c:if>
      	 	    
      	 	    <c:if test="${dto.grade == 'Green회원'}">
      	 	    	<th rowspan="10" width="300px"><img src="/uuplex/resources/main_images/green.png" class="img-thumbnail" width="300px"></th>
      	 	    </c:if>
      	 	    
      	 	    <c:if test="${dto.grade == 'Gold회원'}">
      	 	    	<th rowspan="10" width="300px"><img src="/uuplex/resources/main_images/gold.png" class="img-thumbnail" width="300px"></th>
      	 	    </c:if>
      	 	    
      	 	    <c:if test="${dto.grade == 'Vip회원'}">	
      	 	    	<th rowspan="10" width="300px"><img src="/uuplex/resources/main_images/vip.png" class="img-thumbnail" width="300px"></th>
      	 	    </c:if>	
      		</tr>
      		
      		<tr>
      			<th>이름 :</th>  
      			<th colspan="5" style="color:blue">${dto.name}</th> 
      		</tr>
      		
      		<tr>
      			<th>성별 :</th>  
      			<th colspan="5">${dto.gender}</th> 
      		</tr>
      		
      		<tr>
      			<th>주민번호 :</th>  
      			<th colspan="5">${dto.jumin1} - ${dto.jumin2}</th> 
      		</tr>
      		
      		<tr>
      			<th>나이 :</th>  
      			<th colspan="5">${dto.age}</th> 
      		</tr>
      		
      		<tr>
      			<th>주소 :</th>  
      			<th colspan="5">${dto.address}</th> 
      		</tr>
      		
      		<tr>
      			<th>핸드폰 :</th>  
      			<th colspan="5">${dto.phone}</th> 
      		</tr>
      		
      		<tr>
      			<th>e-mail :</th>  
      			<th colspan="5">${dto.email}</th> 
      		</tr>
      		
      		<tr>
      			<th>가입날짜 :</th>  
      			<th colspan="5"><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reg_date}" /></th> 
      		</tr>
      		
      		<tr>
      			<th>회원등급 :</th>  
      			<th colspan="5">${dto.grade}</th> 
      		</tr>	
      		
      		<tr>
      			<th colspan="7" align="right">
      			<input type="button" value="정보수정" class="btn btn-warning" data-dismiss="modal" onclick="window.location='memModifyForm'">
      			<!-- <input type="button" value="회원탈퇴" class="btn btn-danger" data-toggle="modal" data-target="#upgradeModal" onclick="window.location='deleteForm'"> -->
      			<a class="btn btn-danger" data-toggle="modal" data-target="#deleteModal" href="noneSM/deleteForm">회원탈퇴</a>
      			<input type="button" value="뒤로가기" class="btn btn-info" onclick="window.history.back()"></th>
      		</tr>
      		
      
       </table>
     </div>
     </div>
     
		<%@ include file="/admin_Modal/delete_modal.jsp" %>
	
</body>
</html>