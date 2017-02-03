
function login(){

	var params = "memId=" + document.loginForm.memId.value + "&passwd=" + document.loginForm.passwd.value;
	sendRequest(loginCall, "loginPro", "GET", params);
}
	
function loginCall() {
	
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) { // 200:정상종료
			
			result.innerHTML = httpRequest.responseText;
			
		} else {
			result.innerHTML = "에러발생";
		}
	} else {
		result.innerHTML = "상태 : " + httpRequest.readyState;
	}

}