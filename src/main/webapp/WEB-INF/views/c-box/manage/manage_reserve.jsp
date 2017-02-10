<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ include file="../setting.jsp"%> 
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script src="${js}jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
	
<script type="text/javascript">
//메뉴 탭
$('#myTab a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	});
	
$('#myTab a[href="#profile"]').tab('show'); // Select tab by name
$('#myTab a:first').tab('show'); // Select first tab
$('#myTab a:last').tab('show'); // Select last tab
$('#myTab li:eq(2) a').tab('show'); // Select third tab (0-indexed) 
</script>
<script type="text/javascript">

//구글 차트
google.charts.load("current", {
	packages : [ "corechart" ]
});

/* 예매율 1위 시작 */
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
	
	
	//방법1
	/*   var data = google.visualization.arrayToDataTable([
		  
		 <c:forEach items="${dtos}" var="dto" varStatus="status">
		 
		 	'${status.index == 0}' ? ['${dto.title1}',  ${(dto.cnt)/(reserveCnt)*100}] : ',' + ['${dto.title1}',  ${(dto.cnt)/(reserveCnt)*100}]
		 
		 	</c:forEach>
		 ]);  
	  */
	 alert("dd");
	   
	   //방법2
	   var data = new google.visualization.DataTable();

	   data.addColumn('string','title');
	   data.addColumn('number','rate');
	   
	  var title1 = '';
	  
		<c:forEach items="${dtos}" var="dto" varStatus="status">
			if(${status.index == 0}){
				
				data.addRows([
					['${dto.title1}',  ${(dto.cnt)/(reserveCnt)*100}],
					['', 100-${(dto.cnt)/(reserveCnt)*100}]
				]);
				
				title1 = '${dto.title1}';
			}
		</c:forEach> 
		
			
	/*  var data = google.visualization.arrayToDataTable([
			[ 'Task', 'Hours per Day' ],
			['Work',     11],
			[ 'Eat', 2 ],
			[ 'Commute', 2 ], [ 'Watch TV', 2 ],
			[ 'Sleep', 7 ] ]); */
  
	var options = {
		title : '1위 '+title1,
		colors : ['blue','transparent'],
		/* pieStartAngle : 50, */
		legend:'none'
		
	};

	var chart = new google.visualization.PieChart(
			document.getElementById('donutchart'));
	chart.draw(data, options);
}
/* 예매율 1위 끝 */

/* 예매율 2위 시작 */

google.charts.setOnLoadCallback(drawChart2);

function drawChart2() {
	   
	   //방법2
	   var data = new google.visualization.DataTable();

	   data.addColumn('string','title');
	   data.addColumn('number','rate');
	   
	  
	   <c:forEach items="${dtos}" var="dto" varStatus="status">
		if(${status.index == 1}){
			data.addRows([
				['${dto.title1}',  ${(dto.cnt)/(reserveCnt)*100}],
				['', 100-${(dto.cnt)/(reserveCnt)*100}]
			]);
			title1 = '${dto.title1}';
		}
		</c:forEach> 
		
	var options = {
		title : '2위 '+title1,
		colors : ['red','transparent'],
		legend:'none'
		
	    
	};

	var chart = new google.visualization.PieChart(
			document.getElementById('donutchart2'));
	chart.draw(data, options);
	
}
/* 예매율 2위 끝 */

/* 예매율 3위 시작 */

google.charts.setOnLoadCallback(drawChart3);

function drawChart3() {
	   
	   //방법2
	   var data = new google.visualization.DataTable();

	   data.addColumn('string','title');
	   data.addColumn('number','rate');
	   
	  
		<c:forEach items="${dtos}" var="dto" varStatus="status">
			
			data.addRows([
				['${dto.title1}',  ${(dto.cnt)/(reserveCnt)*100}]
			]);
		</c:forEach> 
		
	var options = {
		title : '3위 영화',
		pieHole : 0.4,
		
	    
	};

	var chart = new google.visualization.PieChart(
			document.getElementById('donutchart3'));
	chart.draw(data, options);
	
}
/* 예매율 3위 끝 */
</script>
<script type="text/javascript">
google.charts.load("current", {packages:['corechart']});
google.charts.setOnLoadCallback(drawChart4);
function drawChart4() {
	/* //방법2
	   var data = new google.visualization.DataTable();

	   data.addColumn('string','Element');
	   data.addColumn('number','Density');
	   /* data.addColumn('string',{ role: "style" }); */
	   
	   var data = new google.visualization.DataTable();

	   data.addColumn('string','title');
	   data.addColumn('number','rate');
	   
		<c:forEach items="${list}" var="lis" varStatus="status">
			
		<c:set var = "string1" value="${fn:substring(lis.year_month,0,5)}"/>
		
			data.addRows([
				['${string1}', ${lis.sales}]
			]);
		</c:forEach> 
		 
	
  /*  var data = google.visualization.arrayToDataTable([
    ["Element", "Density", { role: "style" } ],
    ["Copper", 8.94, "#b87333"],
    ["Silver", 10.49, "silver"],
    ["Gold", 19.30, "gold"],
    ["Platinum", 21.45, "color: #e5e4e2"],
    ["Copper", 8.94, "#b87333"],
    ["Silver", 10.49, "silver"],
    ["Gold", 19.30, "gold"],
    ["Platinum", 21.45, "color: #e5e4e2"],
    ["Copper", 8.94, "#b87333"],
    ["Silver", 10.49, "silver"],
    ["Silver", 10.49, "silver"],
    ["Gold", 19.30, "gold"]
  ]); 
 */
  var view = new google.visualization.DataView(data);
  view.setColumns([0, 1,
                   { calc: "stringify",
                     sourceColumn: 1,
                     type: "string",
                     role: "annotation" }]);

  var options = {
    title: "최근 1년 매출 현황 (전년 동월 1일 부터 금년 전월 말일까지)",
    width: 1200,
    height: 400,
    bar: {groupWidth: "95%"},
    legend: { position: "none" },
  };
  var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
  chart.draw(view, options);
}


    </script>
