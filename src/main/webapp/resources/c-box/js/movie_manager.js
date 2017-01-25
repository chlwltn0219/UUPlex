/**
 * 
 */
function modifyMovie(movie_num){
	var url = "/uuplex/c_box/movie_modify";
	var method = "GET";
	var params = "movie_num=" + movie_num;
	sendRequest(movieModal, url, method, params);
}

function deleteMovie(){
	
}

//callback
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