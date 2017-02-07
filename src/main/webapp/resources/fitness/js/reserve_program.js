/**
 * 
 */

$(document).ready( function () {
	
	$('.select .list-group-item').on('click', function () {
		$(this).siblings().removeClass('active');
		$(this).addClass('active');
	});
	
	$('#sports .list-group-item').on('click', function () {
		var sid = $(this).children('input[type=hidden]').val();
		programList(sid);
	});
	
//	$('div:not(#sports .list-group)>.list-group-item').on('click', function () {
//		
//		if($('#sports a.active').length == 1
//				&& $('#program a.active').length == 1) {
//				&& $('#day a.active').length == 1
//				&& $('#time a.active').length == 1) {
//			alert("전부 선택 됨");
//		}
//	});
	
	
});

//======================================================= Program 호출
function programList(sid) {
	var url = "/uuplex/fitness/user/reserve/program";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(programUpdate, url, method, params);
}

//=======================================================
function classList(pid) {
	var url = "/uuplex/fitness/user/reserve/class";
	var method = "GET";
	var params = "pid=" + pid;
	sendRequest(classUpdate, url, method, params);
}

function programUpdate() {
	
	var program = $('#program .panel-body');
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			program.html(httpRequest.responseText);
			
			$('#program .list-group-item').on('click', function () {
				$(this).siblings().removeClass('active');
				$(this).addClass('active');
				
				if($('#sports a.active').length == 1
						&& $('#program a.active').length == 1 ){
//						&& $('#day a.active').length == 1
//						&& $('#time a.active').length == 1) {
					classList($('#program a.active input[type=hidden]').val());
				}
			});
			
		} else {
			program.innerHTML = httpRequest.status + " 에러 발생";
		}
	} else {
		program.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}

function classUpdate() {
	
	var classList = $('#seaechList');
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			alert(httpRequest.responseText);
			classList.html(httpRequest.responseText);
		} else {
			classList.innerHTML = httpRequest.status + " 에러 발생";
		}
	} else {
		classList.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}