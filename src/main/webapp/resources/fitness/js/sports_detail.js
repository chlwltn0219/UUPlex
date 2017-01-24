/**
 * 
 */

function sportsDetails(sid) {
	var param = "sid=" + sid; 
	var request = new Request(sportsCallBack, "/uuplex/fitness/sports/detail", "GET", sid) 
	request.sendRequest();
}


function sportsCallBack() {

	var sid = document.getElementById("sid");		
	var sname = document.getElementById("sname");		
	var sinfo = document.getElementById("sinfo");		
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			tid.innerHTML = httpRequest.responseText;
			
		} else {
			sid.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
		}
		
	} else {
		sid.innerHTML="상태 : " + httpRequest.readyState;
	}
}