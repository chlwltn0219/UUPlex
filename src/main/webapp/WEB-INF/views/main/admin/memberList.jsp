<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>


<title>Insert title here</title>
</head>
<body>
		
	 <div class="container">
       <table class="table table-condensed">
          <thead>
            <tr>
               <th colspan="7"><h1> 회원리스트 </h1></th>               
            </tr>
          </thead>
          
          <tbody>
      		<tr>
      			<th width="10%">code</th>
      			<th>아이디</th>
      			<th>성별</th>
      			<th>나이</th>
      			<th>가입날짜</th>
      			<th>회원등급</th>
      			<th>회원예약</th>  			
      		</tr>
      		
      		<c:forEach var="dto" items="${dtos}"> 
      		<tr>
      			<th width="10%">${dto.idCode}</th>
      			<th><a data-toggle="modal" data-target="#modal" href="noneSM/memberView?memId=${dto.memId}">${dto.memId}</a></th>
      			<th>${dto.gender}</th>
      			<th>${dto.age}</th>
      			<th><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.reg_date}" /></th>
      			<th>${dto.grade}</th>
      			<th><input type="button" class="btn btn-default" value="예약현황"></th>  
      		</tr>
      		</c:forEach>
      		
      	  </tbody>	
       </table>
     </div> 
     
       <%@ include file="/admin_Modal/admin_modal.jsp" %>
    

</body>
</html>