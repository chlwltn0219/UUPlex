
//=====================================Input Modal

function classroomInput() {	
	
	var url = "/uuplex/fitness/manage/classroom/inputForm";
	sendRequest(classroomModal, url);
	
}

//=====================================Detail Modal


function classroomDetail(crid) {
	
	var url = "/uuplex/fitness/classroom/detail"
		var method = "GET"
	var params = "crid=" + crid; 
	
	sendRequest(classroomModal, url, method, params);
}

//=====================================Modify Modal

function classroomModify(crid) {
	
	var url = "/uuplex/fitness/manage/classroom/modify"
	var method = "GET"
	var params = "crid=" + crid; 
	
	sendRequest(classroomModal, url, method, params);
}

//=====================================Modify Pro

function classroomModifyPro() {
	var crid = document.classroomModifyForm.crid.value;
	var crname = document.classroomModifyForm.crname.value;
	var activated = document.classroomModifyForm.activated.value;
	
	var url = "/uuplex/fitness/manage/classroom/modifyPro"
	var method = "POST"
	var params = "crid=" + crid + "&crname=" + crname + 
				 "&activated=" + activated ;
	
	sendRequest(classroomModal, url, method, params);

}

//=====================================Write Modal Dialog

function classroomModal() {

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