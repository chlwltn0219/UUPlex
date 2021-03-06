
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

//=====================================Modify Pro : 사용 안함
//function teacherModifyPro() {
//	var tid = document.tModifyForm.tid.value;
//	var tname = document.tModifyForm.tname.value;
//	var tinfo = document.tModifyForm.tinfo.value;
//	var activated = document.tModifyForm.activated.value;
//	var initPic = document.tModifyForm.initPic.value;
//	var sid = document.tModifyForm.sid.value;
//	
//	var url = "/uuplex/fitness/manage/teacher/modifyPro"
//	var method = "POST"
//	var params = "tid=" + tid + "&tname=" + tname + "&tinfo=" + tinfo + 
//				 "&activated=" + activated + "&initPic=" + initPic + "&sid=" + sid;
//	
//	if(teacherDataCheck()){
//		sendRequest(teacherModal, url, method, params);
//	}
//
//}

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

//======================== Check Data
function teacherDataCheck() {
	
	var tname = $('input[name=tname]');
	var activated = $('input[name=activated]:checked');
	
	if(tname.val().length <= 0){
		alert("강사명은 빈칸이 올 수 없습니다.");
		tname.focus();
		return false;
	} else if (activated.val() == 'N') {
		var check = confirm(
				'*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*주의*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*\n' + 
				'강사를 퇴사 시키면 해당 강사의 개설된 모든 프로그램이 비활성화 됩니다. ' + 
			    '비활성화된 강좌는 강사를 재직으로 바꾸더라도 자동으로 복구되지 않습니다. \n' +
			    '*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*\n' +
			    '해당 강사를 퇴직 시키시겠습니까?');
		if(!check){
			return false;
		}
	}

	return true;
}