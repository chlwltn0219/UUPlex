<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%> 
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

google.charts.setOnLoadCallback(drawChart);

function drawChart() {
	
	alert("gg");
	
	//방법1
	 /*  var data = google.visualization.arrayToDataTable([
		  
		 <c:forEach items="${dtos}" var="dto" varStatus="status">
		 
		 	'${status.index == 0}' ? ['${dto.title1}',  '${(dto.cnt)/(reserveCnt)*100}'] : ',' + ['${dto.title1}',  '${(dto.cnt)/(reserveCnt)*100}']
		 
		 	</c:forEach>
		 ]);  */
	 
	 
	   
	   //방법2
	   var data = new google.visualization.DataTable();

	   data.addColumn('string','title');
	   data.addColumn('number','rate');
	   
	  
		<c:forEach items="${dtos}" var="dto" varStatus="status">
			data.addRows([
				['${dto.title1}',  '${(dto.cnt)/(reserveCnt)*100}']
			]);
		</c:forEach>
		 
			
	/*  var data = google.visualization.arrayToDataTable([
			[ 'Task', 'Hours per Day' ],
			['Work',     11],
			[ 'Eat', 2 ],
			[ 'Commute', 2 ], [ 'Watch TV', 2 ],
			[ 'Sleep', 7 ] ]); */
  
	var options = {
		title : 'My Daily Activities',
		pieHole : 0.4,
	};

	var chart = new google.visualization.PieChart(
			document.getElementById('donutchart'));
	chart.draw(data, options);
}
</script>
<script type="text/javascript">
      google.charts.load("current", {packages:['corechart']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ["Element", "Density", { role: "style" } ],
    ["Copper", 8.94, "#b87333"],
    ["Silver", 10.49, "silver"],
    ["Gold", 19.30, "gold"],
    ["Platinum", 21.45, "color: #e5e4e2"]
  ]);

  var view = new google.visualization.DataView(data);
  view.setColumns([0, 1,
                   { calc: "stringify",
                     sourceColumn: 1,
                     type: "string",
                     role: "annotation" },
                   2]);

  var options = {
    title: "Density of Precious Metals, in g/cm^3",
    width: 600,
    height: 400,
    bar: {groupWidth: "95%"},
    legend: { position: "none" },
  };
  var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
  chart.draw(view, options);
}

    </script>

<style>
.list{
	margin: 100px auto;
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
				<div role="tabpanel" class="tab-pane active" id="home">
					
				 <div id="donutchart" style="width: 500px; height: 400px;"></div> 
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
								<td>${(dto.cnt)/(reserveCnt)*100}</td>
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
				<div role="tabpanel" class="tab-pane" id="profile">
				
    				<div id="columnchart_values" style="width: 900px; height: 300px;"></div>
				
				</div>
				<div role="tabpanel" class="tab-pane" id="messages">...</div>
				<div role="tabpanel" class="tab-pane" id="settings">...</div>
			</div>

		</div>
	</div>
</div>

