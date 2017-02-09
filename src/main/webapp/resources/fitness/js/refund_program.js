/**
 * 
 */
//======================== regist form
function refund(stid) {
	
	alert(stid);
	
	var url = "/uuplex/fitness/user/statement/refund";
	var method = "POST";
	var params = "stid=" + stid;
//	sendRequest(refundModal, url, method, params);
}

//===================

function refundModal() {
	
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

