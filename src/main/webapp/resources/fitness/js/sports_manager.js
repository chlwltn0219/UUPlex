/**
 * 
 */
//======================== Input Modal
function sportsInput() {
	
	var url = "/uuplex/fitness/manage/sports/inputForm";
	sendRequest(sportsModal, url);
	
}

//======================== Detail Modal
function sportsDetail(sid) {
	var url = "/uuplex/fitness/sports/detail";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(sportsModal, url, method, params);
}

//======================== Modify Modal
function sportsModify(sid){
	var url = "/uuplex/fitness/manage/sports/modify";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(sportsModal, url, method, params);
}

//======================== Modify Pro
function sportsModifyPro(){
	var sid = document.sportsModifyForm.sid.value;
	var sname = document.sportsModifyForm.sname.value;
	var sinfo = document.sportsModifyForm.sinfo.value;
	var activated = document.sportsModifyForm.activated.value;
	
	var url = "/uuplex/fitness/manage/sports/modifyPro";
	var method = "POST";
	var params = "sid=" + sid + "&sname=" + sname + "&sinfo=" + sinfo + "&activated=" + activated;
	
	if(sportsDataCheck()){
		sendRequest(sportsModal, url, method, params);
	}
}

//======================== Write Modal Dialog
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

function sportsDataCheck() {
	
	var sname = $('input[name=sname]');
	
	if(sname.val().length <= 0){
		alert("종목명은 빈칸이 올 수 없습니다.");
		sname.focus();
		return false;
	} 

	return true;
}