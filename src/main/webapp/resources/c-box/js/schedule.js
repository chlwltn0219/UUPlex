/**
 * 
 */
//======================== InputSchedule Modal
function scheduleInput() {
	
	var url = "/uuplex/c-box/manage/schedule/inputForm";
	sendRequest(scheduleModal, url);
	
}
//======================== Write Modal Dialog
function scheduleModal() {
	
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