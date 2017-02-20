<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	
	<!-- <script src="/uuplex/resources/main_script/reserve.js"></script>
	<script src="/uuplex/resources/admin_ajax/request.js"></script> -->
	<script type="text/javascript" src="/uuplex/resources/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
	<script type="text/javascript" src="${js}checkDetails.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function () {
			
			$('#searchBox').hide();
			
			$('#catal').change(function(){
				
				if($('#catal option:selected').val() == '전체'){
					$('#searchBox').hide();	
					
				}else{
					$('#searchBox').show();
				}
				
				var log = document.reserve.catal.value;
				var catal = $('#catal option:selected').val(); 
				reservlist(log);
				
			});
		});
	</script>
  
    <style type="text/css">
       
       table1 {
       		margin:50px 0px;
       		border: 1px solid #cccccc;		
       }
    
    </style>

  
  <form name="reserve">
  <table class="table table-condensed table1">

  	<tr>
  		<th colspan="2" style="background-color:#f0f0f0"><h4> 예약내역/매출 조회 </h4></th>	
  	</tr>
  	
  	
  	
  	<tr>
  		<th style="background-color:#f9f9f9" width="20%">검색어</th>
  		
  		<th>
  			<select style="width:150px" id="catal">
  				<option value="전체">전체</option>
  				<option value="영화제목">영화제목</option>
  				<option value="감독">감독</option>
  			</select>
  			<br>
  			<div id="searchBox">
	  			<input name="search" type="text" placeholder="검색어">
	  			<input class="btn btn-default" type="reset" value="초기화" style="height:30px">
  			</div>
  		</th>
	
  	</tr>
  	
  	<tr>
  		<th style="background-color:#f9f9f9" width="20%">기간</th>
  		
  		<th>
  			<input class="btn btn-default" type="button" value="당일" style="height:30px" onclick="dateCnt(0)">
  			<input class="btn btn-default" type="button" value="3일" style="height:30px" onclick="dateCnt(3)">
  			<input class="btn btn-default" type="button" value="7일" style="height:30px" onclick="dateCnt(7)">
  			<input class="btn btn-default" type="button" value="15일" style="height:30px" onclick="dateCnt(15)">
  			<input class="btn btn-default" type="button" value="1개월" style="height:30px" onclick="dateCnt(30)">
  			<a id="insertDate">
  			<input id="result" class="btn btn-default" name="date" type="date" style="height:30px"> -
  			<input id="result" class="btn btn-default" name="curdate" type="date" style="height:30px">
  			</a>
  			<input class="btn btn-default" type="button" value="검색" style="height:30px" onclick="dateSrc()">
  			<input class="btn btn-default" type="button" value="검색 초기화" style="height:30px" onclick="callreset()">
  		</th>
  	</tr>
  	
  
  </table>	
  </form>
  
  <div class="container">
  	 <div id="list">
  	
  	 </div>
  </div>
  
  <div class="container">
  	 <div id="listdate">
  	
  	 </div>
  </div>
  
  <div class="container">
  	 <div id="listid">
  	
  	 </div>
  </div>
  
