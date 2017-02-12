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
         ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
         ['2004/05',  165,      938,         522,             998,           450,      614.6],
         ['2005/06',  135,      1120,        599,             1268,          288,      682],
         ['2006/07',  157,      1167,        587,             807,           397,      623],
         ['2007/08',  139,      1110,        615,             968,           215,      609.4],
         ['2008/09',  136,      691,         629,             1026,          366,      569.6]
     	]);

	    var options = {
	      title : 'Monthly Coffee Production by Country',
	      vAxis: {title: 'Cups'},
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
              ['일반회원', 17],
              ['Green회원', 8],
              ['Gold회원', 5],
              ['VIP회원', 3],
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
          ['10대 이하', 1000, 400],
          ['10대', 1170, 460],
          ['20대', 660, 1120],
          ['30대', 1030, 540],
          ['40대', 367, 125],
          ['50대', 205, 75],
          ['60대 이상', 67, 36]
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
    		margin:50px 0 0 350px;
    		width:1500px;
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
  		<h2 style="margin: 0 0 0 530px;">회원통계</h2>
    
    <div class="jb-cell">
    <h3>등급분포</h3>
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
    </div>
    
  	<div class="jb-cell">
  	<h3>성별분포</h3>
    <div id="piechart" style="width: 900px; height: 500px;" ></div>
    </div>
    
    <div class="jb-cell">
    <h3>연령분포</h3>
 	<div id="columnchart_material" style="width: 900px; height: 700px;"></div>
 	</div>
    
    <div class="jb-cell">
    <h3>테스트</h3>
 	<div id="chart2_div" style="width: 900px; height: 500px;"></div>
 	</div>
    
 	</div>
  </body>
</html>