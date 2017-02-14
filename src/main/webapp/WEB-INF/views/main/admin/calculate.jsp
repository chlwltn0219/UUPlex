<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
    google.charts.load('current', {packages: ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawBasic);

    function drawBasic() {

          var data = google.visualization.arrayToDataTable([
            ['Shop', 'Calculate',],
            ['영화관', 210000],
            ['호텔', 130000],
            ['휘트니스', 165000],
          ]);

          var options = {
            title: 'Today Calculate',
            chartArea: {width: '50%'},
            hAxis: {
              title: 'Calculate',
              minValue: 0
            },
            vAxis: {
              title: 'Shop'
            }
          };

          var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

          chart.draw(data, options);
        }
    
    
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Year', 'Sales', 'Expenses', 'Exam'],
        ['2013',  1000,      400,		500],
        ['2014',  1170,      460,		670],
        ['2015',  660,       1120,		312],
        ['2016',  1030,      540,		340]
      ]);

      var options = {
        title: 'Company Performance',
        hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
        vAxis: {minValue: 0}
      };

      var chart = new google.visualization.AreaChart(document.getElementById('chart_div2'));
      chart.draw(data, options);
    }
    
    
    
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Month', '영화', '호텔', '휘트니스'],
        ['2016-10',  3510000,      1580000,		2650000],
        ['2016-11',  2350000,      4520000,		3650000],
        ['2016-12',  6230000,      2890000,		4356000],
        ['2017-01',  7210000,      3620000,		5720000]
      ]);

      var options = {
        title: 'Month Calculate',
        curveType: 'function',
        legend: { position: 'bottom' }
      };

      var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

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
  		<h2 style="margin: 0 0 0 530px;">매장정산</h2>
    
    <div class="jb-cell">
    <h3>일일매출</h3>
    
    <table class="table table-condensed">
    	<tr>
	 		<th colspan="5" style="background-color:#f0f0f0">일일매출</th>
	 	</tr>
    	<tr>
    		<th>Date</th>
    		<th>영화관</th>
    		<th>호텔</th>
    		<th>휘트니스</th>
    		<th>합계</th>
    	</tr>
    	<tr>
    		<th>2017-02-14</th>
    		<th>210,000원</th>
    		<th>130,000원</th>
    		<th>165,000원</th>
    		<th>505,000원</th>
    	</tr>
    	<tr>
    		<th colspan="5"></th>
    	</tr>
    </table>
    
    <div id="chart_div" style="width: 900px; height: 300px;"></div>
    </div>
    
    
   <div class="jb-cell">
    <h3>월별매출</h3>
    
    <table class="table table-condensed">
    	<tr>
	 		<th colspan="5" style="background-color:#f0f0f0">월별매출</th>
	 	</tr>
    	<tr>
    		<th>Month</th>
    		<th>영화관</th>
    		<th>호텔</th>
    		<th>휘트니스</th>
    		<th>합계</th>
    	</tr>
    	<tr>
    		<th>2016-10</th>
    		<th>3,510,000원</th>
    		<th>1,580,000원</th>
    		<th>2,650,000원</th>
    		<th>7,740,000원</th>
    	</tr>
    	
    	<tr>
    		<th>2016-11</th>
    		<th>2,350,000원</th>
    		<th>4,520,000원</th>
    		<th>3,650,000원</th>
    		<th>10,520,000원</th>
    	</tr>
    	
    	<tr>
    		<th>2016-12</th>
    		<th>6,230,000원</th>
    		<th>2,890,000원</th>
    		<th>4,356,000원</th>
    		<th>18,526,000원</th>
    	</tr>
    	
    	<tr>
    		<th>2017-01</th>
    		<th>7,210,000원</th>
    		<th>3,620,000원</th>
    		<th>5,720,000원</th>
    		<th>16,550,000원</th>
    	</tr>
    	
    	<tr>
    		<th colspan="5"></th>
    	</tr>
    </table>
    
    <div id="curve_chart" style="width: 900px; height: 400px;"></div>
    </div>
    
 	</div>
    
  </body>
</html>