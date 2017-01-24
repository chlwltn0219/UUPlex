/**
 * 
 */
//======================== Input Modal

function sportsInput() {
	
	var url = "/uuplex/fitness/manage/sports/inputForm";
	sendRequest(sportsModal, url);
	
}

//======================== Detail Modal

function sportsDetails(sid) {
	var url = "/uuplex/fitness/sports/detail";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(sportsModal, url, method, params);
}

function sportsModify(sid){
	var url = "/uuplex/fitness/manage/sports/modify";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(sportsModal, url, method, params);
}

function sportsModifyPro(){
	var sid = document.sportsModifyForm.sid.value;
	var sname = document.sportsModifyForm.sname.value;
	var sinfo = document.sportsModifyForm.sinfo.value;
	
	var url = "/uuplex/fitness/manage/sports/modifyPro";
	var method = "POST";
	var params = "sid=" + sid + "&sname=" + sname + "&sinfo=" + sinfo;
	sendRequest(sportsModal, url, method, params);
}

function sportsModal() {
	
	var modal = document.getElementById("dialog");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			modal.innerHTML = httpRequest.responseText;
		} else {
			modal.innerHTML = httpRequest.status + "에러 발생";
		}
	} else {
		modal.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}