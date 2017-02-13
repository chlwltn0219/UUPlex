/**
 * 
 */

//======================== Detail Modal
function genderAgeRate(movie_num) {
   var url = "/uuplex/c-box/genderAgeRate";
   var method = "GET";
   var params = "movie_num=" + movie_num;
   sendRequest(graphModal, url, method, params);
}



//======================== Write Modal Dialog
function graphModal() {
   
   var graph = document.getElementById("dialog");
   
   if(httpRequest.readyState == 4 ) {
      if(httpRequest.status == 200) {
         //응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
    	  graph.innerHTML = httpRequest.responseText;
    	  
    	  /*
    	   * AJAX 데이터 호출
    	   */
    	  /*
    	   * 그래프 DATA, DRAW 호출
    	   */
    	  
    	  
    	  google.load('visualization', '1', {'packages':['corechart'], "callback": drawChart});
    	  
    	  
    	  
         
      } else {
    	  graph.innerHTML = httpRequest.status + "에러 발생";
      }
   } else {
	   graph.innerHTML = "상태 : " + httpRequest.readyState;
   }
   
}

function drawChart4() {
	   
	   //방법2
	   var data = new google.visualization.DataTable();

	   data.addColumn('string','title');
	   data.addColumn('number','rate');
		data.addRows([
				['여자',  ${(gender/dto.cnt)*100}],
				['남자',  100-${(gender/dto.cnt)*100}]
			]);
		
		
	var options = {
		title : '전체',
		pieHole : 0.4,
		label: 'none',
		pieSliceText: 'none',
		legend:'none'
		

	    
	};

	var chart = new google.visualization.PieChart(
			document.getElementById('donutchart4'));
	chart.draw(data, options);
	
}
/* 성별 예매 분포 끝 */