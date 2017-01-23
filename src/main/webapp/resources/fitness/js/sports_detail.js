/**
 * 
 */

function sportsDetails(sid) {
	var param = "sid=" + sid;
	var request = new Request(sportCallBack, '/uuplex/fitness/sports/detail' ,'GET', param);
	
	request.sendRequest();
}

function sportCallBack() {
	var sid = document.getElementById("sid");
	var sname = document.getElementById("sname");
	var sinfo = document.getElementById("sinfo");
	
	if (httpRequest.readyState == 4) {
		if(httpRequest.status == 200){
			var response = httpRequest.responseText;
			
			sid.innerHTML = response.sid;
			sname.innerHTML = response.sname;
			sinfo.innerHTML = response.sinfo;
		} else {
			sid.innerHTML = "에러 발생 !";
			sname.innerHTML = "에러 발생 !";
			sinfo.innerHTML = "에러 발생 !";
		}
	} else {
		sid.innerHTML = "상태 : " + httpRequest.resdyState;
		sname.innerHTML = "상태 : " + httpRequest.resdyState;
		sinfo.innerHTML = "상태 : " + httpRequest.resdyState;
	}
}