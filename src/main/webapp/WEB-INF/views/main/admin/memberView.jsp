<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<style>
		#aa {
			width:850px;
			height:500px;
			border:0;
		}
	</style>
	
<title>Insert title here</title>
</head>
<body>

	<div class="container">
       <table id="aa" class="table table-condensed">
            <tr>
               <th colspan="6"><h1> 회원정보 </h1></th>               
            </tr>   
              
      		<tr>
      			<th>아이디 :</th>  
      			<th colspan="5" style="color:blue">${dto.memId}</th> 
      	 	    <th rowspan="10"><img src="/uuplex/resources/main_images/member1.png" class="img-thumbnail" width="300px"></th>
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
      			<th colspan="5">${dto.jumin1} - *******</th> 
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
      			<th colspan="7" align="right"><input type="button" value="닫기" class="btn btn-default" data-dismiss="modal" onclick="window.location.reload()"></th>
      		</tr>
      		
      
       </table>
     </div> 

</body>
</html>