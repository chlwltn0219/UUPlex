
//=====================================Input Modal

function teacherInput() {	
	
	var url = "/uuplex/fitness/manage/teacher/inputForm";
	sendRequest(teacherInputModal, url);
	
}

function teacherInputModal() {
	
	var modal = document.getElementById("dialog");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다	
			alert(httpRequest.reponseText);
			modal.innerHTML = httpRequest.reponseText;			
		} else {
			modal.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
		}		
	} else {
		modal.innerHTML="상태 : " + httpRequest.readyState;
	}
}

//=====================================Detail Modal


function teacherDetails(tid) {
	
	var url = "/uuplex/fitness/teacher/detail"
		var method = "GET"
	var params = "tid=" + tid; 
	sendRequest(teacherCallBack, url, method, params);
}


/**
 * @returns
 */
function teacherCallBack() {

	var tid = document.getElementById("tid");		
	var tname = document.getElementById("tname");		
	var tinfo = document.getElementById("tinfo");	
	var activated = document.getElementById("activated");	
	var reg_date = document.getElementById("reg_date");	
	
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			
			// json String을 object로 변환
			var detail = eval("(" + httpRequest.responseText + ")");
			
			tid.innerHTML = detail.tid;
			tname.innerHTML = detail.tname;
			tinfo.innerHTML = detail.tinfo;
			reg_date.innerHTML = detail.reg_date.substring(0, 10);
			
			if (detail.activated == 'Y') {
				activated.innerHTML = '재직중';
			} else if(detail.activated == 'N') {
				activated.innerHTML = '퇴사';
			} else {
				activated.innerHTML = '잘못된 값 : ' + detail.activated;
			}
			
			
		} else {
			tid.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
			tname.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
			tinfo.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
			activated.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
			reg_date.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
		}
		
	} else {
		tid.innerHTML="상태 : " + httpRequest.readyState;
		tname.innerHTML = "상태 : " + httpRequest.readyState;
		tinfo.innerHTML = "상태 : " + httpRequest.readyState;
		activated.innerHTML = "상태 : " + httpRequest.readyState;
		reg_date.innerHTML = "상태 : " + httpRequest.readyState;
	}
}