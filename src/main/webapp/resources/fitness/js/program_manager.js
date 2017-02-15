/**
 * 
 */
var teacherInitOptions = '';

//======================== Input Modal
function programInput() {
	
	var url = "/uuplex/fitness/manage/program/inputForm";
	sendRequest(programModal, url);
	
}

//======================== Detail Modal
function programDetail(pid) {
	var url = "/uuplex/fitness/program/detail";
	var method = "GET";
	var params = "pid=" + pid;
	sendRequest(programModal, url, method, params);
}

//======================== Modify Modal
function programModify(pid){
	var url = "/uuplex/fitness/manage/program/modify";
	var method = "GET";
	var params = "pid=" + pid;
	sendRequest(programModal, url, method, params);
}

//======================== suitable teacher list
function suitableTeacher(){
	var sid = $("select[name=sid] option:selected").val();
	
	var url = "/uuplex/fitness/teacher/suitable";
	var method = "GET";
	var params = "sid=" + sid; 
	sendRequest(teacherSelect, url, method, params);
}

//======================== Modify Pro : 사용 안함
//function programModifyPro(){
//	var pid = document.programModifyForm.pid.value;
//	var pname = document.programModifyForm.pname.value;
//	var pinfo = document.programModifyForm.pinfo.value;
//	var activated = document.programModifyForm.activated.value;
//	
//	var sid = document.programModifyForm.sid.value;
//	var tid = document.programModifyForm.tid.value;
//	var price = document.programModifyForm.price.value;
//	var preparationCost = document.programModifyForm.preparationCost.value;
//	var preparation = document.programModifyForm.preparation.value;
//	
//	var url = "/uuplex/fitness/manage/program/modifyPro";
//	var method = "POST";
//	var params = "pid=" + pid + "&pname=" + pname + "&pinfo=" + pinfo + "&activated=" + activated +
//				 "&sid=" + sid + "&tid=" + tid + "&price=" + price + "&preparationCost=" + preparationCost + "&preparation=" + preparation ;
//	
//	if(progamDataCheck()){
//		sendRequest(programModal, url, method, params);
//	}
//}

//======================== Write Modal Dialog
function programModal() {
	
	var modal = document.getElementById("dialog");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			modal.innerHTML = httpRequest.responseText;
			
			var select = document.getElementById("teacher");
			if(select != null) {
				teacherInitOptions = select.innerHTML; 
			}
		} else {
			modal.innerHTML = httpRequest.status + "에러 발생";
		}
	} else {
		modal.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}

//======================== change select
function teacherSelect() {
	
	var select = document.getElementById("teacher");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			select.innerHTML = httpRequest.responseText;
		} else {
			select.innerHTML = httpRequest.status + "에러 발생";
		}
	} else {
		select.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}

//======================== resetTeacher
function resetTeacher() {
	var select = document.getElementById("teacher");
	select.innerHTML = teacherInitOptions;
}



//======================== Check Data
function progamDataCheck() {
	
	var pname = $('input[name=pname]');
	
	if(pname.val().length <= 0){
		alert("제목은 빈칸이 올 수 없습니다.");
		pname.focus();
		return false;
	} 

	return true;
}