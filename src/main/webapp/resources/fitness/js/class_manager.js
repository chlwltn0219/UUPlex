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

//======================== Modify Pro : 사용 안함
//function classModifyPro(){
//	
//	var cid = document.classModifyForm.cid.value;
//	var pid = document.classModifyForm.pid.value;
//	var subname = document.classModifyForm.subname.value;
//	var limit = document.classModifyForm.limit.value;
//	var crid = document.classModifyForm.crid.value;
//	
//	var register_start = document.classModifyForm.register_start.value;
//	var register_end = document.classModifyForm.register_end.value;
//	var start_date = document.classModifyForm.start_date.value;
//	var end_date = document.classModifyForm.end_date.value;
//	var start_time = document.classModifyForm.start_time.value;
//	var end_time = document.classModifyForm.end_time.value;
//	
//	var sun = $('#dialog input[name=sun]').parent().hasClass('active') ? 'Y': 'N';
//	var mon = $('#dialog input[name=mon]').parent().hasClass('active') ? 'Y': 'N';
//	var tue = $('#dialog input[name=tue]').parent().hasClass('active') ? 'Y': 'N';
//	var wed = $('#dialog input[name=wed]').parent().hasClass('active') ? 'Y': 'N';
//	var thu = $('#dialog input[name=thu]').parent().hasClass('active') ? 'Y': 'N';
//	var fri = $('#dialog input[name=fri]').parent().hasClass('active') ? 'Y': 'N';
//	var sat = $('#dialog input[name=sat]').parent().hasClass('active') ? 'Y': 'N';
//	
//	var url = "/uuplex/fitness/manage/class/modifyPro";
//	var method = "POST";
//	var params = "cid=" + cid + "&pid=" + pid + "&subname=" + subname + 
//	"&limit=" + limit + "&crid=" + crid + 
//	"&register_start=" + register_start + "&register_end=" + register_end + 
//	"&start_date=" + start_date + "&end_date=" + end_date + 
//	"&start_time=" + start_time + "&end_time=" + end_time +
//	"&sun=" + sun + "&mon=" + mon + "&tue=" + tue +
//	"&wed=" + wed + "&thu=" + thu + "&fri=" + fri + "&sat=" + sat;
//	
//	if(classDataCheck()) {
//		sendRequest(classModal, url, method, params);
//	}
//	
//}

//======================== Check Data
function classDataCheck() {
	
	var now = new Date();
	var year= now.getFullYear();
	var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
	var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
          
	var today = year + '-' + mon + '-' + day;
	
	var subname = $('input[name=subname]');
	
	var people = $('input[name=people]');
	var limit = $('input[name=limit]');
	
	var register_start = $('input[name=register_start]');
	var register_end = $('input[name=register_end]');

	var start_date = $('input[name=start_date]');
	var end_date = $('input[name=end_date]');
	
	var day = $('div.day label.active');
	
	var start_time = $('input[name=start_time]');
	var end_time = $('input[name=end_time]');
	
	
	if(subname.val().length <= 0){
		alert("부제목은 빈칸이 올 수 없습니다.");
		subname.focus();
		return false;
	} else if(people.val() != null){
		if(people.val() > limit.val()) {
			alert("총 인원을 현재 등록된 인원보다 작게 설정할 수 없습니다.");
			limit.focus();
			return false;
		}
	} else if(today > register_start.val()){
		alert("등록 시작일은 오늘 보다 크거나 작아야 합니다.");
		register_start.focus();
		return false;
	} else if(register_start.val() >= register_end.val()){
		alert("등록 종료일은 등록 시작일보다 커야합니다.");
		register_end.focus();
		return false;
	} else if(register_end.val() >= start_date.val()){
		alert("강의 시작일은 등록 종료일보다 커야합니다.");
		start_date.focus();
		return false;
	} else if(start_date.val() >= end_date.val()){
		alert("강의 종료일은 강의 시작일보다 커야합니다.");
		end_date.focus();
		return false;
	} else if(day.length <= 0){
		alert("강의 요일은 하나 이상 선택 해야 합니다.");
		$('label.btn')[0].focus();
		return false;
	} else if(start_time.val() >= end_time.val()){
		alert("강의 종료 시각은 강의 시작 시각보다 커야합니다.");
		end_time.focus();
		return false;
	} 

	return true;
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