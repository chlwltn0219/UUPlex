/**
 * 
 */
//======================== Input Modal
function classInput() {
	var url = "/uuplex/fitness/manage/class/inputForm";
	sendRequest(classModal, url);
}

//======================== Detail Modal
function classDetail(cid) {
	var url = "/uuplex/fitness/class/detail";
	var method = "GET";
	var params = "cid=" + cid;
	sendRequest(classModal, url, method, params);
}

//======================== Modify Modal
function classModify(cid){
	var url = "/uuplex/fitness/manage/class/modify";
	var method = "GET";
	var params = "cid=" + cid;
	sendRequest(classModal, url, method, params);
}

//======================== suitable teacher list
//function suitableTeacher(){
//	var sid = $("select[name=sid] option:selected").val();
//	
//	var url = "/uuplex/fitness/teacher/suitable";
//	var method = "GET";
//	var params = "sid=" + sid; 
//	sendRequest(teacherSelect, url, method, params);
//}

//======================== Modify Pro
function classModifyPro(){
	var cid = document.classModifyForm.cid.value;
	var pid = document.classModifyForm.pid.value;
	var subname = document.classModifyForm.subname.value;
	var limit = document.classModifyForm.limit.value;
	
	var register_start = document.classModifyForm.register_start.value;
	var register_end = document.classModifyForm.register_end.value;
	var start_date = document.classModifyForm.start_date.value;
	var end_date = document.classModifyForm.end_date.value;
	var start_time = document.classModifyForm.start_time.value;
	var end_time = document.classModifyForm.end_time.value;
	
	var url = "/uuplex/fitness/manage/class/modifyPro";
	var method = "POST";
	var params = "cid=" + cid + "&pid=" + pid + "&subname=" + subname + "&limit=" + limit + 
				 "&register_start=" + register_start + "&register_end=" + register_end + 
				 "&start_date=" + start_date + "&end_date=" + end_date + 
				 "&start_time=" + start_time + "&end_time=" + end_time ;
	sendRequest(classModal, url, method, params);
}

//======================== Write Modal Dialog
function classModal() {
	
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

//======================== change select
//function teacherSelect() {
//	
//	var select = document.getElementById("teacher");
//	
//	if(httpRequest.readyState == 4 ) {
//		if(httpRequest.status == 200) {
//			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
//			select.innerHTML = httpRequest.responseText;
//		} else {
//			select.innerHTML = httpRequest.status + "에러 발생";
//		}
//	} else {
//		select.innerHTML = "상태 : " + httpRequest.readyState;
//	}
//	
//}