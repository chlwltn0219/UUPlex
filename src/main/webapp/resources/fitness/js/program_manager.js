/**
 * 
 */
//======================== Input Modal
function programInput() {
	
	var url = "/uuplex/fitness/manage/program/inputForm";
	sendRequest(programModal, url);
	
}

//======================== Detail Modal
function programDetail(sid) {
	var url = "/uuplex/fitness/program/detail";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(programModal, url, method, params);
}

//======================== Modify Modal
function programModify(sid){
	var url = "/uuplex/fitness/manage/program/modify";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(programModal, url, method, params);
}

//======================== Modify Pro
function programModifyPro(){
	var sid = document.programModifyForm.sid.value;
	var sname = document.programModifyForm.sname.value;
	var sinfo = document.programModifyForm.sinfo.value;
	var activated = document.programModifyForm.activated.value;
	
	var url = "/uuplex/fitness/manage/sports/modifyPro";
	var method = "POST";
	var params = "sid=" + sid + "&sname=" + sname + "&sinfo=" + sinfo + "&activated=" + activated;
	sendRequest(sportsModal, url, method, params);
}

//======================== Write Modal Dialog
function programModal() {
	
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