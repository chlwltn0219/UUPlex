

function teacherDetails(tid) {
	var param = "tid=" + tid; 
	var request = new Request(teacherCallBack, "/uuplex/fitness/detail", "GET", tid) 
	request.sendRequest();
}


function teacherCallBack() {

	var tid = document.getElementById("tid");		
	var tname = document.getElementById("tname");		
	var tinfo = document.getElementById("tinfo");		
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			tid.innerHTML = httpRequest.responseText;
			
		} else {
			tid.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
		}
		
	} else {
		tid.innerHTML="상태 : " + httpRequest.readyState;
	}
}