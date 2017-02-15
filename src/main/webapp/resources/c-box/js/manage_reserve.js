
	
var m_num;
var tot;

//======================== Detail Modal
function genderAgeRate(movie_num,total) {
   var url = "/uuplex/c-box/genderAgeRate";
   var method = "GET";
   var params = "movie_num=" + movie_num + "total=" + total;
   
   m_num = movie_num;
   tot = total;
   
   sendRequest(graphModal, url, method, params);
   
   
   
   
   
   
}



//======================== Write Modal Dialog
function graphModal() {
   var graph = document.getElementById("dialog");
   
   if(httpRequest.readyState == 4 ) {
      if(httpRequest.status == 200) {
         //응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
    	  graph.innerHTML = httpRequest.responseText;
    	  /*graph.innerHTML += '<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>';*/
    	  /* 
    	   * AJAX 데이터 호출
    	   */
    	  $.ajax({
  			type: 'GET',
  			url: '/uuplex/c-box/genderAgeRate_json?movie_num='+m_num+'&total='+tot,
//  			async: false,
  			success: function(data) {
  				
  				
  				
  				
  				console.dir(data);
  				 google.charts.load('visualization', '1', {'packages':['corechart'], "callback": drawChart5(data)});

  			}
           });
    	  /*
    	   * 그래프 DATA, DRAW 호출
    	   */
    	  	
    	  
    	
    	  
    	  
    	  
         
      } else {
    	  graph.innerHTML = httpRequest.status + "에러 발생";
      }
   } else {
	   graph.innerHTML = "상태 : " + httpRequest.readyState;
   }
   
}

function drawChart5(data) {
	   
		var woman = data.gender*1;
		var man = data.total-data.gender*1;
		
	   //방법2
	   var chartData = new google.visualization.DataTable();
	   
	   chartData.addColumn('string','title');
	   chartData.addColumn('number','rate');
	   chartData.addRows([
			['여자',  woman],
			['남자',  man]
		]);
		
	   
	var options = {
		title : '성별 예매 분포',
		pieHole : 0.4,
		label: 'none',
		pieSliceText: 'none',
		
	};

	var chart = new google.visualization.PieChart(
			document.getElementById('donutchart5'));
	
	chart.draw(chartData, options);
	
	
}
