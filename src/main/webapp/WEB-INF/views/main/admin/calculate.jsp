<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    google.charts.load('current', {packages: ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawBasic);

    function drawBasic() {

          var data = google.visualization.arrayToDataTable([
            ['Shop', 'Calculate',],
            ['영화관', ${movieDayCal}],
            ['호텔', ${hotelDayCal}],
            ['휘트니스', ${fitnessDayCal}],
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
        
        <c:forEach var="dto" items="${monthCal}">
        
        
        ['${dto.monthCal}',  ${dto.m_totPrice},  ${dto.h_totPrice},  ${dto.f_totPrice}],
    
        
        </c:forEach>
      ]);

      var options = {
        title: 'Month Calculate',
        legend: { position: 'bottom' },
        vAxis: {minValue: 0}   
      };

      var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

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
  		<h2 style="margin: 0 0 0 530px;">매장정산</h2>
    
    <div class="jb-cell">
    <h3>일일매출</h3>
    
    <table class="table table-condensed" style="table-layout:fixed">
    	<tr>
	 		<th colspan="5" style="background-color:#f0f0f0">금일매출</th>
	 	</tr>
    	<tr>
    		<th>현재시간</th>
    		<th style="text-align:center">영화관</th>
    		<th style="text-align:center">호텔</th>
    		<th style="text-align:center">휘트니스</th>
    		<th style="text-align:center">합계</th>
    	</tr>
    	<tr>
    		<th>${todayDate}</th>
    		<th style="text-align:center"><fmt:formatNumber value="${movieDayCal}" pattern="#,###.##"/>원</th>
    		<th style="text-align:center"><fmt:formatNumber value="${hotelDayCal}" pattern="#,###.##"/>원</th>
    		<th style="text-align:center"><fmt:formatNumber value="${fitnessDayCal}" pattern="#,###.##"/>원</th>
    		<th style="text-align:center"><fmt:formatNumber value="${movieDayCal + hotelDayCal + fitnessDayCal}" pattern="#,###.##"/>원</th>
    	</tr>
    	<tr>
    		<th colspan="5"></th>
    	</tr>
    </table>
    
    <div id="chart_div" style="width: 900px; height: 300px;"></div>
    </div>
    
    
   <div class="jb-cell">
    <h3>월별매출</h3>
    
    <table class="table table-condensed" style="table-layout:fixed">
    	<tr>
	 		<th colspan="5" style="background-color:#f0f0f0">월별매출</th>
	 	</tr>
    	<tr>
    		<th>Month</th>
    		<th style="text-align:center">영화관</th>
    		<th style="text-align:center">호텔</th>
    		<th style="text-align:center">휘트니스</th>
    		<th style="text-align:center">합계</th>
    	</tr>
    	
    	<c:forEach var="dto" items="${monthCal}">
    	<tr>
    		<th>${dto.monthCal}</th>
    		<th style="text-align:center"><fmt:formatNumber value="${dto.m_totPrice}" pattern="#,###.##"/>원</th>
    		<th style="text-align:center"><fmt:formatNumber value="${dto.h_totPrice}" pattern="#,###.##"/>원</th>
    		<th style="text-align:center"><fmt:formatNumber value="${dto.f_totPrice}" pattern="#,###.##"/>원</th>
    		<th style="text-align:center"><fmt:formatNumber value="${dto.m_totPrice + dto.h_totPrice + dto.f_totPrice}" pattern="#,###.##"/>원</th>
    	</tr>
    	
    	</c:forEach>
    	
    	<tr>
    		<th colspan="5"></th>
    	</tr>
    </table>
    
    <div id="curve_chart" style="width: 900px; height: 400px;"></div>
    </div>
    
 	</div>
    
  </body>
</html>