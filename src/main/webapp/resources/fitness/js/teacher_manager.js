
//=====================================Input Modal

function teacherInput() {	
	
	var url = "/uuplex/fitness/manage/teacher/inputForm";
	sendRequest(teacherModal, url);
	
}

//=====================================Detail Modal


function teacherDetail(tid) {
	
	var url = "/uuplex/fitness/teacher/detail"
		var method = "GET"
	var params = "tid=" + tid; 
	
	sendRequest(teacherModal, url, method, params);
}

//=====================================Modify Modal

function teacherModify(tid) {
	
	var url = "/uuplex/fitness/manage/teacher/modify"
		var method = "GET"
	var params = "tid=" + tid; 
	
	sendRequest(teacherModal, url, method, params);
}

//=====================================Modify Pro

function teacherModifyPro() {
	var tid = document.tModifyForm.tid.value;
	var tname = document.tModifyForm.tname.value;
	var tinfo = document.tModifyForm.tinfo.value;
	var activated = document.tModifyForm.activated.value;
	var initPic = document.tModifyForm.initPic.value
	
	var url = "/uuplex/fitness/manage/teacher/modifyPro"
	var method = "POST"
	var params = "tid=" + tid + "&tname=" + tname + "&tinfo=" + tinfo + 
				 "&activated=" + activated + "&initPic=" + initPic ;
	
	sendRequest(teacherModal, url, method, params);

}

//=====================================Write Modal Dialog

function teacherModal() {

	var modal = document.getElementById("dialog");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다	
			modal.innerHTML = httpRequest.responseText;
		} else {
			modal.innerHTML = "에러발생!@!!!!!!!대피하라!!!!!!!!";
		}		
	} else {
		modal.innerHTML="상태 : " + httpRequest.readyState;
	}
}