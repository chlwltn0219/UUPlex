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
	var crid = document.classModifyForm.crid.value;
	
	var register_start = document.classModifyForm.register_start.value;
	var register_end = document.classModifyForm.register_end.value;
	var start_date = document.classModifyForm.start_date.value;
	var end_date = document.classModifyForm.end_date.value;
	var start_time = document.classModifyForm.start_time.value;
	var end_time = document.classModifyForm.end_time.value;
	
	var sun = $('#dialog input[name=sun]').parent().hasClass('active') ? 'Y': 'N';
	var mon = $('#dialog input[name=mon]').parent().hasClass('active') ? 'Y': 'N';
	var tue = $('#dialog input[name=tue]').parent().hasClass('active') ? 'Y': 'N';
	var wed = $('#dialog input[name=wed]').parent().hasClass('active') ? 'Y': 'N';
	var thu = $('#dialog input[name=thu]').parent().hasClass('active') ? 'Y': 'N';
	var fri = $('#dialog input[name=fri]').parent().hasClass('active') ? 'Y': 'N';
	var sat = $('#dialog input[name=sat]').parent().hasClass('active') ? 'Y': 'N';
	
	var url = "/uuplex/fitness/manage/class/modifyPro";
	var method = "POST";
	var params = "cid=" + cid + "&pid=" + pid + "&subname=" + subname + 
				 "&limit=" + limit + "&crid=" + crid + 
				 "&register_start=" + register_start + "&register_end=" + register_end + 
				 "&start_date=" + start_date + "&end_date=" + end_date + 
				 "&start_time=" + start_time + "&end_time=" + end_time +
				 "&sun=" + sun + "&mon=" + mon + "&tue=" + tue +
				 "&wed=" + wed + "&thu=" + thu + "&fri=" + fri + "&sat=" + sat;
	sendRequest(classModal, url, method, params);
}

//======================== Write Modal Dialog
function classModal() {
	
	var modal = document.getElementById("dialog");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			modal.innerHTML = httpRequest.responseText;
			
			$('#dialog .sun').on('click', function() {
				if($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-danger');
				} else {
					$(this).removeClass('btn-danger');
					$(this).addClass('btn-default');
				}
			});
			
			$('#dialog .weekday').on('click', function() {
				if($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-success');
				} else {
					$(this).removeClass('btn-success');
					$(this).addClass('btn-default');
				}
			});
			
			$('#dialog .sat').on('click', function() {
				if($(this).hasClass('btn-default')) {
					$(this).removeClass('btn-default');
					$(this).addClass('btn-primary');
				} else {
					$(this).removeClass('btn-primary');
					$(this).addClass('btn-default');
				}
			});
			
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