/**
 * 
 */
//======================== Input Modal
function movieInput() {
	
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
function movieModify(movie_num){
	var url = "/uuplex/c-box/manage/movie/modify";
	var method = "GET";
	var params = "movie_num=" + movie_num;
	
	sendRequest(movieModal, url, method, params);
	
}

//======================== Modify Pro
function movieModifyPro(){
	
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

//리뷰 페이지 넘기기

function pageChange(mnum,page){
	var url = "/uuplex/c-box/user/review/list";
	var method = "GET";
	var params = "mnum=" + mnum +"&page="+page;
	sendRequest(reviewDiv, url, method, params);
}

function changeclass(page) {
	$(".pagination").find("li").eq(page-1).attr('class','active');
	$(".pagination").find("li").not($(".pagination").find("li").eq(page-1)).attr('class','');
}

function reopen(mnum,page) {
	var url = "/uuplex/c-box/movie_detail";
	var method = "GET";
	var params = "mnum=" + mnum+"&page="+page;
	sendRequest(movieModal, url, method, params);
}

//call back
function reviewDiv() {
	
	var review = document.getElementById("review");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			review.innerHTML = httpRequest.responseText;
			
		} else {
			review.innerHTML = httpRequest.status + "에러 발생";
		}
	} else {
		review.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}

//추천하기

