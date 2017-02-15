/**
 * 
 */
//======================== regist form
function refund(stid) {
	
	var url = "/uuplex/fitness/user/statement/refund";
	var method = "POST";
	var params = "stid=" + stid;
	sendRequest(refundModal, url, method, params);
}

//===================
function refundPro(stid) {
	
	var url = "/uuplex/fitness/user/statement/refundPro";
	var method = "POST";
	var params = "stid=" + stid;
	sendRequest(refundXML, url, method, params);
}


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

function refundXML() {
	
	var modal = document.getElementById("dialog");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 responseXML로 받는다
			
			var xml = httpRequest.responseXML;
			var code = xml.getElementsByTagName('cnt')[0].childNodes[0].nodeValue;
			
			if(code == 1) {
				alert('환불에 성공하였습니다.');
			} else {
				alert('환불을 실패하였습니다.');
			}
			
			location.reload();
			
		} else {
			modal.innerHTML = httpRequest.status + "에러 발생";
		}
	} else {
		modal.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}

