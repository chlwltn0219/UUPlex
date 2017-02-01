/**
 * 
 */
function getReview(movie_num){
	var url = "/uuplex/c_box/user/review_list";
	var method = "GET";
	var params = "movie_num=" + movie_num;
	sendRequest(movieModal, url, method, params);
	sendRequest(review, url);
}

function deleteReview(review_num){
	var url = "/uuplex/c_box/user/delete_review";
	var method = "GET";
	var params = "review_num=" + review_num;
	alert(review_num);
	sendRequest(review, url, method, params);
}

//callback
function review() {
	
	var review = document.getElementById("reviewList");
	
	if(httpRequest.readyState == 4 ) {
		if(httpRequest.status == 200) {
			
			//응답 결과가 HTML이면 responseText로 받고, XML이면 resonseXML로 받는다
			review.innerHTML = httpRequest.responseText;
		} else {
			modal.innerHTML = httpRequest.status + "에러 발생";
		}
	} else {
		modal.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}