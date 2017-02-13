<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<html>
<head>

</head>
	<body>    
		 <div class="modal-content">
		      <div class="modal-header">
		         <button class="close" data-dismiss="modal">&times;</button>
		         <h4 class="modal-title">상세정보</h4>
		      </div>
		      <div class="modal-body">
		         <h2>나와랏${dto.movie_num }</h2>
		         <div class="donutchart" id="donutchart4" style="width: 380px; height: 400px;"></div> 
		      </div>
		</div>
	</body>
</html>      