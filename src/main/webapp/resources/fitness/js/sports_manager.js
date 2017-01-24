/**
 * 
 */
//======================== Input Modal

function sportsInput() {
	
	var url = "/uuplex/fitness/manage/sports/inputForm";
	sendRequest(sportsInputModal, url);
	
}

function sportsInputModal() {
	
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

//======================== Detail Modal

function sportsDetails(sid) {
	var url = "/uuplex/fitness/sports/detail";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(sportsCallBack, url, method, params);
}


function sportsCallBack() {

	var sid = document.getElementById("sid");		
	var sname = document.getElementById("sname");		
	var sinfo = document.getElementById("sinfo");	
	var activated = document.getElementById("activated");
	var reg_date = document.getElementById("reg_date");	
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			
			// json string 을 object로 변환
			var detail = eval("(" + httpRequest.responseText + ")");
			
			sid.innerHTML = detail.sid;
			sname.innerHTML = detail.sname;
			sinfo.innerHTML = detail.sinfo;
			reg_date.innerHTML = detail.reg_date.substring(0, 10);
			
			if(detail.activated == 'Y') {
				activated.innerHTML = '운영중';
			} else if(detail.activated == 'N') {
				activated.innerHTML = '비 운영중';
			} else {
				activated.innerHTML = '잘못된 값 : ' + detail.activated;
			}
			
		} else {
//			sid.innerHTML = httpRequest.status + "에러 발생";
			sname.innerHTML = httpRequest.status + "에러 발생";
			sinfo.innerHTML = httpRequest.status + "에러 발생";
			activated.innerHTML = httpRequest.status + "에러 발생";
			reg_date.innerHTML =  httpRequest.status + "에러 발생";
		}
		
	} else {
//		sid.innerHTML= "상태 : " + httpRequest.readyState;
		sname.innerHTML = "상태 : " + httpRequest.readyState;
		sinfo.innerHTML = "상태 : " + httpRequest.readyState;
		activated.innerHTML = "상태 : " + httpRequest.readyState;
		reg_date.innerHTML = "상태 : " + httpRequest.readyState;
	}
}