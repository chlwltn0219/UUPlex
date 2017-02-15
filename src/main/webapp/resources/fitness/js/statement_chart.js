/**
 * 
 */

	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(dailySaleList);
	google.charts.setOnLoadCallback(monthlySaleList);

	// ajax data 호출
	function dailySaleList(){
		$.ajax({
			type: 'GET',
			url: '/uuplex/fitness/manage/statement/dailySales',
			async: false,
			success: function(data) {
            	drawDailyChart(data);
              }
         });
	}
	function monthlySaleList(){
		$.ajax({
			type: 'GET',
			url: '/uuplex/fitness/manage/statement/monthlySales',
			async: false,
			success: function(data) {
				drawMonthlyChart(data);
              }
         });
	}
	
	// draw chart
	function drawDailyChart(daily) {
	    // Create the data table.
		var data = new google.visualization.DataTable();
		
		data.addColumn('string', '일자');
		data.addColumn('number', '수입');
		
		daily.forEach(function(item){
			var row = [item.date, item.sale];
			data.addRow(row);
		});
		
		// Set chart options
		var options = {
			chart:{
				title:'이달의 일간 등록 수입',
			},
			height : 300,
			vAxis: {
				viewWindow: {
//					max:5000000,
					min:0
				}
			}
		};
		
		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.LineChart(document.getElementById('dailySale'));
		chart.draw(data, options);
	}
	
	function drawMonthlyChart(monthly) {
	    // Create the data table.
		var data = new google.visualization.DataTable();
		
		data.addColumn('string', '일자');
		data.addColumn('number', '수입');
		
		monthly.forEach(function(item){
			var row = [item.date, item.sale];
			data.addRow(row);
		});
		
		// Set chart options
		var options = {
				chart:{
					title:'최근 6개월의 등록 수입',
				},
				height : 300,
				vAxis: {
					viewWindow: {
//						max:7500000,
						min:0
					}
				}
			}; 
		
		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.LineChart(document.getElementById('monthlySale'));
		chart.draw(data, options);
	}
	