<script type="text/javascript">
function getSQresult(){
	   var url = "/uuplex/c-box/manage/reserve/screenQuater";
	   var method = "GET";
	   var params = "year=" + document.yearform.year.value;
	   
	   sendRequest(screenQ, url, method, params);
	   
	}

function screenQ() {
	   
	   var screen = document.getElementById("result");
	   
	   if(httpRequest.readyState == 4 ) {
	      if(httpRequest.status == 200) {
	         //응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
	         screen.innerHTML = httpRequest.responseText;
	         
	      } else {
	    	  screen.innerHTML = httpRequest.status + "에러 발생";
	      }
	   } else {
		   screen.innerHTML = "상태 : " + httpRequest.readyState;
	   }
	   
	}
</script>

<style>
.list{
	margin: 100px auto;
}
.donutchart{
	float:left;
}
</style> 

<div class="container">
	<div class="list">
		<h2>예매 관리</h2>
		<div role="tabpanel">

			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab">예매순위</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab">매출현황</a></li>
				<li role="presentation"><a href="#messages"
					aria-controls="messages" role="tab" data-toggle="tab">스크린 쿼터</a></li>
				<li role="presentation"><a href="#settings"
					aria-controls="settings" role="tab" data-toggle="tab">...</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane fade in active" id="home">
					
				 <div class="donutchart" id="donutchart" style="width: 380px; height: 400px;"></div> 
				 <div class="donutchart" id="donutchart2" style="width: 380px; height: 400px;"></div> 
				 <div class="donutchart" id="donutchart3" style="width: 380px; height: 400px;"></div> 
				 
				 <div>
				 	<div>최근 7일 관객 수 : ${reserveCnt}</div>
				 	
				 	<table class="table" id="table">
				 		<tr>
				 			<th>순위</th>
				 			<th>영화명</th>
				 			<th>예매율</th>
				 			<th>개봉일</th>
				 			<th>성별</th>
				 			<th>연령별</th>
				 		</tr>
				 		<c:forEach items="${dtos}" var="dto">
							<tr>
								<td>${dto.rank_num}</td>
								<td>${dto.title1}</td>
								<td>
								<c:set var = "string3" value="${fn:substring((dto.cnt)/(reserveCnt)*100,0,5)}"/>
								${string3}%
								</td>
								<td>${dto.releaseDate}</td>
								
								<td><input type="button" class="btn" name="deleteButton" value="성별"
										onclick="window.location='/uuplex/c-box/manage/movie/delete?movie_num=${dto.movie_num}'"></td>
								<td><input type="button" class="btn" name="deleteButton" value="연령별"
										onclick="window.location='/uuplex/c-box/manage/movie/delete?movie_num=${dto.movie_num}'"></td>		
							</tr>
						</c:forEach>
				 		
				 	</table>
				 </div>
				
				
				</div>
				<div role="tabpanel" class="tab-pane fade" id="profile">
				
    				<div id="columnchart_values" style="width: 1170px; height: 800px;"></div>
				
				</div>
				<div role="tabpanel" class="tab-pane fade" id="messages">
				<h2>스크린 쿼터</h2>
					<form action="" name="yearform">
						<select name="year">
							<% Calendar cal = Calendar.getInstance();
							cal.add(Calendar.YEAR, -1); %>
							<% Calendar cal2 = Calendar.getInstance();
							cal2.add(Calendar.YEAR, -2); %>
							<% Calendar cal3 = Calendar.getInstance();
							cal3.add(Calendar.YEAR, -3); %>
							<% Calendar cal4 = Calendar.getInstance();
							cal4.add(Calendar.YEAR, -4); %>
							<option selected value="">
								<fmt:formatDate value="<%=new Date()%>" pattern="yyyy"/>
							</option>
							<option value="<%=new Date(cal.getTimeInMillis())%>">
								<fmt:formatDate value="<%=new Date(cal.getTimeInMillis())%>" pattern="yyyy"/>
							</option>
							<option value="<%=new Date(cal2.getTimeInMillis())%>">
								<fmt:formatDate value="<%=new Date(cal2.getTimeInMillis())%>" pattern="yyyy"/>
							</option>
							<option value="<%=new Date(cal3.getTimeInMillis())%>">
								<fmt:formatDate value="<%=new Date(cal3.getTimeInMillis())%>" pattern="yyyy"/>
							</option>
							<option value="<%=new Date(cal4.getTimeInMillis())%>">
								<fmt:formatDate value="<%=new Date(cal4.getTimeInMillis())%>" pattern="yyyy"/>
							</option>
						</select>
						<input type="button" class="btn" value="조회하기" onclick="getSQresult();">
					</form>
					<div id="result"></div>
				</div>
				<div role="tabpanel" class="tab-pane" id="settings">...</div>
			</div>

		</div>
	</div>
</div>

