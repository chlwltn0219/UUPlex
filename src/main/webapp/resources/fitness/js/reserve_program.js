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
	
});

//======================== regist form
function reserveForm(cid) {
	var url = "/uuplex/fitness/user/reserve/detail";
	var method = "POST";
	var params = "cid=" + cid;
	sendRequest(reserveModal, url, method, params);
}

//======================== regist form
function reservePro() {
	var url = "/uuplex/fitness/user/reservePro";
	var method = "POST";
	var params = "cid=" + cid;
	sendRequest(classModal, url, method, params);
}

//======================================================= Program 호출
function programList(sid) {
	var url = "/uuplex/fitness/user/reserve/program";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(programUpdate, url, method, params);
}

//=======================================================
function classList(pid, page) {
	var url = "/uuplex/fitness/user/reserve/class";
	var method = "GET";
	var params = "pid=" + pid + "&page=" + (page!=null ? page : 1);
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
			classList.html(httpRequest.responseText);
		} else {
			classList.innerHTML = httpRequest.status + " 에러 발생";
		}
	} else {
		classList.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}

function reserveModal() {
	
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

