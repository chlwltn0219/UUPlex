/**
 * 
 */
//======================== Input Modal
function moiveInput() {
	
	var url = "/uuplex/c-box/manage/movie/inputForm";
	sendRequest(movieModal, url);
	
}

//======================== Detail Modal
function movieDetail(mnum) {
	var url = "/uuplex/c-box/movie_detail";
	var method = "GET";
	var params = "mnum=" + mnum;
	sendRequest(movieModal, url, method, params);
}

//======================== Modify Modal
function movieModify(sid){
	var url = "/uuplex/c-box/manage/movie/modify";
	var method = "GET";
	var params = "sid=" + sid;
	sendRequest(movieModal, url, method, params);
}

//======================== Modify Pro
function movieModifyPro(){
	var sid = document.movieModifyForm.sid.value;
	var sname = document.movieModifyForm.sname.value;
	var sinfo = document.movieModifyForm.sinfo.value;
	var activated = document.movieModifyForm.activated.value;
	
	var url = "/uuplex/c-box/manage/movie/modifyPro";
	var method = "POST";
	var params = "sid=" + sid + "&sname=" + sname + "&sinfo=" + sinfo + "&activated=" + activated;
	sendRequest(movieModal, url, method, params);
}

//======================== Write Modal Dialog
function movieModal() {
	
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