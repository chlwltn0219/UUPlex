<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Man',   ${memGenderMan}],
          ['Woman', ${memGenderWoman}],
        ]);

        var options = {
          title: 'Member Gender'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
      
      
      
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);


      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
         ['Month', '10대', '20대', '30대', '40대', '50대 이상', 'Average'],
         ['2016/10',  165000,      938000,         522000,             998000,           450000,      614000],
         ['2016/11',  135000,      1120000,        599000,             1268000,          288000,      682000],
         ['2016/12',  157000,      1167000,        587000,             807000,           397000,      623000],
         ['2017/01',  139000,      1110000,        615000,             968000,           215000,      609000],
         ['2017/02',  136000,      691000,         629000,             1026000,          366000,      569000]
     	]);

	    var options = {
	      title : '월별 연령별 매출액',
	      vAxis: {title: 'Calculate'},
	      hAxis: {title: 'Month'},
	      seriesType: 'bars',
	      series: {5: {type: 'line'}}
	    };
	
	    var chart = new google.visualization.ComboChart(document.getElementById('chart2_div'));
	    chart.draw(data, options);
    }
      

      google.charts.load('current', {packages: ['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawBasic);

      function drawBasic() {

            var data = google.visualization.arrayToDataTable([
              ['Grade', 'MemberCount',],
              <c:forEach var="dto" items="${gradeCount}">
	              ['${dto.grade}', ${dto.cnt}],
              </c:forEach>
            ]);

            var options = {
              title: 'Member Grade',
              chartArea: {width: '50%'},
              hAxis: {
                title: 'Total Member',
                minValue: 0
              },
              vAxis: {
                title: 'Grade'
              }
            };

            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

            chart.draw(data, options);
          }
      
      
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawBarChart);
      
      function drawBarChart() {
        var data = google.visualization.arrayToDataTable([
          ['Age', 'Man', 'Woman'],
          ['10대 이하', 10, 4],
          ['10대', 52, 47],
          ['20대', 66, 112],
          ['30대', 103, 54],
          ['40대', 36, 12],
          ['50대', 20, 7],
          ['60대 이상', 6, 5]
        ]);

        var options = {
          title: 'Member Age',
        };

        var chart = new google.visualization.BarChart(document.getElementById('columnchart_material'));

        chart.draw(data, options);
      }
      
    </script>
    <style>
    	.container {
    		margin-left:350px;
    	}
    	
    	.jb-cell {
			align:center;
			width: 1000px;
	  		margin: 50px 100px 50px 100px;
	  		padding: 30px;
	  		border: 3px solid #cccccc;
		}
    </style>
  </head>
  <body>
  	<div class="container">
  		<br><br>
  		<h2 style="margin: 0 0 0 530px;">회원통계</h2>
    
    <div class="jb-cell">
    <h3>등급분포</h3> <br>
    
    <table class="table table-condensed" style="table-layout:fixed">
    	<tr>
	 		<th colspan="5" style="background-color:#f0f0f0">등급분포</th>
	 	</tr>
    	<tr>
    		<th>회원등급</th>
    		<c:forEach var="dto" items="${gradeCount}">
    			<th style="text-align:center">${dto.grade}</th>
    		</c:forEach>
    	</tr>
    	<tr>
    		<th>회원 수</th>
    		<c:forEach var="dto" items="${gradeCount}">
    			<th style="text-align:center">${dto.cnt}명</th>
    		</c:forEach>
    	</tr>
    	<tr>
    		<th colspan="5"></th>
    	</tr>
    </table>
    
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
    </div>
    
  	<div class="jb-cell">
  	<h3>성별분포</h3> <br>
  	
  	<table class="table table-condensed">
    	<tr>
	 		<th colspan="5" style="background-color:#f0f0f0">성별분포</th>
	 	</tr>
    	<tr>
    		<th>성별</th>
    		<th>남성</th>
    		<th>여성</th>
    	</tr>
    	<tr>
    		<th>회원 수</th>
    		<th>${memGenderMan}명</th>
    		<th>${memGenderWoman}명</th>
    	</tr>
    	<tr>
    		<th colspan="5"></th>
    	</tr>
    </table>
  	
    <div id="piechart" style="width: 900px; height: 500px;" ></div>
    </div>
    
    <div class="jb-cell">
    <h3>연령분포</h3>
 	<div id="columnchart_material" style="width: 900px; height: 700px;"></div>
 	</div>
    
    <div class="jb-cell">
    <h3>연령대별 매출액</h3>
 	<div id="chart2_div" style="width: 900px; height: 500px;"></div>
 	</div>
    
 	</div>
  </body>
</html>